<?php

include "../model/config.php";
/**
* Database connection.
* PDO is used to make the connection to the database.
*/

class Connection{

    private $user = "root";
    private $pass ="";

    /**
    * connect - Function that makes the connection to the database
    *
    */

    function connect(){

        try {
            $pdo = new PDO(
                'mysql:host=localhost;dbname=acme',
                $this->user,
                $this->pass
            );
        } catch (PDOException $error) {
            echo "error en la conexion" . $error->getMessage();
        }
    }
}

$c = new Connection();
$c -> connect();

?>
