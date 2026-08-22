# Vision et portée

> [!IMPORTANT]
> **Gabarit — exemple abrégé.** Ce fichier montre le format attendu. Votre
> soumission doit couvrir toutes les rubriques de
> [l'énoncé](https://archambaultv.github.io/2026A-420-5D1-MA-Gr2/docs/evaluations/soumission#1-vision-et-portée--01-visionmd),
> avec la profondeur qui rend le projet compréhensible sans vous.

## Le problème

Une personne qui collectionne les vinyles finit toujours par perdre le fil :
elle rachète un disque qu'elle possède déjà, oublie à qui elle a prêté tel
album il y a six mois, et fouille ses bacs sans se rappeler sur quelle
tablette elle a rangé quoi. Les solutions actuelles — un cahier, une feuille
Excel, un service en ligne qui exige un compte et une connexion — sont soit
pénibles à tenir, soit étrangères à la façon dont la collection vit réellement,
chez soi, hors ligne.

**Sillon** donne à la personne collectionneuse un catalogue local, rapide à
alimenter et à consulter, qui suit aussi les prêts et prépare les ventes.

## Les personnes utilisatrices

Sillon n'a qu'une utilisatrice à la fois, mais pas qu'un seul besoin — le rôle
change selon le moment :

- **La personne collectionneuse** — elle inscrit ses trouvailles, retrouve un
  disque en quelques secondes et sait en tout temps à qui elle a prêté quoi.
- **La vendeuse ou le vendeur occasionnel** — quelques fois par année, la même
  personne prépare le marché aux puces : elle marque des disques « à vendre »
  et sort la liste de sa caisse.

## La proposition en une phrase

**Sillon** est une application de bureau qui permet à une personne
collectionneuse de vinyles de cataloguer, retrouver et suivre ses disques.

## Dans la portée / hors portée

**Dans la portée**

- Inscrire, modifier, supprimer et consulter des disques.
- Retrouver un disque par artiste, titre, genre ou décennie.
- Suivre les prêts et leur retour.
- Importer une collection depuis un fichier CSV.
- Statistiques simples et marquage « à vendre ».

**Hors portée**

- Aucune synchronisation avec un service en ligne : Sillon fonctionne hors
  ligne, c'est un choix (décidé en septembre, voir le ticket `wont` [#14](../../../issues/14)).
- Pas d'application mobile compagnon ([#15](../../../issues/15)).
- Pas de gestion multi-utilisateurs ni de partage de collection.
- Pas de vente en ligne : Sillon prépare la caisse, la vente se fait au marché.

## Respect des exigences techniques

> [!WARNING]
> Le tableau ci-dessous
> montre le *format* attendu, mais Sillon ne satisfait presque aucune exigence :
> il illustre les notions des notes de cours, pas un sujet acceptable.

| # | Exigence | Sillon |
|---|---|---|
| 1 | Cadriciel *full stack*, rendu serveur et client | ✗ Application de bureau, aucun serveur |
| 2 | Base de données transactionnelle | ✗ SQLite locale, un seul utilisateur : aucune écriture simultanée à traiter |
| 3 | Installation et démarrage avec Docker | ✗ Sans objet pour un exécutable de bureau |
| 4 | Deux rôles derrière une authentification | ✗ Une seule personne, aucun compte — « vendeur occasionnel » est un moment d'usage, pas un rôle applicatif |
| 5 | Fonctionnalité temps réel multi-utilisateurs | ✗ Aucune |
| 6 | Point de concurrence réel | ✗ Un seul utilisateur à la fois |
| 7 | Tests automatisés à chaque poussée | ✓ GitHub Actions — la seule exigence que Sillon satisfait |
| 8 | Déploiement sur un serveur | ✗ S'installe localement |
