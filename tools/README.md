# Outils de reconstruction

Ces scripts reconstruisent le backlog du dépôt à partir de zéro : libellés et
tickets. Ils permettent de recréer ce dépôt d'exemple en une minute si on le
supprime. Le projet GitHub, lui, se monte à la main (étape 4 ci-dessous).

## Prérequis

- [gh](https://cli.github.com/);
- être connecté : `gh auth login`;

## Reconstruire le dépôt de zéro

```bash
# 1. Créer le dépôt sur GitHub et pousser le contenu
gh repo create <proprietaire>/<depot> --public --source . --push

# 2. Libellés (MoSCoW + épiques) — idempotent (--force)
./tools/01_labels.sh

# 3. Tickets, dans l'ordre du backlog (numéros #1 à #15 sur un dépôt neuf)
./tools/02_issues.sh
```

Les scripts prennent en option `proprietaire/depot` en argument; sans argument,
ils utilisent le dépôt du répertoire courant.

### Monter le projet à la main

[03_project_web.md](03_project_web.md) décrit la marche à suivre dans
l'interface web : champs `Points` et `Sprint`, ajout des tickets, vues
« Backlog » et « Kanban », automatisations et gestion des accès. L'API ne
permettant pas de créer les vues, c'est la voie à suivre pour monter le backlog
d'une vraie équipe.

## Les données

- [backlog.tsv](backlog.tsv) — une ligne par récit : fichier du corps, titre,
  épique, priorité MoSCoW, points, sprint (`-` = sans objet, p. ex. pour les
  `wont`). **L'ordre des lignes est l'ordre de priorité du backlog** : il
  détermine les numéros de tickets, et l'ordre dans lequel ranger les lignes du
  projet.
- [recits/](recits/) — le corps Markdown de chaque ticket.

## Limites connues

- `02_issues.sh` n'est **pas idempotent** : relancé, il crée des doublons. Pour
  reconstruire, supprimer d'abord les tickets et le projet
  (`gh project delete <numéro> --owner <proprietaire>`).
- `02-backlog.md`, `01-vision.md` et quelques récits référencent les tickets
  `#1` à `#15` en dur : exact seulement si les tickets sont créés sur un dépôt
  neuf.
