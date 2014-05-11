<?php 
 class database{
 	private $server='localhost';
 	private $user='root';
 	private $password='1234';
 	private $db='biblioteka';

 	private $mysqliObj;

 	function __construct(){
		@ $this->mysqliObj = new mysqli($this->server,$this->user,$this->password,$this->db);
		if($this->mysqliObj->connect_errno){
			exit('Bad connection');
		}
	}

 	public function query($queryString){
		return $this->mysqliObj->query($queryString);
	}


 }