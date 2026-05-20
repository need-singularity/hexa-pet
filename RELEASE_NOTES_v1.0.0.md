# hexa-pet v1.0.0 — 반려동물 toolkit (HEXA family)

**Release date**: 2026-05-06
**Closure verdict**: **SPEC_FIRST** (5/5 verbs spec-only at v1.0.0; working
`.hexa` CLI TBD per per-verb F-*-MVP-* deadlines)
**Provenance**: extracted 2026-05-06 from
[`canon`](https://github.com/dancinlab/canon)
SHA `c0f1f570` (`domains/pets/` subtree). Sister of `hexa-bio` v1.0.0
standalone pattern (2026-05-04).

This is the **initial standalone release** of `hexa-pet`, the
consumer-friendliest member of the HEXA family. Five verbs cover the
day-to-day surface of cat and dog ownership — food, litter, toys — at the
intersection of consumer-product engineering, animal behavior, and
small-scale material science.

The pack is intentionally **self-contained**: every verb is a single
peer-citable spec doc, copy-pasted from upstream `canon`. No
other `hexa-*` repo is needed to use this one — clone it, read it, hack it.

## Highlights

- **5-verb consumer-pet substrate** — `cat_food` / `cat_litter` / `cat_toy`
  / `dog_food` / `dog_toy`. Each verb is a peer-citable `.md` spec doc
  with physical-limit anchors + falsifier preregister.
- **n=6 invariant lattice** — `σ(6)=12, τ(6)=4, φ(6)=2, J₂=24`; master
  identity `σ·φ = n·τ = 24`. Each verb projects this lattice onto its own
  physical anchor (e.g., cat_litter σ=12 = Wyoming Na-bentonite swell
  ratio 12× dry volume; cat_litter τ=4 = 4-tier odor neutralization).
- **Physical-limit anchors per verb**:
  - `cat_food` — AAFCO 26% protein / 0.1% taurine + Atwater 4-9-4 +
    Maillard kinetics + a_w shelf-life. mk2 ceiling-breach upgrade
    (alien-grade 13+) with Carnot extrusion floor + Weindruch lifespan
    extension + IPCC climate-resilient supply.
  - `cat_litter` — Wyoming Na-bentonite swell 12× (Grim 1968) + 4-tier
    odor neutralization + 5 primary minerals + 24h industry odor-suppression
    baseline.
  - `cat_toy` — Antoine 1888 nepetalactone vapor pressure + Kevlar 29
    fiber + Bradshaw 1992 cat ethogram + Lindner 1995 cat-bite 58 N +
    Vogel 1994 low-Re flapping flight.
  - `dog_food` — AAFCO 18% protein / 10 EAA + low-GI grain agronomy +
    Bifidobacterium animalis lactis Bb12 + turmeric curcumin + PE-laminated
    kraft pouch recycling.
  - `dog_toy` — Lindner 1995 canine bite 1-4 MPa + Hertz 1881 contact +
    Powers 1948 hydration analog + Helmholtz 1860 acoustic resonator +
    Hearle 1969 3-strand twist + Heffner 1983 canine audiometry.
- **CLI** — 8 subcommands (`cat_food`, `cat_litter`, `cat_toy`, `dog_food`,
  `dog_toy`, `status`, `selftest`, `help`); every subcommand accepts
  `--version` and `--json`.
- **Selftest** — 5-verb spec doc count check; `__HEXA_PET_SELFTEST__ PASS`
  confirms all 5 spec docs are present (count-only PASS does NOT validate
  empirical claims — see Caveats).
- **MIT license** — minimal copyleft friction for downstream consumer
  products and maker community remix.
- **GitHub-only distribution** — canonical at
  <https://github.com/dancinlab/hexa-pet>.

## Installation

```bash
# Recommended (post-hx install registration):
hx install hexa-pet@1.0.0
hexa-pet --version           # → 1.0.0

# Or git clone (works today):
git clone https://github.com/dancinlab/hexa-pet.git ~/.hexa-pet
export HEXA_PET_ROOT=~/.hexa-pet
export PATH="$HEXA_PET_ROOT/cli:$PATH"
hexa-pet selftest
```

## Quickstart

```bash
hexa-pet selftest            # 5-verb count check
hexa-pet status              # verb table + n=6 projections + caveats
hexa-pet cat_food            # cat-food.md spec headline
hexa-pet cat_litter          # cat-litter.md spec headline
hexa-pet cat_toy             # cat-toy.md spec headline
hexa-pet dog_food            # dog-food.md spec headline
hexa-pet dog_toy             # dog-toy.md spec headline
```


1. **5/5 verbs ship as SPEC docs only.** No working numerical sandbox at
   v1.0.0. CLI subcommands print the first 30 lines of each `.md` doc as a
   quick preview, not simulator output. Working `.hexa` modules are TBD
   per per-verb F-*-MVP-* deadlines:
   - `cat_litter` F-CL-MVP-1..4 — 2026-07-30 ~ 2026-08-30
   - `cat_food` F-CF-MVP-1..5 — 2026-07-30 ~ 2026-09-30
   - `cat_toy` / `dog_food` / `dog_toy` mk1 — pending
2. **Physical-limit anchors are theoretical-analytical.** AAFCO numbers,
   Atwater factors, Wyoming-bentonite swell ratios, nepetalactone vapor
   pressure, Lindner canine bite mechanics — all literature-anchored, none
   lab-measured by this repo at v1.0.0.
3. **n=6 lattice projections are per-verb hypotheses.** Only the lattice
   itself (σ(6)=12, τ(6)=4, φ(6)=2, J₂(6)=24) is mathematically verified;
   each verb's projection onto that lattice is a working hypothesis
   pending Bayesian audit per F-* gates.
4. **No regulatory pathway.** AAFCO / WSAVA / FAO endorsement is explicitly
   post-MVP; nothing in this repo is a medical, veterinary, or nutritional
   claim. Builder substrate only.
5. **Consumer-friendly ≠ consumer-tested.** No animal trials have been
   conducted. Use as a starting point for product engineering — not as a
   product itself.

## Provenance

- All 5 verb spec docs imported unchanged from
  `canon/domains/pets/` (SHA `c0f1f570`, 2026-05-06). Directory
- Sister extractions:
  - `hexa-bio` v1.0.0 — 4-verb molecular toolkit (Apache-2.0, 2026-05-04).
- Standalone-extraction cycle: `hexa_pet_standalone_extraction_2026_05_06`.

## License

MIT — see [LICENSE](LICENSE).

Author: 박민우 <nerve011235@gmail.com>
