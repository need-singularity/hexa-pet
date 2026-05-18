#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "cat_food" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-CAT-FOOD mk1 — physical-limit-anchored obligate-carnivore complete diet"
  brief = "Cat food is a 12 megaton/yr global industry (2024) with a deeply"
  parent = "dancinlab/hexa-pet"
  sibling-md = "CAT-FOOD.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CAT-FOOD.md.
# New per-domain history entries land here as typed events:
#
#   @A commit_<hash> :: <domain> [d=<YYYY-MM-DD> ok]
#     <- <prev-id>
#     => "<one-line description>"
#
#   @D <id> := "<decision-name>" :: <domain> [<grades>]
#     <- <evidence-id>
#     |> <verifier>
#
# See ~/core/tape/spec/tape.md for full grammar.
