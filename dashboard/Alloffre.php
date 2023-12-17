<?php


public function getAllJobOffers() {
        $sql = "SELECT * FROM job_offers";
        $result = $this->connection->query($sql);

        if ($result->num_rows > 0) {
            return $result->fetch_all(MYSQLI_ASSOC);
        } else {
            return [];
        }
    }
?>