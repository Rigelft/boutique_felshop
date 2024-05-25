<?php
include 'config.php';
session_start();

// Récupérer les produits de la base de données
$sql = "SELECT * FROM products";
$result = $conn->query($sql);

$cart_count = 0;
if (isset($_SESSION['cart'])) {
   foreach ($_SESSION['cart'] as $item) {
      $cart_count += $item['quantity'];
   }
}
?>

<!DOCTYPE html>
<html lang="fr">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>Boutique</title>
   <!-- bootstrap core css -->
   <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
   <!-- font awesome style -->
   <link href="css/font-awesome.min.css" rel="stylesheet" />
   <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
   <!-- Custom styles for this template -->
   <link href="css/style.css" rel="stylesheet" />
   <!-- responsive style -->
   <link href="css/responsive.css" rel="stylesheet" />
</head>

<body class="sub_page">
   <div class="hero_area">
      <!-- header section strats -->
      <header class="header_section">
         <div class="container">
            <nav class="navbar navbar-expand-lg custom_nav-container ">
               <a class="navbar-brand" href="index.php"><img width="250" src="images/logo.png" alt="#" /></a>
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class=""> </span>
               </button>
               <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav">
                     <li class="nav-item active">
                        <a class="nav-link" href="">Boutique</a>
                     </li>
                     <li class="nav-item">
                        <!-- Lien vers le panier -->
                        <a class="nav-link" href="pages/panier.php">
                           <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                              <g>
                                 <g>
                                    <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                                                      c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                                 </g>
                              </g>
                              <g>
                                 <g>
                                    <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                                                      C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                                                      c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                                                      C457.728,97.71,450.56,86.958,439.296,84.91z" />
                                 </g>
                              </g>
                              <g>
                                 <g>
                                    <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                                                      c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                                 </g>
                              </g>
                           </svg>
                           <!-- Icone du panier -->
                           <span class="cart-count badge bg-danger"><?php echo $cart_count; ?></span>
                        </a>
                     </li>
                     <form class="form-inline">
                        <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                           <i class="fa fa-search" aria-hidden="true"></i>
                        </button>
                     </form>
                  </ul>
               </div>
            </nav>
         </div>
      </header>
      <!-- end header section -->
   </div>
   <!-- inner page section -->
   <section class="inner_page_head">
      <div class="container_fuild">
         <div class="row">
            <div class="col-md-12">
               <div class="full">
                  <h3>Boutique</h3>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- end inner page section -->
   <!-- product section -->
   <section class="product_section layout_padding">
      <div class="container">
         <div class="heading_container heading_center">
            <h2>
               Tout nos <span>produits</span>
            </h2>
         </div>
         <div class="row" id="product-container">
            <!-- Les produits sont chargés ici -->
         </div>
         <div class="btn-box">
            <button id="load-more" class="btn btn-primary option2">
               <i class="fas fa-eye"></i> Voir plus
            </button>
         </div>
      </div>
   </section>
   <!-- end product section -->

   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script>
      $(document).ready(function() {
         let offset = 0;
         const limit = 8;

         function loadProducts() {
            $.ajax({
               url: 'scripts/load_products.php',
               method: 'POST',
               data: {
                  offset: offset,
                  limit: limit
               },
               success: function(response) {
                  $('#product-container').append(response);
                  offset += limit;
               }
            });
         }

         $('#load-more').click(function() {
            loadProducts();
         });

         // Chargement des premiers produits au chargement de la page
         loadProducts();
      });
   </script>

   <!-- footer section -->
   <footer class="footer_section">
      <div class="container">
         <div class="row">
            <div class="col-md-4 footer-col">
               <div class="footer_contact">
                  <h4>Infos de contact...</h4>
                  <div class="contact_link_box">
                     <a href="">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <span>Localisation</span>
                     </a>
                     <a href="">
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        <span>Téléphone</span>
                     </a>
                     <a href="">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <span>Adresse email</span>
                     </a>
                  </div>
               </div>
            </div>
            <div class="col-md-4 footer-col">
               <div class="footer_detail">
                  <a href="index.html" class="footer-logo">À propos</a>
                  <p>FelShop est votre destination pour tous les produits personnalisés dédiés aux otakus.
                     FelShop est une boutique en ligne qui se consacre à offrir des articles uniques pour
                     les fans de culture anime et manga.
                  </p>
                  <div class="footer_social">
                     <a href=""><i class="fa fa-facebook" aria-hidden="true"></i></a>
                     <a href=""><i class="fa fa-instagram" aria-hidden="true"></i></a>
                     <a href=""><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                  </div>
               </div>
            </div>
            <div class="col-md-4 footer-col">
               <div class="map_container">
                  <div class="map">
                     <div id="googleMap"></div>
                  </div>
               </div>
            </div>
         </div>
         <div class="footer-info">
            <div class="col-lg-7 mx-auto px-0">
               <p>&copy; <span id="displayYear"></span> Tous droits réservés par
                  <a href="http://feldev-online.free.nf/?i=1">Félicio de SOUZA</a>
               </p>
            </div>
         </div>
      </div>
   </footer>
   <!-- footer section -->
   <!-- jQery -->
   <script src="js/jquery-3.4.1.min.js"></script>
   <!-- popper js -->
   <script src="js/popper.min.js"></script>
   <!-- bootstrap js -->
   <script src="js/bootstrap.js"></script>
   <!-- custom js -->
   <script src="js/custom.js"></script>
</body>

</html>