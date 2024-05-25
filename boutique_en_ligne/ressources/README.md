# Boutique en Ligne

Ce projet est une boutique en ligne simple développée en PHP avec une interface utilisateur utilisant HTML, CSS, Bootstrap et jQuery. La boutique permet aux utilisateurs de parcourir les produits, de les ajouter à un panier, de mettre à jour les quantités et de finaliser leur achat.

## Structure du Projet

boutique_en_ligne/
│
├── config.php
├── index.php
├── product_detail.php
├── boutique_en_ligne.sql
├── scripts/
│   ├── add_to_cart.php
│   ├── load_products.php
│   └── ...
├── pages/
│   ├── panier.php
│   ├── remove_from_cart.php
│   ├── update_cart.php
│   └── ...
├── css/
│   ├── bootstrap.css
│   ├── font-awesome.min.css
│   ├── responsive.css
│   ├── style.css
│   ├── style.css.map
│   └── style.scss
├── fonts/
│   ├── fontawesome-webfont.ttf
│   ├── fontawesome-webfont.woff
│   └── fontawesome-webfont.woff2
├── images/
│   ├── favicon.png
│   └── logo.png
├── js/
│   ├── bootstrap.js
│   ├── custom.js
│   ├── jquery-3.4.1.min.js
│   └── popper.min.js
└── ...

### Fichiers Racine

- `.DS_Store` : Fichier système utilisé par macOS pour stocker des attributs personnalisés des dossiers.
- `.gitattributes` : Fichier de configuration Git pour gérer les attributs des fichiers dans le dépôt.
- `boutique_en_ligne.sql` : Fichier de sauvegarde de la base de données contenant les structures et données nécessaires pour l'application.
- `config.php` : Fichier de configuration pour la connexion à la base de données.
- `index.php` : Page d'accueil du site.
- `product_detail.php` : Page de détail d'un produit spécifique.

### Répertoire `css/`

- `bootstrap.css` : Feuille de style CSS pour le framework Bootstrap.
- `font-awesome.min.css` : Feuille de style CSS pour les icônes Font Awesome.
- `responsive.css` : Feuille de style CSS pour la réactivité du site.
- `style.css` : Feuille de style principale pour la personnalisation du site.
- `style.css.map` : Fichier source map pour faciliter le debugging du CSS.
- `style.scss` : Fichier source SASS pour générer le fichier `style.css`.

### Répertoire `fonts/`

- `fontawesome-webfont.ttf` : Fichier de police TrueType pour Font Awesome.
- `fontawesome-webfont.woff` : Fichier de police Web Open Font Format pour Font Awesome.
- `fontawesome-webfont.woff2` : Fichier de police Web Open Font Format 2 pour Font Awesome.

### Répertoire `images/`

- `favicon.png` : Icône du site.
- `logo.png` : Logo du site.

### Répertoire `js/`

- `bootstrap.js` : Fichier JavaScript pour le framework Bootstrap.
- `custom.js` : Fichier JavaScript personnalisé pour le site.
- `jquery-3.4.1.min.js` : Bibliothèque jQuery.
- `popper.min.js` : Bibliothèque Popper.js pour la gestion des popups et tooltips.

### Répertoire `pages/`

- `panier.php` : Page du panier où les utilisateurs peuvent voir les articles ajoutés, mettre à jour les quantités et supprimer des articles.
- `remove_from_cart.php` : Script pour supprimer un article du panier.
- `update_cart.php` : Script pour mettre à jour la quantité d'un article dans le panier.

### Répertoire `scripts/`

- `add_to_cart.php` : Script pour ajouter un article au panier via AJAX.
- `load_products.php` : Script pour charger les produits (peut-être utilisé pour des requêtes AJAX).

## Configuration et Installation

1. **Base de Données** : Importez le fichier `boutique_en_ligne.sql` dans votre serveur MySQL pour créer la base de données nécessaire.
2. **Configuration de la Base de Données** : Mettez à jour le fichier `config.php` avec vos informations de connexion à la base de données.
3. **Serveur Web** : Assurez-vous que votre serveur web (Apache, Nginx, etc.) est configuré pour servir les fichiers PHP.

## Utilisation

- **Page d'Accueil** (`index.php`) : Affiche une liste de produits disponibles.
- **Page de Détail du Produit** (`product_detail.php`) : Affiche les détails d'un produit et permet d'ajouter des articles au panier.
- **Page du Panier** (`pages/panier.php`) : Affiche les articles ajoutés au panier, permet de mettre à jour les quantités ou de supprimer des articles.

## Fonctionnalités

- **AJAX pour Ajouter au Panier** : Le script `add_to_cart.php` utilise AJAX pour ajouter des articles au panier sans recharger la page.
- **Mise à Jour du Panier** : Les utilisateurs peuvent mettre à jour les quantités ou supprimer des articles via les scripts `update_cart.php` et `remove_from_cart.php`.

## Licence

Ce projet est sous licence MIT.

## Contribution

Les contributions sont les bienvenues. Veuillez soumettre une pull request ou ouvrir une issue pour discuter des modifications que vous souhaitez apporter.

## Auteur 

- Félicio de SOUZA

Si vous avez des questions ou des problèmes, veuillez ouvrir une issue ou me contacter directement.
