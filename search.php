<?php
 include("connexion/Connection.php");

 $connection = new Connection();
 $conn = $connection->conn;
 
if(isset($_GET["titre"])){
    $titre =  $_GET['titre'];
    if(empty($titre)){
        $sql = "SELECT * FROM offre ";
}
    else{
        $sql = "SELECT * FROM offre WHERE titre LIKE '%$titre%'";

    }
}

 $result = mysqli_query($conn, $sql);
?>

<?php while($row = mysqli_fetch_assoc($result) ){?>
<article class="postcard light green">
    <a class="postcardimg_link" href="#">
        <img class="postcardimg" src="uploads/<?php echo $row['image']?>" alt="Image Title" />
    </a>
    <div class="postcardtext t-dark">
        <h3 class="postcardtitle green"><a href="#"><?php echo $row['description']?></a></h3>
        <div class="postcardsubtitle small">
            <time datetime="2020-05-25 12:00:00">
                <i class="fas fa-calendar-alt mr-2"></i><?php echo $row['title']?>
            </time>
        </div>
        <div class="postcardbar"></div>
        <div class="postcardpreview-txt"><?php echo $row['description']?></div>
        <ul class="postcardtagbox">
            <li class="tagitem"><i class="fas fa-tag mr-2"></i><?php echo $row['paye']?></li>
            <li class="tagitem play green">
                <a href="auth/login.php"><i class="fas fa-play mr-2"></i>APPLY NOW</a>
            </li>
        </ul>
    </div>
</article>



<?php
              }
            ?>