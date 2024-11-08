<?php 

include 'dbconn.php';

// Fetch unread leave notifications count
$leave_isread = 0;
$leave_sql = "SELECT tblleaves.id as lid, tblemployees.FirstName, tblemployees.LastName, tblemployees.EmpId, tblleaves.PostingDate FROM tblleaves JOIN tblemployees ON tblleaves.empid = tblemployees.id WHERE tblleaves.IsRead = :isread";
$leave_query = $dbh->prepare($leave_sql);
$leave_query->bindParam(':isread', $leave_isread, PDO::PARAM_INT);
$leave_query->execute();
$leave_unreadcount = $leave_query->rowCount();
$leave_results = $leave_query->fetchAll(PDO::FETCH_OBJ);

// Fetch birthday notifications count
$current_month_day = date("m-d");
$birthday_sql = "SELECT * FROM users WHERE DATE_FORMAT(wishyear, '%m-%d') = :current_month_day";
$birthday_query = $dbh->prepare($birthday_sql);
$birthday_query->bindParam(':current_month_day', $current_month_day, PDO::PARAM_STR);
$birthday_query->execute();
$birthday_count = $birthday_query->rowCount();

// Fetch leave return notifications count
/*$current_date = date("y-m-d");
$return_sql = "SELECT tblleaves.id as lid, tblemployees.FirstName, tblemployees.LastName, tblemployees.EmpId, tblleaves.PostingDate, tblleaves.FromDate FROM tblleaves JOIN tblemployees ON tblleaves.empid = tblemployees.id WHERE DATE_FORMAT(FromDate, '%y-%m-%d') = :current_date";
$return_query = $dbh->prepare($return_sql);
$return_query->bindParam(':current_date', $current_date, PDO::PARAM_INT);
$return_query->execute();
$return_unreadcount = $return_query->rowCount();
$return_results = $return_query->fetchAll(PDO::FETCH_OBJ);*/
?>
    
<li class="dropdown">
    <i class="ti-bell dropdown-toggle" data-toggle="dropdown">
        <span><?php echo htmlentities($leave_unreadcount + $birthday_count );?></span>
    </i>
    <div class="dropdown-menu bell-notify-box notify-box">
        <span class="notify-title">You have <?php echo htmlentities($leave_unreadcount + $birthday_count );?> <b>unread</b> notifications!</span>

        <div class="notify-list">
            <!-- Display leave notifications -->
            <?php 
            if ($leave_unreadcount > 0) {
                foreach ($leave_results as $leave_result) { ?>  
                    <a href="employeeLeave-details.php?leaveid=<?php echo htmlentities($leave_result->lid);?>" class="notify-item">
                        <div class="notify-thumb"><i class="ti-comments-smiley btn-info"></i></div>
                        <div class="notify-text">
                            <p>
                                <b><?php echo htmlentities($leave_result->FirstName." ".$leave_result->LastName); ?></b> has recently applied for a leave.
                                <br />(<?php echo htmlentities($leave_result->EmpId);?>)
                            </p>
                            <span>at <?php echo htmlentities($leave_result->PostingDate);?></span>
                        </div>
                    </a>
            <?php   }
            }

            // Display birthday notifications
            if ($birthday_count > 0) {
                $birthday_results = $birthday_query->fetchAll(PDO::FETCH_OBJ);
                foreach ($birthday_results as $birthday_result) { ?>
                    <a href="#" class="notify-item">
                        <div class="notify-thumb"><i class="ti-gift"></i></div>
                        <div class="notify-text">
                            <p>
                                <b><?php echo htmlentities($birthday_result->Name . " mobile number is " . $birthday_result->MOBILENO); ?></b> has a call today for <?php echo htmlentities($birthday_result->remark); ?>
                            </p>
                            <span>Send them wishes!</span>
                        </div>
                    </a>
            <?php   }
            }

            
            ?>
        </div>
    </div>
</li>
