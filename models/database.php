<?php 
require_once 'book.php';
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

	public function findBooks($name="",$surname="",$title=""){
		$sql="SELECT * FROM books LEFT JOIN authors ON (books.book_author=authors.author_id)";
		$sql.= "WHERE (book_title LIKE '%".$title."%' AND author_surname LIKE '%".$surname."' AND author_name LIKE '%".$name."')";
		echo $sql;
		$result=$this->query($sql);
		if($result){
			$objects = array();
			while ($row = $result->fetch_assoc()) {
				$objects[$row['book_id']]= new book($row);
			}
			return $objects;
		}
		else return false;

	}



 }