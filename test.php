<?php 
//plik do testowania funkcjonalnosci

require_once 'models/database.php';

$ob = new database();
$result = $ob->findBooks("","Sapkowski","pan");
print_r($result);