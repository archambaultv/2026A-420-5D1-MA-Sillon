# Risques

> [!IMPORTANT]
> **Gabarit — exemple abrégé.** Deux risques sont montrés en exemple; l'énoncé
> en demande **3 à 5**, propres à *votre* projet — voir
> [l'énoncé](https://archambaultv.github.io/2026A-420-5D1-MA-Gr2/docs/evaluations/soumission#6-risques--06-risquesmd).

## R1 — Les CSV du monde réel ne ressemblent pas à notre format

- **Probabilité** : élevée. **Impact** : élevé — l'import (#7, 8 points) est la
  pièce maîtresse du sprint 2, et chaque service d'export nomme et encode ses
  colonnes à sa façon.
- **Signal d'alerte** : à la mi-sprint 2, un export réel fourni par un vrai
  collectionneur ne passe toujours pas l'import de bout en bout.
- **Atténuation** : dès le sprint 1, on collecte trois exports réels et on les
  met dans les tests. L'import du sprint 2 ne promet que le **format
  documenté**; la correspondance des colonnes reste un récit `could` séparé
  ([#10](../../../issues/10)) qui saute si le signal se déclenche.

## R2 — La recherche « pendant la frappe » ne tient pas sur 1 000 disques

- **Probabilité** : moyenne. **Impact** : moyen — c'est le critère
  d'acceptation le plus dur du récit #3, et l'écran de recherche est le cœur
  de l'application.
- **Signal d'alerte** : le banc d'essai (catalogue de 1 000 disques généré)
  dépasse la demi-seconde par frappe dès la première version.
- **Atténuation** : normalisation (casse, accents) précalculée en colonne
  indexée plutôt qu'au moment de la requête. Plan B si le signal se déclenche :
  déclencher la recherche 200 ms après la dernière frappe au lieu de chaque
  frappe.
