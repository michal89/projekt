<?php
header('Content-type: text/html; charset=utf-8');
require_once 'models/database.php';
require_once 'models/book.php'; 

$ob= new database();
$name = $_GET['authorName'];
$surname = $_GET['authorSurname'];
$title = $_GET['title'];
$sql='SELECT * FROM books WHERE book_title LIKE "'.$title.'%"';
$result = $ob->query($sql);

if($result){
	echo "<table border='solid'>";
	while ($row = $result->fetch_assoc()) {
	 	echo "<tr><td>".$row['book_id']."</td><td>".$row['book_title']."</td></tr>";
	 } 
	 echo "</table>";
}