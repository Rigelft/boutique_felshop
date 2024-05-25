<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $product_id = $_POST['product_id'];

    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = array();
    }

    // Supprimer le produit du panier
    foreach ($_SESSION['cart'] as $key => $item) {
        if (isset($item['product_id']) && $item['product_id'] == $product_id) {
            unset($_SESSION['cart'][$key]);
            break;
        }
    }

    // Réindexer le tableau du panier
    $_SESSION['cart'] = array_values($_SESSION['cart']);
}

header('Location: panier.php');
exit();
