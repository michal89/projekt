<?php
header('Content-type: text/html; charset=utf-8'); 
require_once 'models/database.php';

$ob= new database();
$name = $_GET['authorName'];
$surname = $_GET['authorSurname'];
$title = $_GET['title'];

$viewBag = $ob->findBooks($name,$surname,$title); //zmienna jest tablica obiektow typu book lub ma wartosc false

