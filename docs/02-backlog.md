# Backlog produit — photo au moment de la remise

> [!IMPORTANT]
> **Gabarit — exemple abrégé.** Ce dépôt contient 15 récits (13 au backlog,
> 2 `wont`); votre backlog doit en contenir **15 à 25**, dont **6 à 8** avec
> critères d'acceptation pour le sprint 1. Le backlog vit dans les
> [tickets](../../../issues) et le [projet GitHub](../../../projects) — ce
> fichier n'en est que la **photo** au moment de la remise, comme le demande
> [l'énoncé](https://archambaultv.github.io/2026A-420-5D1-MA-Gr2/docs/evaluations/soumission#2-backlog-produit--les-tickets-et-02-backlogmd).

## Les épiques

- **Catalogue** — inscrire, modifier, supprimer et consulter des disques.
- **Recherche** — retrouver un disque par artiste, titre, genre, année.
- **Prêts** — suivre les disques prêtés et leur retour.
- **Import et export** — charger une collection existante, la ressortir.
- **Statistiques** — voir la forme de sa collection.

## Les récits `must`, dans l'ordre

L'ordre suit les deux critères des notes de cours : la **dépendance**
(« chercher » n'a aucun sens avant « inscrire ») et le **risque** (l'incertain
passe tôt). « Modifier » et « supprimer » viennent après « chercher », même
s'ils appartiennent à la même épique que « inscrire ».

| # | Récit | Épique | Points | Sprint |
|---|---|---|---|---|
| [#1](../../../issues/1) | Inscrire un disque | Catalogue | 3 | 1 |
| [#2](../../../issues/2) | Consulter la liste de ses disques | Catalogue | 2 | 1 |
| [#3](../../../issues/3) | Chercher par artiste ou titre | Recherche | 5 | 1 |
| [#4](../../../issues/4) | Modifier un disque | Catalogue | 3 | 1 |
| [#5](../../../issues/5) | Supprimer un disque | Catalogue | 2 | 1 |
| [#6](../../../issues/6) | Noter un prêt et son retour | Prêts | 5 | 2 |

## Démarche d'estimation

Nous estimons en points de récit sur l'échelle 1, 2, 3, 5, 8, 13. Notre récit
de référence est *Supprimer un disque* ([#5](../../../issues/5)), décrété à
**2 points** : un bouton, une confirmation, une suppression en base, la liste
se rafraîchit. Chaque récit a été estimé en *planning poker*; quand les cartes
divergeaient de plus d'un cran, les extrêmes expliquaient leur raisonnement et
on revotait — c'est ainsi qu'on a découvert que *Importer un CSV bien formé*
([#7](../../../issues/7)) cachait la correspondance des colonnes et la gestion
des lignes fautives : il a été découpé, et ses morceaux vivent dans
[#10](../../../issues/10).
