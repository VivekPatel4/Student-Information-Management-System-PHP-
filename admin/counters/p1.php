<?php
include '../../includes/dbconn.php';
$currentDate = date("Y-m-d");

// Fetch employees who are on leave today
$sqlLeave = "SELECT COUNT(*) AS leaveCount
            FROM tblleaves 
            JOIN tblemployees ON tblleaves.empid = tblemployees.id 
            WHERE :currentDate BETWEEN tblleaves.FromDate AND tblleaves.ToDate 
                AND tblleaves.status = 1 
                AND NOT EXISTS (
                    SELECT 1 FROM tblleaves AS l2 
                    WHERE l2.empid = tblleaves.empid 
                        AND l2.status = 1 
                        AND :currentDate BETWEEN l2.FromDate AND l2.ToDate 
                        AND l2.id > tblleaves.id
                )";
$queryLeave = $dbh->prepare($sqlLeave);
$queryLeave->bindParam(':currentDate', $currentDate, PDO::PARAM_STR);
$queryLeave->execute();
$leaveCount = $queryLeave->fetchColumn(); // Total count of students on leave

?>

<h1><?php echo $leaveCount; ?></h1>
