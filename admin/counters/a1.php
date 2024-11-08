<?php
include '../../includes/dbconn.php';
$currentDate = date("Y-m-d");

// Fetch employees who are not on leave today
$sqlNoLeave = "SELECT COUNT(*) AS noLeaveCount 
                FROM tblemployees 
           LEFT JOIN tblleaves ON tblemployees.id = tblleaves.empid 
               AND :currentDate BETWEEN tblleaves.FromDate AND tblleaves.ToDate 
               AND tblleaves.status = 1 
           WHERE (:currentDate NOT BETWEEN tblleaves.FromDate AND tblleaves.ToDate OR tblleaves.id IS NULL)";
$queryNoLeave = $dbh->prepare($sqlNoLeave);
$queryNoLeave->bindParam(':currentDate', $currentDate, PDO::PARAM_STR);
$queryNoLeave->execute();
$noLeaveCountRow = $queryNoLeave->fetch(PDO::FETCH_ASSOC);
$noLeaveCount = $noLeaveCountRow['noLeaveCount']; // Count of students not on leave
?>

<h1><?php echo $noLeaveCount; ?></h1>
