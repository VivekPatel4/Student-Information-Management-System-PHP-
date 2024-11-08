<?php
$status = 1;
$currentdate = date('Y-m-d');
$sql = "SELECT COUNT(*) AS student_count FROM tblleaves JOIN tblemployees ON tblleaves.empid = tblemployees.id WHERE tblleaves.Status = :status AND ToDate = :currentdate";
$query = $dbh->prepare($sql);
$query->bindParam(':status', $status, PDO::PARAM_INT);
$query->bindParam(':currentdate', $currentdate, PDO::PARAM_STR);
$query->execute();
$count = $query->fetchColumn();

echo "" . $count;
?>
