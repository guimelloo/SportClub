<?php 

class Db{
    public $connection;
    public function __construct(){
        try{
            $this->connection = new PDO('mysql:host=localhost;dbname=skywalker;charset=utf8', 'root', '');
            $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }catch(Exception $e){
            die('error : ' . $e->getMessage());
        }
    }
}

new Db();