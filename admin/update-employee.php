<?php
    session_start();
    error_reporting(0);
    include('../includes/dbconn.php');
    if(strlen($_SESSION['alogin'])==0){   
    header('location:index.php');
    } else {
    $eid=intval($_GET['empid']);
    if(isset($_POST['update'])){
    $empid=$_POST['empcode'];
    $fname=$_POST['firstName'];
    $lname=$_POST['lastName']; 
    $RoomNo=$_POST['RoomNo']; 
    $email=$_POST['email'];      
    $gender=$_POST['gender']; 
    $dob=$_POST['dob']; 
    $ParentName=$_POST['ParentName'];
    $Occupation=$_POST['Occupation'];
    $ParentMobileno=$_POST['ParentMobileno'];
    $department=$_POST['department']; 
    $address=$_POST['address']; 
    $city=$_POST['city']; 
    $State=$_POST['State'];
    $Pincode=$_POST['Pincode'];
    $District=$_POST['District'];
    $Taluko=$_POST['Taluko'];
    $country=$_POST['country']; 
    $mobileno=$_POST['mobileno'];
   
    // Rest of your code...

   

    $sql="UPDATE tblemployees set EmpId=:empid,FirstName=:fname,LastName=:lname,RoomNo=:RoomNo,EmailId=:email,Gender=:gender,Dob=:dob,ParentName=:ParentName,Occupation=:Occupation,ParentMobileno=:ParentMobileno,Department=:department,Address=:address,City=:city,State=:State,Pincode=:Pincode,District=:District,Taluko=:Taluko,Country=:country,Phonenumber=:mobileno where id=:eid";
    $query = $dbh->prepare($sql);
    $query->bindParam(':empid',$empid,PDO::PARAM_STR);
    $query->bindParam(':fname',$fname,PDO::PARAM_STR);
    $query->bindParam(':lname',$lname,PDO::PARAM_STR);
    $query->bindParam(':RoomNo',$RoomNo,PDO::PARAM_STR);
    $query->bindParam(':email',$email,PDO::PARAM_STR);
    $query->bindParam(':gender',$gender,PDO::PARAM_STR);
    $query->bindParam(':dob',$dob,PDO::PARAM_STR);
    $query->bindParam(':ParentName',$ParentName,PDO::PARAM_STR);
    $query->bindParam(':Occupation',$Occupation,PDO::PARAM_STR);
    $query->bindParam(':ParentMobileno',$ParentMobileno,PDO::PARAM_STR);
    $query->bindParam(':department',$department,PDO::PARAM_STR);
    $query->bindParam(':address',$address,PDO::PARAM_STR);
    $query->bindParam(':city',$city,PDO::PARAM_STR);
    $query->bindParam(':State',$State,PDO::PARAM_STR);
    $query->bindParam(':Pincode',$Pincode,PDO::PARAM_STR);
    $query->bindParam(':District',$District,PDO::PARAM_STR);
    $query->bindParam(':Taluko',$Taluko,PDO::PARAM_STR);
    $query->bindParam(':country',$country,PDO::PARAM_STR);
    $query->bindParam(':mobileno',$mobileno,PDO::PARAM_STR);
    $query->bindParam(':eid',$eid,PDO::PARAM_STR);

   
    $query->execute();

    $msg="Student record updated Successfully";
}

if(isset($_POST['save2']))
{
    $targetDirectory = "studentimages/";
    $photo = $_FILES["photo"]["name"];
    $tempName = $_FILES["photo"]["tmp_name"];

    if (!empty($photo)) {
        move_uploaded_file($tempName, $targetDirectory . $photo);

        // Update the photo in the database for the specific employee ID
        $sql = "UPDATE tblemployees SET photo = :photo WHERE id = :eid";
        $query = $dbh->prepare($sql);
        $query->bindParam(':photo', $photo, PDO::PARAM_STR);
        $query->bindParam(':eid', $eid, PDO::PARAM_INT);
        $query->execute();
        $query->execute();

        $msg="student photo updated Successfully";
    }
} 


    ?>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Admin Panel - Student Leave</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="photo/png" href="../assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" href="../assets/css/metisMenu.css">
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- others css -->
    <link rel="stylesheet" href="../assets/css/typography.css">
    <link rel="stylesheet" href="../assets/css/default-css.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="stylesheet" href="../assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    
    <div class="page-container">
        <!-- sidebar menu area start -->
        <div class="sidebar-menu">
            <div class="sidebar-header">
                <div class="logo">
                    <a href="dashboard.php"><img src="../assets/images/icon/vivek.png" alt="logo"></a>
                </div>
            </div>
            <div class="main-menu">
                <div class="menu-inner">
                    <?php
                        $page='employee';
                        include '../includes/admin-sidebar.php';
                    ?>
                </div>
            </div>
        </div>
        <!-- sidebar menu area end -->
        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
            <div class="header-area">
                <div class="row align-items-center">
                    <!-- nav and search button -->
                    <div class="col-md-6 col-sm-8 clearfix">
                        <div class="nav-btn pull-left">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                        
                    </div>
                    <!-- profile info & task notification -->
                    <div class="col-md-6 col-sm-4 clearfix">
                        <ul class="notification-area pull-right">
                            <li id="full-view"><i class="ti-fullscreen"></i></li>
                            <li id="full-view-exit"><i class="ti-zoom-out"></i></li>

                            <!-- Notification bell -->
                            <?php include '../includes/admin-notification.php'?>

                        </ul>
                    </div>
                </div>
            </div>
            <!-- header area end -->
            <!-- page title area start -->
            <div class="page-title-area">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="breadcrumbs-area clearfix">
                            <h4 class="page-title pull-left">Update Student Section</h4>
                            <ul class="breadcrumbs pull-left"> 
                                <li><a href="employees.php">Student</a></li>
                                <li><span>Update</span></li>
                                
                            </ul>
                        </div>
                    </div>
                    
                    <div class="col-sm-6 clearfix">
                        <div class="user-profile pull-right">
                            <img class="avatar user-thumb" src="../assets/images/admin.png" alt="avatar">
                            <h4 class="user-name dropdown-toggle" data-toggle="dropdown">ADMIN <i class="fa fa-angle-down"></i></h4>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="logout.php">Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- page title area end -->
            <div class="main-content-inner">
                
                
                <!-- row area start -->
                <div class="row">
                <div class="col-lg-6 col-ml-12">
                <div class="card">
            <div class="card-header p-2">
              <ul class="nav nav-pills">
                <li class="nav-item"><a class="nav-link active" href="#companydetail" data-toggle="tab">Registration Detail</a></li>
                
               
              </ul>
            </div><!-- /.card-header -->
                        <div class="row">
                          
                            <!-- Input form start -->
                            <div class="col-12 mt-5">
                            <?php if($error){?><div class="alert alert-danger alert-dismissible fade show"><strong>Info: </strong><?php echo htmlentities($error); ?>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            
                             </div><?php } 
                                 else if($msg){?><div class="alert alert-success alert-dismissible fade show"><strong>Info: </strong><?php echo htmlentities($msg); ?> 
                                 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                 </div><?php }?>
                                <div class="card">
                            <div class="active tab-pane" id="companydetail">     
                                <form name="addemp" method="POST" enctype="multipart/form-data">

                                    <div class="card-body">
                                       <div class="tab-content"> 
                                        
                                        <p class="text-muted font-14 mb-4">Please make changes on the form below in order to update your profile</p>

                                        <?php 
                                            $eid=intval($_GET['empid']);
                                            $sql = "SELECT * from  tblemployees where id=:eid";
                                            $query = $dbh -> prepare($sql);
                                            $query -> bindParam(':eid',$eid, PDO::PARAM_STR);
                                            $query->execute();
                                            $results=$query->fetchAll(PDO::FETCH_OBJ);
                                            $cnt=1;
                                            if($query->rowCount() > 0)
                                            {
                                            foreach($results as $result)
                                            {               ?> 
                                        <span style="color: blue"><h3>Student details</h3></span>
                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Student ID</label>
                                            <input class="form-control" name="empcode" type="text" autocomplete="off"  required value="<?php echo htmlentities($result->EmpId);?>" id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">RoomNo</label>
                                            <input class="form-control" name="RoomNo" type="text" autocomplete="off"  required value="<?php echo htmlentities($result->RoomNo);?>" id="example-text-input">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">First Name</label>
                                            <input class="form-control" name="firstName" value="<?php echo htmlentities($result->FirstName);?>"  type="text" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Last Name</label>
                                            <input class="form-control" name="lastName" value="<?php echo htmlentities($result->LastName);?>" type="text" autocomplete="off" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-email-input" class="col-form-label">Email</label>
                                            <input class="form-control" name="email" type="email"  value="<?php echo htmlentities($result->EmailId);?>"  autocomplete="off" required id="example-email-input">
                                        </div>

                                        <div class="form-group">
                                            <label class="col-form-label">Gender</label>
                                            <select class="custom-select" name="gender" autocomplete="off">
                                                <option value="<?php echo htmlentities($result->Gender);?>"><?php echo htmlentities($result->Gender);?></option>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                                <option value="Other">Other</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-form-label">Department</label>
                                            <select class="custom-select" name="department" autocomplete="off">
                                            <option value="<?php echo htmlentities($result->Department);?>"><?php echo htmlentities($result->Department);?></option>

                                            <?php $sql = "SELECT DepartmentName from tbldepartments";
                                                $query = $dbh -> prepare($sql);
                                                $query->execute();
                                                $results=$query->fetchAll(PDO::FETCH_OBJ);
                                                $cnt=1;
                                                if($query->rowCount() > 0){
                                                foreach($results as $resultt)
                                                {   
                                            ?>  
                                                <option value="<?php echo htmlentities($resultt->DepartmentName);?>"><?php echo htmlentities($resultt->DepartmentName);?></option>
                                        <?php }} ?>
                                        </select>
                                        </div>

                                        <div class="form-group">
                                            <label for="example-date-input" class="col-form-label">D.O.B</label>
                                            <input class="form-control" type="date" name="dob" id="birthdate" value="<?php echo htmlentities($result->Dob);?>">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Contact Number</label>
                                            <input class="form-control" name="mobileno" type="tel" value="<?php echo htmlentities($result->Phonenumber);?>" maxlength="12" autocomplete="off" required>
                                        </div>
                                        

                                    
                                          




                                        <span style="color: blue"><h3>Parent details</h3></span>
                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">ParentName</label>
                                            <input class="form-control" name="ParentName" type="text"  value="<?php echo htmlentities($result->ParentName);?>" autocomplete="off" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label class="col-form-label">Occupation</label>
                                            <select class="custom-select" name="Occupation" autocomplete="off">
                                                <option value="<?php echo htmlentities($result->Occupation);?>"><?php echo htmlentities($result->Occupation);?></option>
                                                <option value="Doctor">Doctor</option>
                                                <option value="Engineer">Engineer</option>
                                                <option value="Bussiness man">Bussiness man</option>
                                                <option value="Teacher">Teacher</option>
                                                <option value="Driver">Driver</option>
                                                <option value="Pilot">Pilot</option>
                                                <option value="Software developer">Software developer</option>
                                                <option value="Farmer">Farmer</option>
                                                 <option value="other">other</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">ParentMobileno</label>
                                            <input class="form-control" name="ParentMobileno" type="tel" value="<?php echo htmlentities($result->ParentMobileno);?>" maxlength="12" autocomplete="off" required>
                                        </div>


                                        <span style="color: blue"><h3>Address</h3></span>
                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Country</label>
                                            <input class="form-control" name="country" type="text"  value="<?php echo htmlentities($result->Country);?>" autocomplete="off" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">State</label>
                                            <input class="form-control" name="State" type="text"  value="<?php echo htmlentities($result->State);?>" autocomplete="off" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">District</label>
                                            <input class="form-control" name="District" type="text"  value="<?php echo htmlentities($result->District);?>" autocomplete="off" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Taluko</label>
                                            <input class="form-control" name="Taluko" type="text"  value="<?php echo htmlentities($result->Taluko);?>" autocomplete="off" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Pincode</label>
                                            <input class="form-control" name="Pincode" type="text"  value="<?php echo htmlentities($result->Pincode);?>" autocomplete="off" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Address</label>
                                            <input class="form-control" name="address" type="text"  value="<?php echo htmlentities($result->Address);?>" autocomplete="off" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">City/village</label>
                                            <input class="form-control" name="city" type="text"  value="<?php echo htmlentities($result->City);?>" autocomplete="off" required>
                                        </div>

                                        

                                        <?php }
                                        }?>

                                        <button class="btn btn-primary" name="update" id="update" type="submit">MAKE CHANGES</button>
                                        
                                    </div>
                                </form>
                            </div>
                            <div class=" tab-pane" id="change">
                   <div class="row">
                   <form role="form" id="imageForm" method="post" enctype="multipart/form-data" class="form-horizontal">
    <div class="form-group">
        <label>Upload Image</label>
        <input type="file" class="" name="photo" value="" required>
    </div>
    <div class="modal-footer text-right">
        <button type="submit" name="save2" class="btn btn-primary">Update</button>
    </div>
</form>

            </div>
          </div>

                            </div>
                            
                        </div>
                    </div>
                    <!-- Input Form Ending point -->
                    
                </div>
                <!-- row area end -->
                
                </div>
                <!-- row area start-->
            </div>
            </div>
            <?php include '../includes/footer.php' ?>
        <!-- footer area end-->
        </div>
        <!-- main content area end -->

        

    </div>
    <!-- jquery latest version -->
    <script src="../assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/owl.carousel.min.js"></script>
    <script src="../assets/js/metisMenu.min.js"></script>
    <script src="../assets/js/jquery.slimscroll.min.js"></script>
    <script src="../assets/js/jquery.slicknav.min.js"></script>

    <!-- start chart js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <!-- start highcharts js -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <!-- start zingchart js -->
    <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
    <script>
    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
    </script>
    <!-- all line chart activation -->
    <script src="assets/js/line-chart.js"></script>
    <!-- all pie chart -->
    <script src="assets/js/pie-chart.js"></script>
    
    <!-- others plugins -->
    <script src="../assets/js/plugins.js"></script>
    <script src="../assets/js/scripts.js"></script>
</body>

</html>

<?php } ?>