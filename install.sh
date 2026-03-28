#!/bin/bash
# ============================================
# CEASAR.AI — Installation du cours gratuit
# ============================================

echo ""
echo "  ⚡ CEASAR.AI — Installation en cours..."
echo ""

DEST="$HOME/.claude/commands/ceasar"
mkdir -p "$DEST"

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cp "$REPO_DIR/commands/ceasar/"*.md "$DEST/"

echo "  ✅ Cours installé avec succès !"
echo ""
echo "  Dans Claude Code, tape :"
echo ""
echo "    /ceasar:start"
echo ""
echo "  Bonne formation 🚀"
echo ""
