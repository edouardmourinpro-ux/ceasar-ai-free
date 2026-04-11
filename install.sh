#!/bin/bash
# ============================================
# CEASAR.AI — Installation du cours gratuit
# ============================================

echo ""
echo "  CEASAR.AI — Installation en cours..."
echo ""

DEST="$HOME/.claude/commands/ceasar"
mkdir -p "$DEST"

BASE_URL="https://raw.githubusercontent.com/edouardmourinpro-ux/ceasar-ai-free/main/commands/ceasar"

FILES=(
  "start.md"
  "lesson-1.md"
  "lesson-2.md"
  "lesson-3.md"
  "lesson-4.md"
  "lesson-5.md"
  "lesson-6.md"
  "synthese.md"
  "email-pro.md"
  "hook-gen.md"
  "script-fr.md"
  "repro.md"
  "site-3d.md"
  "build-3d-site.md"
)

for file in "${FILES[@]}"; do
  curl -fsSL "$BASE_URL/$file" -o "$DEST/$file"
done

echo "  Cours installe avec succes !"
echo ""
echo "  Dans Claude Code, tape :"
echo ""
echo "    /ceasar:start"
echo ""
echo "  Bonne formation !"
echo ""
