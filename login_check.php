<?php 
    include("sign_in.php");

    if(isset($_POST["email"])){
        $email = $_POST["email"];
        $password = $_POST["password"];

        $user = new sign_in();

        $succes = $user->CheckUser( $email, $password );
        if($succes == 0){
             header("Location:login.php?msgEmail=mot de pass incorect");
            // exit; 
             echo "Pass Incorrect";
        }
        else if($succes === 'condidat'){
            header("Location:index.php?msgEmail=");
            // echo "PASS";
        }
        else if($succes === 'admin'){
            header("Location:dashboard/dashboard.php?msgEmail='acc'");
        }
    }

         else if($succes == 2){
            header("Location:login.php?msgEmail=");
            echo "Email non introuvable";
         }
?>