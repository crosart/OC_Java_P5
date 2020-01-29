Web Interface
    - Dashboard
    |   - Vue client
    |   |   - Affichage compte client
    |   |   - Historique des commandes
    |   - Vue Employé
    |   |   - Afficher compte employé
    |   |   - Afficher commandes en cours
    |   |   - Afficher stock produits
    |   - Vue gérant
    |   |   - Afficher compte gérant
    |   |   - Afficher commandes en cours
    |   |   - Afficher données financières (chiffre d'affaire, ...)
    - Cart
    |   - Panier commande en cours
    - Catalogue
    |   - Vue client
    |   |   - Afficher menu
    |   |   - Afficher plats
    |   - Vue employé
    |   |   - Afficher plats
    |   |   - Afficher aide mémoire préparation 
Backend
    - Webservice
    - Users
    |   - Gestion des données utilisateur
    - Products
    |   - Gestion du stock
    |   - Gestion des plats
    - Management
    |   - Gestion de l'équipe
    |   - Gestion de l'attribution des livraisons
    - Orders
    |   - Gestion des commandes
    |   - Etat des commandes
    |   - Gestion de l'encaissement des commandes (en lien avec la banque)
Server
    - Database PostgreSQL
    - ORM faisant l'interface entre la DB et le Backend
    
///// FONCTIONS
/- Créer compte client
/- Modifier compte client
/- Se connecter client
/- Créer compte employé
/- Modifier compte employé
/- Se connecter employé
/- Consulter menu
/- Enregistrer commande sur place
/- Enregistrer commande par téléphone
/- Passer commande sur le site
/- Choisir produits
/- Choisir mode de paiement
/- Paiement en ligne
/- Paiement à la livraison
/- Modifier commande client
/- Modifier commande caisse
/- Voir historique commandes
/ Consulter aide-mémoire
/- Consulter commandes
/- Modifier état commande
/- Affecter commande livreur
/- Consulter stocks
- Modifier Stocks
- Encaisser commande
- Consulter chiffre d'affaire

///// SYSTEMES
- Frontend
- Backend
- Banque

///// COMPOSANTS
- Frontend
    - Interface Web Client HTML/CSS (Site responsive)
        - Gestion utilisateurs
        - Affichage produits/menu
- Backend
    - Database PostgreSQL
    
/////

USER ACCOUNT >>>>>> - Authentification
                    - Infos compte utilisateur
ORDERS >>>>>>>>>>>> - Panier commande
                    - Historique commandes
                    - Consulter commandes
PRODUCTS >>>>>>>>>> - Consulter menu
                    - Consulter aide-mémoire
MANAGEMENT >>>>>>>> - Consulter rapport financier
                    - Consulter stocks