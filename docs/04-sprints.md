# Plan des trois sprints

> [!IMPORTANT]
> **Gabarit — exemple abrégé.** Le format est celui attendu. Attention à une
> différence de fond : Sillon n'a ni authentification, ni temps réel, ni
> déploiement.

## Sprint 1 — Alpha (~3 semaines)

- **Objectif** : *un collectionneur peut inscrire sa collection et la
  retrouver.*
- **Récits** : #1 (3), #2 (2), #3 (5), #4 (3), #5 (2) — **15 points**.
- **Incrément démontrable** : à partir d'un clone neuf, l'application démarre;
  on inscrit une dizaine de disques, on en modifie un, on en supprime un, et
  « bjork » retrouve « Björk » pendant la frappe. Chaîne CI verte.

## Sprint 2 — Beta (~3 semaines)

- **Objectif** : *un collectionneur peut suivre ses prêts et importer une
  collection existante.*
- **Récits** : #6 (5), #7 (8), #8 (2) — **15 points**.
- **Incrément démontrable** : un disque est prêté puis rendu; les prêts en
  retard ressortent; un CSV bien formé de 300 disques s'importe sans
  ressaisie.

## Sprint 3 — Version finale (~5 semaines)

- **Objectif** : *un collectionneur peut analyser sa collection et préparer
  une vente.*
- **Récits** : #9 (3), #10 (5), #11 (3), #12 (2), #13 (3) — **16 points**.
- **Incrément démontrable** : filtres par genre et décennie, statistiques par
  décennie, une caisse « à vendre » prête pour le marché; l'import accepte un
  CSV dont les colonnes ne portent pas les noms attendus.

## Capacité

| Élément | Calcul |
|---|---|
| Blocs de cours dans le sprint 1 | 6 blocs × 3 h = 18 h |
| Travail personnel | 3 h/semaine × 3 semaines = 9 h |
| Total par personne | 27 h |
| Équipe de 3 | 81 heures-personne |
| Moins rituels, coordination, revues (~20 %) | ≈ **65 h de développement** |

Nous ne connaissons pas encore notre vélocité. Premier réflexe : viser environ
20 points; après correction du biais d'optimisme (−30 %, comme le recommandent
les notes de cours), nous nous engageons sur **15 points** au sprint 1 et nous
ajusterons les sprints 2 et 3 sur la vélocité mesurée.

## Ordre d'abandon

Si nous prenons du retard, nous coupons dans cet ordre :

1. #13 — Joindre une photo de pochette (`could`);
2. #11 — Statistiques par décennie (`could`);
3. #10 — Faire correspondre les colonnes d'un CSV (`could`) : l'import reste
   alors limité au format documenté.

La recherche (#3) et l'import d'un CSV bien formé (#7) ne sont pas
négociables : sans eux, Sillon ne vaut pas mieux qu'une feuille Excel.
