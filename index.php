<?php
require_once "header.php";
require_once "connection.php";

$sql="SELECT * FROM products";
$result =mysqli_query($conn,$sql);
?>
<h1>Product List </h1>

<?php foreach($result as $product) { ?>
    <h1><?php echo $product['title'] ?></h1>
    <img src="images/<?php echo $product['image'] ?>" width="200" height="200" />
    <a href="product_details.php?slug=<?php echo $product['slug'] ?>">View Product</a>
<?php } ?>

<?php 
require_once "footer.php";
?>