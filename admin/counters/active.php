<?php
include '../../includes/dbconn.php';

$sql = "SELECT Status, COUNT(*) AS count FROM tblleaves WHERE Status IN ('1', '2') GROUP BY Status";
$query = $dbh->prepare($sql);
$query->execute();
$results = $query->fetchAll(PDO::FETCH_ASSOC);

foreach ($results as $row) {
    echo "Status {$row['Status']} count: " . htmlentities($row['count']) . "<br>";
}
?>