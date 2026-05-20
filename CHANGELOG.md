# Changelog

All notable changes to **hexa-pet** are documented here. Format follows
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and SemVer.

## [Unreleased] - 2026-05-08

### Added — `firmware/mcu/feeder_host.hexa` first stdlib/hal consumer (cross-repo)

- `firmware/mcu/feeder_host.hexa` (~245 lines) — **first stdlib/hal
  consumer in hexa-pet** + **2nd external sister-project consumer of
  stdlib/hal v1.11.0** (after hexa-cern @ 6e102e5).

  Smart pet-feeder host MCU controller for the cat·dog food verb domain.
  Target: ESP32-C3-WROOM-02 (RV32IMC RISC-V, 160 MHz, WiFi+BLE; popular
  consumer-product MCU choice). stdlib/hal/backend/esp32c3 backend.

  Pattern: hexa-cern/firmware/mcu/trigger_host.hexa (sister-consumer
  pattern) — same handle-pool / lifecycle / falsifier re-check shape,
  but simpler peripheral mix (no DAC, no high-speed trigger).

  σ-slots consumed: **9/12 = 75%** on esp32c3 backend
  (core/gpio/i2c/adc/pwm/timer/intr/uart/rtc) — broader coverage than
  hexa-cern's 8/12 (no rtc, has dac instead) thanks to the pet-feeder's
  RTC-driven daily schedule.

  Reference design specs (typical home pet feeder):
    hopper      : 2300 g (~5 lb / 2.3 kg dry food)
    portions    : 4/day at 7:00 / 12:00 / 18:00 / 22:00
    portion size: 50 g ± 5 g (HX711 load-cell error budget)
    daily food  : 200 g
    auger motor : 25 kHz PWM, duty [10%, 80%] bp, calib 10 g/s
    HX711 ADC   : gain 128, 80 SPS, 24-bit signed
    IR detect   : ADC threshold 500 / 12-bit, debounce 100 ms

  Surface: feeder_host_{configure, read_weight_g, dispense_portion,
  pet_detected, set_lid, current_hour, is_feeding_time, meta,
  invariant_*}.

  PASS sentinel: `__HEXA_PET_FEEDER_HOST__ PASS`.
  Falsifier ledger F-PET-1..4 (cross-repo drift / σ-overflow /
  hopper-overdispense / schedule-degenerate).

  Architectural compliance: stdlib/hal paper-tier import ledger only —
  actual `use stdlib/hal/...` resolves once `hx install hexa-lang`
  lands. canon §7.5 + roadmap §F.6 / §G.5: FFI is downstream.

  Brace 38/38. New dir `firmware/mcu/`.

## [1.0.0] - 2026-05-06

### Added
- Initial standalone extraction from
  [`canon`](https://github.com/dancinlab/canon)
  SHA `c0f1f570` (`domains/pets/` subtree). Sister of `hexa-bio` standalone
  pattern (2026-05-04).
- 5-verb consumer-pet-care substrate (HEXA family):
  - `cat_food/` — feline obligate-carnivore food spec doc. **SPEC**
    placeholder. Physical-limit anchors: AAFCO 26% protein / 0.1% taurine +
    Atwater 4-9-4 + Maillard kinetics + a_w shelf-life. mk2 ceiling-breach
    upgrade (alien-grade 13+) with Carnot extrusion floor + Landauer
    provenance floor + Weindruch lifespan extension + Deusch microbiome
    diversity + IPCC climate-resilient supply. F-CF-MVP-1..5 2026-07-30 ~
    2026-09-30 + F-CF-MK2-1..5 2027-Q2 ~ 2031.
  - `cat_litter/` — Wyoming Na-bentonite + zeolite + carbon hygiene material
    spec doc. **SPEC** placeholder. Physical-limit anchors: bentonite swell
    12× dry volume (Grim 1968) + 4-tier odor neutralization + 5 primary
    minerals. n=6 projection: σ=12 swell ratio / τ=4 odor tier / φ=2 grain
    mode / J₂=24 hour odor-suppression industry baseline. F-CL-MVP-1..4
    2026-07-30 ~ 2026-08-30.
  - `cat_toy/` — nepetalactone-driven prey-mimic toys spec doc. **SPEC**
    placeholder. Physical-limit anchors: Antoine 1888 nepetalactone vapor
    pressure + Kevlar 29 fiber + plain-weave Martindale + Bradshaw 1992 cat
    behavioral ethogram + Lindner 1995 cat-bite 58 N + Vogel 1994 low-Re
    flapping flight.
  - `dog_food/` — facultative-carnivore canine food spec doc. **SPEC**
    placeholder. Physical-limit anchors: AAFCO 18% protein / 10 EAA (no
    taurine min) + Atwater 4-9-4 + low-GI grain agronomy (barley + sorghum +
    lentil + chickpea) + Bifidobacterium animalis lactis Bb12 fermentation +
    turmeric curcumin + ginger zingiberene + PE-laminated kraft pouch
    recycling.
  - `dog_toy/` — Kevlar-core rope + rubber chew toys spec doc. **SPEC**
    placeholder. Physical-limit anchors: Lindner 1995 canine bite 1-4 MPa +
    Hertz 1881 contact mechanics + Powers 1948 cement-paste hydration ↔
    rubber crosslinking + Helmholtz 1860 acoustic resonator + Hearle 1969
    3-strand twist efficiency + Heffner 1983 canine audiometry.
- 5-verb CLI router (`cli/hexa-pet.hexa`) with subcmds: `cat_food`,
  `cat_litter`, `cat_toy`, `dog_food`, `dog_toy`, `status`, `selftest`,
  `help`, `--version`. All subcmds print the corresponding spec doc
  headline (placeholder; working numerical impl TBD).
- `tests/test_selftest.hexa` — 5-verb count check harness.
  external deps).
- MIT license, README, hexa.toml manifest.
- GitHub-only distribution (canonical at
  <https://github.com/dancinlab/hexa-pet>; install via
  `hx install hexa-pet` from hexa-lang registry, or `git clone`).

- 5 of 5 verbs ship as **spec docs only** with placeholder CLI dispatcher.
  Working `.hexa` numerical sandboxes are TBD per per-verb F-*-MVP-*
  deadlines (cat-litter F-CL-MVP-1 first 2026-07-30; cat-food F-CF-MVP-1..5
  2026-07-30 ~ 09-30; dog-food + cat-toy + dog-toy mk1 pending).
- Physical-limit anchors (AAFCO numbers, Atwater factor, Wyoming-bentonite
  swell ratio, nepetalactone vapor pressure, Lindner canine bite mechanics)
  are literature-anchored theoretical-analytical only — no lab measurement
  by this repo at v1.0.0.
- n=6 invariant lattice (`σ(6)=12, τ(6)=4, φ(6)=2, J₂(6)=24`) projections
  per-verb are working hypotheses pending Bayesian audit per F-* gates.
- No regulatory pathway. AAFCO / WSAVA / FAO endorsement is explicitly
  post-MVP; nothing here is a medical, veterinary, or nutritional claim.
- Consumer-friendly ≠ consumer-tested. This is a builder substrate, not a
  finished product. No animal trials have been conducted.

### Provenance
- Extracted from `canon/domains/pets/` (SHA `c0f1f570`,
  2026-05-06). Source files unchanged; directory slugs converted from
- Sister extractions: `hexa-bio` v1.0.0 (4-verb molecular toolkit,
  Apache-2.0, 2026-05-04).
- Closure verdict: **SPEC_FIRST** (5/5 verbs spec-only at v1.0.0;
  working `.hexa` CLI TBD).

[1.0.0]: https://github.com/dancinlab/hexa-pet/releases/tag/v1.0.0
