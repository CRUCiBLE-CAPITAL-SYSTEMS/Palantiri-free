# Contributing to Crucible Security Free Edition

Thanks for considering a contribution. Crucible Security Free is intentionally small — three scanning stones, Python stdlib only, no external dependencies. That scope makes contributions easier to review and easier to trust.

## What we accept

- **New exposed-path patterns** for Agent Anvil. Include a brief "seen in the wild" note and, if relevant, what a false-positive would look like so we can gate against it.
- **New tracker / cookie-banner / PII-pattern signatures** for Agent Alloy.
- **New typosquat patterns, new public breach-feed integrations** for Agent Shadow.
- **False-positive reports.** Include the URL (if public), the current output, and what the correct answer should be.
- **Correctness fixes.** If our logic is wrong, PRs welcome.
- **Tests.** We under-test. Any test contribution is appreciated.

## What's out of scope for this repo

- New *agents* beyond the three OSS stones. Agent Purge, Agent Crucible, Agent Temper, Agent Atlas, and the Guard endpoint stack live in the paid fork. If you want those capabilities, see the paid tiers at [cruciblesecurity.com](https://cruciblesecurity.com).
- Anything requiring an API key or paid service that not every user will have.
- Anything that adds a non-stdlib dependency. We'll consider one ONLY if it's cryptographic or parser-related and the stdlib alternative is genuinely bad.

## Process

1. Open an issue first for anything non-trivial. A five-minute discussion saves an hour of rework.
2. Fork, branch, PR. Small PRs are easier to review.
3. Run `python3 scan.py https://example.com` and paste the before/after output in the PR description.
4. By submitting a PR you agree to license your contribution under the project MIT license.

## Security issues

If you think you've found a security issue in Crucible Security itself (not in something Crucible Security scanned), email **security@cruciblesecurity.com** instead of opening a public issue. We try to respond within 72 hours. See `.well-known/security.txt`.

## Code style

- Stdlib only. No `pip install` to run the free tier.
- Type hints on public functions.
- Log with `logging`, not `print`, except in the CLI itself.
- Findings use the `Finding` class in `crucible/base.py` — never return raw dicts.
- Severity levels: `critical` / `high` / `medium` / `low` / `info`. Err toward low.

## 

Please don't use "Crucible Security" in your fork's name without permission. Rename your fork if distributing commercially.
