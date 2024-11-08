<?php
session_start();
error_reporting(0);
include('../includes/dbconn.php');

if (strlen($_SESSION['alogin']) == 0) {
    header('location:index.php');
} else {
    if (isset($_POST['add'])) {
        $StudentName = $_POST['StudentName'];
        $job = $_POST['job'];
        $permanentaddress = $_POST['permanentaddress'];
        $jobaddress = $_POST['jobaddress'];
        $jobtiming = $_POST['jobtiming'];
        $mobilenumber = $_POST['mobilenumber'];
        $targetDirectory = "studentimages/"; // Specify the directory where the StudentImages will be stored
        $StudentImages = $_FILES["StudentImages"]["name"];
        $tempName = $_FILES["StudentImages"]["tmp_name"];

        // Check if a StudentImages is uploaded
        if (!empty($StudentImages)) {
            // Move the uploaded file to the specified directory
            move_uploaded_file($tempName, $targetDirectory . $StudentImages);
        }

        $sql = "INSERT INTO job(StudentName,job,permanentaddress,jobaddress,jobtiming,mobilenumber,StudentImages) VALUES(:StudentName,:job,:permanentaddress,:jobaddress,:jobtiming,:mobilenumber,:StudentImages)";
        $query = $dbh->prepare($sql);
        $query->bindParam(':StudentName', $StudentName, PDO::PARAM_STR);
        $query->bindParam(':job', $job, PDO::PARAM_STR);
        $query->bindParam(':permanentaddress', $permanentaddress, PDO::PARAM_STR);
        $query->bindParam(':jobaddress', $jobaddress, PDO::PARAM_STR);
        $query->bindParam(':jobtiming', $jobtiming, PDO::PARAM_STR);
        $query->bindParam(':mobilenumber', $mobilenumber, PDO::PARAM_STR);
        $query->bindParam(':StudentImages', $StudentImages, PDO::PARAM_STR);
        $query->execute();
        $lastInsertId = $dbh->lastInsertId();
        if ($lastInsertId) {
            $msg = "Record has been added Successfully";
        } else {
            $error = "ERROR";
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
   

    
    <script>
    
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
                                <li><a href="job.php">Student</a></li>
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
                                    
                                     
                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">StudentName</label>
                                            <input class="form-control" name="StudentName" type="text" autocomplete="on" required id="StudentName" >
                                        </div>

                                        <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">jobaddress</label>
                                            <input class="form-control" name="jobaddress" type="text" autocomplete="on" required id="jobaddress">
                                        </div>
                                    

                                        <div class="form-group col-md-8">
                                            <label for="example-text-input" class="col-form-label">job</label>
                                            <input class="form-control" name="job"  type="text" required id="job">
                                        </div>

                                        <div class="form-group col-md-8">
                                            <label for="example-text-input" class="col-form-label">permanentaddress</label>
                                            <input class="form-control" name="permanentaddress" type="text" autocomplete="on" required id="permanentaddress

                                       <div class="form-group col-md-8">
                                            <label for="example-jobtiming-input" class="col-form-label">jobtiming</label>
                                            <input class="form-control" name="jobtiming" type="jobtiming"  autocomplete="on" required id="jobtiming">
                                        </div>
                                        
                                       <div class="form-group">
                                            <label for="example-text-input" class="col-form-label">mobilenumber</label>
                                            <input class="form-control" name="mobilenumber" type="text"   autocomplete="on" required id="mobilenumber">
                                        </div>

                                        <div class="form-group">
                                              <label for="StudentImages" class="col-form-label">Upload StudentImages</label>
                                              <input class="form-control" name="StudentImages" type="file" accept="image/*" id="StudentImages">
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