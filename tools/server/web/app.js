// Study app: flashcards + list over server-rendered <article class="card"> elements.
(() => {
  const body = document.body;
  const deck = document.getElementById("deck");
  const cards = [...deck.querySelectorAll(".card")];
  const $ = (id) => document.getElementById(id);
  const storeKey = "spranzen:study:" + body.dataset.slug;

  // ---- persistence (localStorage may be unavailable) ----
  const load = () => {
    try { return JSON.parse(localStorage.getItem(storeKey)) || {}; } catch { return {}; }
  };
  const saved = load();
  const state = {
    ratings: saved.ratings || {},
    mode: saved.mode || "cards",
    filter: saved.filter || "all",
    sort: saved.sort || "order",
    group: saved.group ?? "*",
  };
  const save = () => {
    try { localStorage.setItem(storeKey, JSON.stringify(state)); } catch { /* ignore */ }
  };

  let visible = [];   // cards passing filter, in display order
  let current = 0;    // index into visible (cards mode)

  const freq = (card) => {
    const n = card.dataset.n;
    if (!n) return 0;
    const m = n.match(/\d+(?:[.,]\d+)?/); // first number: ">5" -> 5, "1-2" -> 1
    const v = m ? parseFloat(m[0].replace(",", ".")) : 0;
    return /^\s*>/.test(n) ? v + 0.5 : v;
  };
  const shuffle = (arr) => {
    for (let i = arr.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [arr[i], arr[j]] = [arr[j], arr[i]];
    }
    return arr;
  };

  const passes = (card) => {
    if (state.group !== "*" && card.dataset.group !== state.group) return false;
    const r = state.ratings[card.dataset.id];
    switch (state.filter) {
      case "bad": return r === "bad";
      case "unrated": return !r;
      case "notok": return r !== "ok";
      default: return true;
    }
  };

  // Recompute order + filter and jump to the first card.
  function rebuild() {
    let order = cards.filter(passes);
    if (state.sort === "shuffle") shuffle(order);
    else if (state.sort === "freq") order.sort((a, b) => freq(b) - freq(a) || a.dataset.num - b.dataset.num);
    visible = order;
    for (const c of cards) c.hidden = true;
    for (const c of visible) deck.insertBefore(c, $("empty"));
    current = 0;
    render();
  }

  function render() {
    body.classList.toggle("mode-cards", state.mode === "cards");
    body.classList.toggle("mode-list", state.mode === "list");
    for (const b of document.querySelectorAll("[data-mode]")) {
      b.classList.toggle("active", b.dataset.mode === state.mode);
    }
    if (current >= visible.length) current = Math.max(0, visible.length - 1);
    visible.forEach((c, i) => { c.hidden = state.mode === "cards" && i !== current; });
    $("empty").hidden = visible.length > 0;
    $("pos").textContent = visible.length ? `${current + 1} / ${visible.length}` : "0 / 0";
    for (const c of cards) paintRating(c);
    const vals = Object.entries(state.ratings).filter(([id]) => cards.some((c) => c.dataset.id === id));
    const ok = vals.filter(([, v]) => v === "ok").length;
    const bad = vals.filter(([, v]) => v === "bad").length;
    $("stats").textContent = `✓ ${ok} · ✗ ${bad} · ${cards.length} Fragen`;
  }

  function paintRating(card) {
    const r = state.ratings[card.dataset.id];
    card.dataset.rating = r || "";
    card.querySelector(".rating-state").textContent = r === "ok" ? "✓" : r === "bad" ? "✗" : "";
  }

  const toggleAnswer = (card, show) => card.classList.toggle("revealed", show);

  function rate(card, value) {
    if (state.ratings[card.dataset.id] === value) delete state.ratings[card.dataset.id];
    else state.ratings[card.dataset.id] = value;
    save();
    if (state.mode === "cards") {
      // Advance, but do not re-filter mid-session so the deck doesn't jump.
      go(1);
    } else {
      render();
    }
  }

  function go(delta) {
    if (!visible.length) return;
    const card = visible[current];
    if (card) toggleAnswer(card, false);
    current = Math.min(visible.length - 1, Math.max(0, current + delta));
    render();
  }

  // ---- wiring ----
  const bindSelect = (id, key) => {
    const el = $(id);
    if (!el) { if (key === "group") state.group = "*"; return; } // single-section study: no group select
    if ([...el.options].some((o) => o.value === state[key])) el.value = state[key];
    else state[key] = el.value;
    el.addEventListener("change", () => { state[key] = el.value; save(); rebuild(); });
  };
  bindSelect("group", "group");
  bindSelect("filter", "filter");
  bindSelect("sort", "sort");

  for (const b of document.querySelectorAll("[data-mode]")) {
    b.addEventListener("click", () => { state.mode = b.dataset.mode; save(); render(); });
  }
  deck.addEventListener("click", (e) => {
    const card = e.target.closest(".card");
    if (!card) return;
    if (e.target.closest(".reveal")) toggleAnswer(card, !card.classList.contains("revealed"));
    const r = e.target.closest("[data-rate]");
    if (r) rate(card, r.dataset.rate);
    e.target.closest("button")?.blur(); // keep Space/Enter for the keyboard shortcuts
  });
  $("prev").addEventListener("click", () => go(-1));
  $("next").addEventListener("click", () => go(1));
  $("reveal-all").addEventListener("click", () => {
    const show = !visible.every((c) => c.classList.contains("revealed"));
    for (const c of visible) toggleAnswer(c, show);
  });
  $("reset").addEventListener("click", () => {
    if (!confirm("Alle Bewertungen für dieses Fach löschen?")) return;
    state.ratings = {};
    save();
    rebuild();
  });

  document.addEventListener("keydown", (e) => {
    if (state.mode !== "cards" || e.target.closest("select, input, textarea, button")) return;
    if (e.metaKey || e.ctrlKey || e.altKey) return;
    const card = visible[current];
    switch (e.key) {
      case "ArrowRight": go(1); break;
      case "ArrowLeft": go(-1); break;
      case " ":
      case "Enter":
        if (card) toggleAnswer(card, !card.classList.contains("revealed"));
        break;
      case "1": if (card) rate(card, "ok"); break;
      case "2": if (card) rate(card, "bad"); break;
      default: return;
    }
    e.preventDefault();
  });

  rebuild();
})();
