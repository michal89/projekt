 <!DOCTYPE html>
 <html>
 <head>
 	<meta charset="utf-8">
 	<meta http-equiv="X-UA-Compatible" content="IE=edge">
 	<title></title>
 	<link rel="stylesheet" href="">
 </head>
 <body>
 	<h1>Witaj w systemie biblioteki elektronicznej</h1>
 	<form action="index.php" method="get">
 		<p>Szukaj książek</p>
 		<input type="text" name="authorName" placeholder="Imie autora"><br>
 		<input type="text" name="authorSurname" placeholder="Nazwisko autora"><br>
 		<input type="text" name="title" placeholder="Tytul książki"><br>
 		<button type="submit" name="search" value="ok">Szukaj</button>
 	</form>

 	<div id="findResult">
 		<?php 
 			if(isset($_GET['search'])&&$_GET['search']=="ok"){
 				include 'process/findbook.php';
 			}
 		 ?>
 	</div>
 	
 </body>
 </html>
