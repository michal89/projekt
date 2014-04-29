<?php 
 class database{
 	private $server='localhost';
 	private $user='root';
 	private $password='1234';
 	private $db='biblioteka';
 	private $dbObj;

 	function __construct(){
 		$this->dbObj = new mysqli($this->server,$this->user,$this->password,$this->db);
 		if(mysql_errno()!=0){
 			echo 'Bad connection error.';
 			exit();
 		}	
 	}


 }