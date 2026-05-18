#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "dog_toy" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-DOG-TOY mk1 — physical-limit-anchored canine-bite-pressure toy"
  brief = "DOG-TOY per-domain ledger · sibling of DOG-TOY.md"
  parent = "dancinlab/hexa-pet"
  sibling-md = "DOG-TOY.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in DOG-TOY.md.
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
