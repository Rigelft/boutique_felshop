<?php
include '../config.php';

$offset = isset($_POST['offset']) ? (int)$_POST['offset'] : 0;
$limit = isset($_POST['limit']) ? (int)$_POST['limit'] : 8;

$sql = "SELECT * FROM products LIMIT ?, ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ii", $offset, $limit);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<div class='col-sm-6 col-md-4 col-lg-3'>";
        echo "<div class='box'>";
        echo "<div class='option_container'>";
        echo "<div class='options'>";
        echo "<form action='scripts/add_to_cart.php' method='post'>";
        echo "<input type='hidden' name='product_id' value='{$row['product_id']}' />";
        echo "<button type='submit' class='option1' style='border-radius: 50px; padding: 8px 15px;'>Ajouter au panier</button>";
        echo "</form>";
        echo "<a href='product_detail.php?id={$row['product_id']}' class='option2'>Voir</a>";
        echo "</div>";
        echo "</div>";
        echo "<div class='img-box'>";
        echo "<img src='{$row['image_url']}' alt='{$row['title']}'>";
        echo "</div>";
        echo "<div class='detail-box'>";
        echo "<h5>{$row['title']}</h5>";
        echo "<h6>{$row['price']} XOF</h6>";
        echo "</div>";
        echo "</div>";
        echo "</div>";
    }
} else {
    echo "<p class='col-12'>Aucun produit disponible.</p>";
}

$stmt->close();
$conn->close();
