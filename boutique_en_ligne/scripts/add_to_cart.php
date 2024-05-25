<?php
session_start();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $product_id = $_POST['product_id'];

    // Assurez-vous que la variable de session du panier est un tableau
    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = array();
    }

    // Vérifiez si le produit est déjà dans le panier
    $found = false;
    foreach ($_SESSION['cart'] as &$item) {
        if ($item['product_id'] == $product_id) {
            $item['quantity'] += 1;
            $found = true;
            break;
        }
    }

    // Si le produit n'est pas dans le panier, ajoutez-le
    if (!$found) {
        $_SESSION['cart'][] = array(
            'product_id' => $product_id,
            'quantity' => 1
        );
    }
}

header('Location: ' . $_SERVER['HTTP_REFERER']);
exit();
