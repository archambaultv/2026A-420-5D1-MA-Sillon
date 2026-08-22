# Créer le projet GitHub à la main (interface web)

Cette procédure produit un projet GitHub lié au dépôt, doté des champs
**Points** et **Sprint**, contenant tous les tickets du backlog dans l'ordre de
priorité, puis deux vues — **Backlog** (table) et **Kanban** (tableau).


## Prérequis

- Les **libellés** existent (priorités MoSCoW et épiques) — voir
  [`01_labels.sh`](01_labels.sh) ou l'onglet *Issues → Labels* du dépôt.
- Les **tickets** existent, un par récit, dans l'ordre de priorité — voir
  [`02_issues.sh`](02_issues.sh). Le projet n'écrit pas les récits : il les
  affiche. On crée donc les tickets d'abord.
- Chaque membre de l'équipe a accès au dépôt.

---

## 1. Créer le projet

Un projet appartient à un **compte** (personnel ou organisation), pas à un
dépôt : il peut regrouper les tickets de plusieurs dépôts, et ses permissions
sont distinctes de celles du dépôt.

1. Ouvrir le dépôt, onglet **Projects** (« Projets »).
2. Cliquer **Link a project ▾** (« Lier un projet ») → **New project**
3. Choisir le propriétaire (le compte ou l'organisation de l'équipe).
4. Choisir le gabarit **Table** — la table est la vue la plus proche d'un
   backlog ordonné. Les gabarits *Board*, *Roadmap* ou *Kanban* conviennent
   aussi : la disposition se change ensuite dans n'importe quelle vue.
5. Nommer le projet — par exemple `Backlog — Sillon` — puis **Create project**.
6. Cocher la case **Import items from repository** pour que le projet soit lié
   aux issues du dépôt.

Le projet s'ouvre sur une table vide comportant déjà les champs **Title**,
**Assignees** et **Status**, ce dernier avec les options `Todo`,
`In Progress` et `Done`.

## 2. Lier le projet au dépôt

Le lien fait apparaître le projet dans l'onglet *Projects* du dépôt et permet
d'ajouter des tickets par leur numéro (`#12`) au lieu de leur URL complète.

Si le projet a été créé depuis l'onglet *Projects* du dépôt (étape 1), le lien
est déjà fait. Sinon :

1. Dans le projet, menu **⋯** (en haut à droite) → **Settings**
   (« Paramètres »).
2. Section **Manage access** → sous-section des dépôts liés, ou depuis le
   dépôt : onglet **Projects** → **Link a project ▾** → choisir le projet
   existant.

## 3. Créer les champs Points et Sprint

Les champs personnalisés portent l'information que les libellés ne portent
pas bien : une quantité et un sprint.

Dans la vue table, cliquer le **+** à droite de la dernière colonne d'en-tête →
**New field** (« Nouveau champ »).

| Champ | Type | Configuration |
|---|---|---|
| `Points` | **Number** (« Nombre ») | rien à configurer |
| `Sprint` | **Single select** (« Sélection unique ») | options `Sprint 1`, `Sprint 2`, `Sprint 3` |

La **priorité MoSCoW** et l'**épique** n'ont pas besoin de champs : ce sont
déjà des libellés du dépôt, et la colonne **Labels** du projet les affiche.
Les dupliquer en champs de projet créerait deux sources de vérité qui
divergeront.

## 4. Ajouter les tickets, dans l'ordre

**À faire si vous n'avez pas encore ajouté les tickets au projet à la création**

1. Ouvrir l'onglet **Issues** du dépôt.
2. Cocher les tickets voulus (la case en haut sélectionne toute la page).
3. Menu **Projects ▾** au-dessus de la liste → cocher le projet.

## 5. Renseigner Status, Points et Sprint

Dans la vue table, chaque cellule s'édite directement — clic, ou navigation au
clavier avec les flèches puis `Entrée`.

1. **Status** : mettre tous les récits à `Todo`. Les récits `wont` peuvent
   rester vides : ils ne seront jamais entrepris.
2. **Points** : l'estimation en points de récit. Laisser vide pour les `wont`.
3. **Sprint** : le sprint visé. Laisser vide pour les `wont` et pour les récits
   non planifiés.

### Valeurs à saisir

Les valeurs ci-dessous viennent de [`backlog.tsv`](backlog.tsv) — la source de
vérité du backlog. Les numéros de tickets supposent un dépôt neuf où
[`02_issues.sh`](02_issues.sh) a créé les récits dans l'ordre du fichier; sinon,
repérez les récits par leur titre.

| # | Titre | Status | Points | Sprint |
|---|---|---|---|---|
| #1 | Inscrire un disque | Todo | 3 | Sprint 1 |
| #2 | Consulter la liste de ses disques | Todo | 2 | Sprint 1 |
| #3 | Chercher par artiste ou titre | Todo | 5 | Sprint 1 |
| #4 | Modifier un disque | Todo | 3 | Sprint 1 |
| #5 | Supprimer un disque | Todo | 2 | Sprint 1 |
| #6 | Noter un prêt et son retour | Todo | 5 | Sprint 2 |
| #7 | Importer un CSV bien formé | Todo | 8 | Sprint 2 |
| #8 | Voir les prêts en retard | Todo | 2 | Sprint 2 |
| #9 | Filtrer par genre et par décennie | Todo | 3 | Sprint 3 |
| #10 | Faire correspondre les colonnes d'un CSV | Todo | 5 | Sprint 3 |
| #11 | Statistiques par décennie | Todo | 3 | Sprint 3 |
| #12 | Marquer des disques « à vendre » | Todo | 2 | Sprint 3 |
| #13 | Joindre une photo de pochette | Todo | 3 | Sprint 3 |
| #14 | Synchroniser avec un service en ligne |  |  |  |
| #15 | Application mobile compagnon |  |  |  |

Les cellules vides restent vides : ce sont les récits `wont`, jamais entrepris.

## 6. Vue « Backlog » (table)

L'onglet de vue par défaut s'appelle *View 1*. On le transforme en vue backlog.

1. Cliquer le **▾** de l'onglet de la vue → **Rename** (« Renommer ») →
   `Backlog`.
2. Ouvrir le menu de configuration de la vue (**⋯** à droite des onglets, ou le
   **▾** de l'onglet) :
   - **Layout** → **Table**.
   - **Fields** (« Champs ») → afficher `Title`, `Labels`, `Points`, `Sprint`,
     `Status`; masquer le reste (`Assignees`, `Repository`, `Milestone`… se
     rajoutent au besoin).
   - **Sort** (« Trier ») → **No sorting**. C'est la condition pour que
     l'ordre manuel soit possible : tant qu'un tri est actif, les lignes ne se
     déplacent pas.
   - **Group by** (« Grouper par ») → **None**. Grouper par `Sprint` est un
     réglage utile en cours de sprint, mais il casse la lecture d'un backlog
     ordonné.
3. **Ordonner les lignes si nécessaire** : glisser-déposer par la poignée à gauche de chaque
   ligne. **L'ordre des lignes est l'ordre de priorité du backlog** : c'est
   lui qui répond à « quel est le prochain récit ? ». Il se relit de haut en
   bas, du prochain récit au plus lointain.
4. Cliquer **Save** / **Save changes** (« Enregistrer ») si le bouton apparaît :
   sans cela, la configuration reste locale au navigateur et les coéquipiers ne
   la voient pas.

## 7. Vue « Kanban » (tableau)

La vue kanban répond à une autre question : « où en est chaque récit
*maintenant* ? ». Elle sert pendant la mêlée quotidienne.

1. Cliquer **+ New view** (« Nouvelle vue ») à droite des onglets.
2. Choisir **Board**.
3. **Column by** → **Status**. Les colonnes `Todo`, `In Progress`, `Done`
   apparaissent, plus une colonne `No Status` pour les éléments sans statut.
4. Renommer la vue `Kanban`.
5. **Fields** → afficher sur les cartes ce qui aide en mêlée : `Assignees`,
   `Points`, `Sprint`, `Labels`.
6. Facultatif : **Filter** sur le sprint courant (`sprint:"Sprint 1"`), pour que
   le tableau ne montre que le travail en cours.
7. Enregistrer la vue.

Déplacer une carte d'une colonne à l'autre change la valeur du champ `Status`
du ticket — le changement est immédiat et visible dans toutes les vues.

## 8. Vérifier l'automatisation

Il faut que le projet mette automatiquement à jour le champ `Status` quand un
ticket est ajouté ou fermé.

1. Projet → **Workflows**.
2. Activer **Item added to project** → action : `Set Status to Todo`.
3. Activer **Item closed** → action : `Set Status to Done`.
4. Facultatif : **Pull request merged** → `Set Status to Done`, utile combiné
   au mot-clé `Closes #12` dans la demande de tirage.
5. Facultatif : **Auto-add to project** — ajoute automatiquement au projet tout
   nouveau ticket du dépôt. Il faut alors le filtrer, sinon les bogues et les
   tâches techniques atterrissent dans le backlog produit. Deux façons de faire :

   - **Exclure** ce qui n'est pas un récit — le plus court, et il n'y a rien à
     mettre à jour quand une épique s'ajoute :
     `is:issue is:open -label:bug -label:technique`
   - **Inclure** les récits par leur libellé épique — plus explicite, mais la
     liste est à rallonger à chaque nouvelle épique :
     `is:issue is:open label:"épique: catalogue","épique: recherche","épique: prêts","épique: import/export","épique: statistiques","épique: compagnon mobile"`

   Dans un filtre, les valeurs séparées par des virgules sont un **ou**, et le
   préfixe `-` **exclut**. L'exclusion suppose que les bogues soient étiquetés
   avec le libellé `bug` et même chose pour les tâches techniques.

## 9. Accès et visibilité

> [!IMPORTANT]
> **Les permissions du projet sont distinctes de celles du dépôt.** Un projet
> reste privé même si le dépôt est public, et une personne collaboratrice du
> dépôt ne voit pas le projet tant qu'elle n'y a pas été invitée.

1. Projet → **⋯** → **Settings**.
2. **Manage access** (« Gérer l'accès ») :
   - **Visibility** : `Public` rend le projet lisible par quiconque a le lien
     (l'écriture reste réservée aux personnes invitées); `Private` le réserve
     aux personnes invitées.
   - **Invite collaborators** : ajouter chaque membre de l'équipe avec le rôle
     `Write` (« Écriture »), et la personne qui corrige avec au moins `Read`.
3. Dans le même écran de paramètres : donner au projet une **description
   courte** et un **README**. Ils s'affichent en tête du
   projet et évitent d'avoir à expliquer ce qu'on regarde.

## 10. Relier le projet au dépôt, pour les lecteurs

Le `README.md` du dépôt doit pointer vers le projet, sans quoi personne ne le
trouve. Les liens relatifs fonctionnent depuis n'importe quel dépôt :

```markdown
Le backlog vit dans les [tickets](../../issues) et le
[projet GitHub](../../projects).
```

---

## Vérification

Le projet est complet quand chacune de ces affirmations est vraie.

- [ ] Chaque récit du backlog apparaît une fois dans le projet.
- [ ] Chaque récit affiche son **épique** et sa **priorité MoSCoW** (libellés).
- [ ] Chaque récit planifié affiche ses **points** et son **sprint**.
- [ ] La vue **Backlog** se lit de haut en bas dans l'ordre de priorité, sans
      tri actif.
- [ ] La vue **Kanban** groupe par `Status` et le déplacement d'une carte met le
      ticket à jour.
- [ ] Les récits sont à `Todo` (ou vides pour les `wont`).
- [ ] Le projet est visible par toute l'équipe **et** par la personne qui
      corrige.
- [ ] Le `README.md` du dépôt pointe vers le projet.
