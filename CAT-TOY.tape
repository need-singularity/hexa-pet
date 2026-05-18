#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "cat_toy" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-CAT-TOY mk1 — physical-limit-anchored cat-predatory-pattern toy"
  brief = "CAT-TOY per-domain ledger · sibling of CAT-TOY.md"
  parent = "dancinlab/hexa-pet"
  sibling-md = "CAT-TOY.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CAT-TOY.md.
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
