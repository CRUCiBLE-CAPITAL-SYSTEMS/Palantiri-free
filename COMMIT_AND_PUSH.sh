#!/bin/bash
# Run this script from ~/Desktop/Ai PROJECTS/PalantiriSecurity.ai/oss-release/
# It finishes the rebrand commit and push.

set -e
cd "$(dirname "$0")"

# Clean up stale lock if present
rm -f .git/index.lock

# Remove test artifacts that shouldn't be committed
rm -f crucible/data/audit.jsonl crucible/data/findings.jsonl crucible/data/scans.jsonl crucible/data/scans_update.jsonl
rm -rf crucible/__pycache__ crucible/agents/__pycache__

# Stage everything
git add -A

# Commit
git commit -m "Rebrand: palantiri → crucible, fix import errors, update clone URL"

# Push
git push origin main

echo ""
echo "✓ Pushed to https://github.com/wes205/crucible-free"
echo ""
echo "Now rename the repo on GitHub:"
echo "  gh repo rename crucible-free --repo wes205/Palantiri-free --yes"
echo ""
echo "Or rename manually: GitHub → wes205/Palantiri-free → Settings → Repository name → crucible-free"

# Now do the same for oss-github-sync
cd ../oss-github-sync
rm -f .git/index.lock
rm -rf crucible/__pycache__ crucible/agents/__pycache__
git add -A
git commit -m "Rebrand: palantiri → crucible, fix import errors, update clone URL"
git push origin main

echo "✓ oss-github-sync also pushed"
