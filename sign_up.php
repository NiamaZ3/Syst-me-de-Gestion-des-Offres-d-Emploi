<?php 
include("Connexion/Connection.php");

class sign_up extends Connection {
    public function createUser($name, $email, $pass) {
        $conn = $this->conn;

        $sqlCheck = "SELECT * FROM `user` WHERE `email` = '$email'";
        $result = $conn->query($sqlCheck);

        if ($result && $result->num_rows > 0) {
            return 0; 
        } else {
            $sql = "INSERT INTO user (name, email, password , role_id) VALUES ('$name', '$email', '$pass' ,2 )";
            if ($conn->query($sql) === TRUE) {
                return 1; 
            } 
        }
    }
}
?>


