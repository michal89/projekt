<?php

class book{
	private $id;
	private $title;
	private $author;

	public function __construct(array $data){
		$this->id = $data['book_id'];
		$this->title = $data['book_title'];
		$this->author = $data['author_name']." ".$data['author_surname'];

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
}