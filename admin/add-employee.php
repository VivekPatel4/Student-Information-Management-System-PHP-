<?php
    session_start();
    error_reporting(0);
    include('../includes/dbconn.php');
    if(strlen($_SESSION['alogin'])==0){   
    header('location:index.php');
    } else {
    if(isset($_POST['add'])){
    $empid=$_POST['empcode'];
    $fname=$_POST['firstName'];
    $lname=$_POST['lastName'];
    $RoomNo=$_POST['RoomNo'];    
    $email=$_POST['email']; 
    $password=md5($_POST['password']); 
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
    $status=1;
    $targetDirectory = "studentimages/"; // Specify the directory where the photos will be stored
    $photo = $_FILES["photo"]["name"];
    $tempName = $_FILES["photo"]["tmp_name"];

    // Check if a photo is uploaded
    if(!empty($photo)) {
        // Move the uploaded file to the specified directory
        move_uploaded_file($tempName, $targetDirectory . $photo);
    }
    // Rest of your code...

   
    
    

    $sql="INSERT INTO tblemployees(EmpId,FirstName,LastName,RoomNo,EmailId,Password,Gender,Dob,ParentName,Occupation,ParentMobileno,Department,Address,City,State,Pincode,District,Taluko,Country,Phonenumber,Status,photo) VALUES(:empid,:fname,:lname,:RoomNo,:email,:password,:gender,:dob,:ParentName,:Occupation,:ParentMobileno,:department,:address,:city,:State,:Pincode,:District,:Taluko,:country,:mobileno,:status,:photo)";
    $query = $dbh->prepare($sql);
    $query->bindParam(':empid',$empid,PDO::PARAM_STR);
    
    $query->bindParam(':fname',$fname,PDO::PARAM_STR);
    $query->bindParam(':lname',$lname,PDO::PARAM_STR);
    $query->bindParam(':RoomNo',$RoomNo,PDO::PARAM_STR);
    $query->bindParam(':email',$email,PDO::PARAM_STR);
    $query->bindParam(':password',$password,PDO::PARAM_STR);
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
    $query->bindParam(':status',$status,PDO::PARAM_STR);
    $query->bindParam(':photo', $photo, PDO::PARAM_STR);
    $query->execute();
    $lastInsertId = $dbh->lastInsertId();
    if($lastInsertId){
    $msg="Record has been added Successfully";
    } else {
    $error="ERROR";
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
    <link rel="shortcut icon" type="image/png" href="../assets/images/icon/favicon.ico">
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

    <!-- Custom form script -->
    <script type="text/javascript">
        function valid(){
            if(document.addemp.password.value!= document.addemp.confirmpassword.value) {
            alert("New Password and Confirm Password Field do not match  !!");
            document.addemp.confirmpassword.focus();
            return false;
                } return true;
        }
    </script>

    <script>
        function checkAvailabilityEmpid() {
            $("#loaderIcon").show();
            jQuery.ajax({
            url: "check_availability.php",
            data:'empcode='+$("#empcode").val(),
            type: "POST",
            success:function(data){
            $("#empid-availability").html(data);
            $("#loaderIcon").hide();
            },
            error:function (){}
            });
        }
    </script>

    <script>
        function checkAvailabilityEmailid() {
            $("#loaderIcon").show();
            jQuery.ajax({
            url: "check_availability.php",
            data:'emailid='+$("#email").val(),
            type: "POST",
            success:function(data){
            $("#emailid-availability").html(data);
            $("#loaderIcon").hide();
            },
            error:function (){}
            });
        }
    </script>
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
                            <h4 class="page-title pull-left">Add Student Section</h4>
                            <ul class="breadcrumbs pull-left"> 
                                <li><a href="employees.php">Student</a></li>
                                <li><span>Add</span></li>
                                
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
                                <div class="content">
                                <form  name="addemp" method="POST" enctype="multipart/form-data">

                                    <div class="card-body">
                                        <p class="text-muted font-14 mb-4">Please fill up the form in order to add employee records</p>
                                    <span style="color: blue"><h3>Student details</h3></span>
                                       <div class="row">
                                     
                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Student ID</label>
                                            <input class="form-control" name="empcode" type="text" autocomplete="on" required id="empcode" value="VN" onBlur="checkAvailabilityEmpid()">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">RoomNO</label>
                                            <input class="form-control" name="RoomNo" type="text" autocomplete="on" required id="example-text-input">
                                        </div>
                                    

                                        <div class="form-group col-md-8">
                                            <label for="example-text-input" class="col-form-label">First Name</label>
                                            <input class="form-control" name="firstName"  type="text" required id="example-text-input">
                                        </div>

                                        <div class="form-group col-md-8">
                                            <label for="example-text-input" class="col-form-label">Last Name</label>
                                            <input class="form-control" name="lastName" type="text" autocomplete="on" required id="example-text-input">
                                        </div>

                                       <div class="form-group col-md-8">
                                            <label for="example-email-input" class="col-form-label">Email</label>
                                            <input class="form-control" name="email" type="email"  autocomplete="on" value="@gmail.com" required id="example-email-input">
                                        </div>

                                        <div class="form-group">
                                            <label class="col-form-label">Preferred Department</label>
                                            <select class="custom-select" name="department" autocomplete="on">
                                                <option value="">Choose..</option>
                                                <?php $sql = "SELECT DepartmentName from tbldepartments";
                                                $query = $dbh -> prepare($sql);
                                                $query->execute();
                                                $results=$query->fetchAll(PDO::FETCH_OBJ);
                                                $cnt=1;
                                                if($query->rowCount() > 0){
                                                foreach($results as $result)
                                                {   ?> 
                                                <option value="<?php echo htmlentities($result->DepartmentName);?>"><?php echo htmlentities($result->DepartmentName);?></option>
                                                <?php }} ?>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-form-label">Gender</label>
                                            <select class="custom-select" name="gender" value="male" autocomplete="on">
                                                
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                                <option value="Other">Other</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label for="example-date-input" class="col-form-label">D.O.B</label>
                                            <input class="form-control" type="date" name="dob" id="birthdate" >
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Contact Number</label>
                                            <input class="form-control" name="mobileno" type="tel"  maxlength="12" autocomplete="on" required>
                                        </div>
                                         
                                        <div class="form-group">
                                              <label for="photo" class="col-form-label">Upload Photo</label>
                                              <input class="form-control" name="photo" type="file" accept="image/*" id="photo">
                                        </div>

                                     

                                        

                                      
                                      </div>
                                      <span style="color: blue"><h3>Parent details</h3></span>
                                      <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">ParentName</label>
                                            <input class="form-control" name="ParentName" type="text"   autocomplete="on" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label class="col-form-label">Occupation</label>
                                            <select class="custom-select" name="Occupation" autocomplete="on">
                                            <option value="">Choose..</option>    
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
                                            <input class="form-control" name="ParentMobileno" type="tel" maxlength="12"   autocomplete="on" required>
                                        </div>
                                      <span style="color: blue"><h3>Address</h3></span>
                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Country</label>
                                            <input class="form-control" name="country" type="text" value="india"   autocomplete="on" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">State</label>
                                            <input class="form-control" name="State" type="text" value="gujarat"  autocomplete="on" required id="example-text-input">
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">District</label>
                                            <input class="form-control" name="District" type="text"   autocomplete="on" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Taluko</label>
                                            <input class="form-control" name="Taluko" type="text"   autocomplete="on" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Pincode</label>
                                            <input class="form-control" name="Pincode" type="text"   autocomplete="on" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">City/village </label>
                                            <input class="form-control" name="city" type="text"   autocomplete="on" required>
                                        </div>


                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Address</label>
                                            <input class="form-control" name="address" type="text"   autocomplete="on" required>
                                        </div>

                                       

                                        <span style="color: blue"><h3>Set Password for Student Login</h3></span>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Password</label>
                                            <input class="form-control" name="password" type="password" autocomplete="off" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">Confirmation Password</label>
                                            <input class="form-control" name="confirmpassword" type="password" autocomplete="off" required>
                                        </div>

                        

                                        <button class="btn btn-primary" name="add" id="update" type="submit" onclick="return valid();">PROCEED</button>
                                        
                                    </div>
                                </form>
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