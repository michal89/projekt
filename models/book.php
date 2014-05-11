<?php

class book{
	private $id;
	private $title;
	private $author;

	public function __construct(array $data){
		$this->id= $data['id'];
		$this->title = $data['title'];
		$this->author = $data['author'];
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