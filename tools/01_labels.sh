#!/usr/bin/env bash
# Crée (ou met à jour) les libellés du dépôt : priorités MoSCoW et épiques.
# Usage : ./01_labels.sh [proprietaire/depot]   (défaut : dépôt du répertoire courant)
set -euo pipefail

REPO="${1:-$(gh repo view --json nameWithOwner -q .nameWithOwner)}"
echo "Libellés sur $REPO"

label() { gh label create "$1" --repo "$REPO" --color "$2" --description "$3" --force; }

# Priorités MoSCoW
label "priorité: must"   "b60205" "Sans ce récit, le produit n'a pas de sens"
label "priorité: should" "d93f0b" "Important, mais reportable"
label "priorité: could"  "fbca04" "Bonus si tout va bien"
label "priorité: wont"   "c2c2c2" "Explicitement écarté pour cette session"

# Épiques
label "épique: catalogue"     "1d76db" "Inscrire, modifier, supprimer et consulter des disques"
label "épique: recherche"     "5319e7" "Retrouver un disque par artiste, titre, genre, année"
label "épique: prêts"         "0e8a16" "Suivre les disques prêtés et leur retour"
label "épique: import/export" "d876e3" "Charger une collection existante, la ressortir"
label "épique: statistiques"  "006b75" "Voir la forme de sa collection"
label "épique: compagnon mobile" "e99695" "Consulter sa collection depuis un téléphone"

echo "Terminé."
