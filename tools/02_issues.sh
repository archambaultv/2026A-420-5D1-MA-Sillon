#!/usr/bin/env bash
# Crée les tickets (récits) à partir de backlog.tsv, dans l'ordre de priorité.
# Sur un dépôt neuf, ils reçoivent donc les numéros #1, #2, #3, …
# Usage : ./02_issues.sh [proprietaire/depot]   (défaut : dépôt du répertoire courant)
#
# Attention : le script ne vérifie pas les doublons — relancé deux fois, il
# crée les tickets deux fois. Pour reconstruire, partez d'un dépôt sans tickets.
set -euo pipefail
cd "$(dirname "$0")"

REPO="${1:-$(gh repo view --json nameWithOwner -q .nameWithOwner)}"
echo "Tickets sur $REPO"

tail -n +2 backlog.tsv | while IFS=$'\t' read -r fichier titre epique priorite points sprint; do
  [ -z "$titre" ] && continue
  libelles=(--label "priorité: $priorite")
  [ "$epique" != "-" ] && libelles+=(--label "épique: $epique")
  url=$(gh issue create --repo "$REPO" \
    --title "$titre" \
    --body-file "recits/$fichier" \
    "${libelles[@]}" </dev/null)
  echo "  $url  [priorité: $priorite / épique: $epique]"
done

echo "Terminé."
