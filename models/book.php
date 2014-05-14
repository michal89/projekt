<?php
class book{
	private $id;
	private $title;
	private $author;
	private $isBorrowed;

	public function __construct(array $data){
		$this->id = $data['book_id'];
		$this->title = $data['book_title'];
		$this->author = $data['author_name']." ".$data['author_surname'];
		$this->isBorrowed = $data['is_borrowed'];

	}

	public function getId(){
		return $this->id;
	}

	public function getTitle(){
		return $this->title;
	}

	public function getAuthor(){
		return $this->author;
	}

	public function getIsBorrowed(){
		return $this->isBorrowed;
	}
}