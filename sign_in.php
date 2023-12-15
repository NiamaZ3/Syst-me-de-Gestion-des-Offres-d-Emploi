
<?php 
include("Connexion/Connection.php");

class sign_in extends Connection {
    public function CheckUser($email, $pass) {
        $conn = $this->conn;

        $sqlCheck = "SELECT * FROM `user` WHERE `email` = '$email'";
        $result = $conn->query($sqlCheck);

        if ($result && $result->num_rows > 0) {

            $row = $result->fetch_assoc();

            $HachPass = $row['password'];
            $role = $row['role_id'];
            // echo '=============>'.$role;
            // echo '=============>'.$HachPass;
            if(password_verify($pass, $HachPass)) {
            
                if($role == 1)
                {
                    return 'admin';

                }
                else if($role == 2)
                {
                    return 'condidat';
                    
                }
            }
             else {
                 return 0;
             }
         } else {
                 return 2;
            } 
        }
    }

  
?>



