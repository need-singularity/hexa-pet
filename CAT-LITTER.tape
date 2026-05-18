#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "cat_litter" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-CAT-LITTER mk1 — physical-limit-anchored companion-animal hygiene material"
  brief = "Cat litter is one of the highest-volume consumer materials in pet care"
  parent = "dancinlab/hexa-pet"
  sibling-md = "CAT-LITTER.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CAT-LITTER.md.
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
