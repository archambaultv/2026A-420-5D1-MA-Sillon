### Récit

En tant que collectionneur, je veux chercher un disque par artiste ou par
titre afin de le retrouver sans fouiller mes bacs.

### Contexte

Le récit le plus risqué du sprint 1 (performance pendant la frappe — voir le
risque R2 dans `docs/06-risques.md`). Maquette :
`docs/maquettes/catalogue-recherche.svg`.

### Critères d'acceptation

- [ ] La recherche porte à la fois sur le nom de l'artiste et sur le titre de l'album.
- [ ] Elle est insensible à la casse et aux accents : « bjork » trouve « Björk ».
- [ ] Les résultats se rafraîchissent pendant la frappe, sans bouton à cliquer.
- [ ] Sur une collection de 1 000 disques, les résultats apparaissent en moins d'une demi-seconde.
- [ ] Quand rien ne correspond, un message l'indique explicitement au lieu d'afficher une liste vide.
