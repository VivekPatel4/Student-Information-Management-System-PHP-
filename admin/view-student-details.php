<?php
    session_start();
    error_reporting(0);
    include('../includes/dbconn.php');
    if(strlen($_SESSION['alogin'])==0){   
        header('location:index.php');
    } else {
        // Fetch student details based on the provided studentid
        if(isset($_GET['studentid'])) {
            $studentId = $_GET['studentid'];
            $sql = "SELECT * FROM tblemployees WHERE id = :studentId";
            $query = $dbh->prepare($sql);
            $query->bindParam(':studentId', $studentId, PDO::PARAM_INT);
            $query->execute();
            $result = $query->fetch(PDO::FETCH_ASSOC);
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
    <!-- Start datatable css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <!-- others css -->
    <link rel="stylesheet" href="../assets/css/typography.css">
    <link rel="stylesheet" href="../assets/css/default-css.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="stylesheet" href="../assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
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
            <div class="page-title-area">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="breadcrumbs-area clearfix">
                            <h4 class="page-title pull-left">Students Section</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><a href="employees.php">Home</a></li>
                                <li><span>Students View</span></li>
                                
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
            <div class="student-details">
                <?php if(isset($result) && !empty($result)) { ?>
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Student Details</h4>
                            <div class="row">
                                <div class="col-md-3">
                                    <img src="studentimages/<?php echo htmlentities($result['photo']); ?>" alt="Student Photo" class="img-fluid">
                                </div>
                                <div class="col-md-9">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <th scope="row">Student ID</th>
                                                <td><?php echo htmlentities($result['EmpId']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Full Name</th>
                                                <td><?php echo htmlentities($result['FirstName'] . " " . $result['LastName']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">RoomNo</th>
                                                <td><?php echo htmlentities($result['RoomNo']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Email</th>
                                                <td><?php echo htmlentities($result['EmailId']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Gender</th>
                                                <td><?php echo htmlentities($result['Gender']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Department</th>
                                                <td><?php echo htmlentities($result['Department']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">D.O.B</th>
                                                <td><?php echo htmlentities($result['Dob']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Contact Number</th>
                                                <td><?php echo htmlentities($result['Phonenumber']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Occupation</th>
                                                <td><?php echo htmlentities($result['Occupation']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">ParentMobileno</th>
                                                <td><?php echo htmlentities($result['ParentMobileno']); ?></td>
                                            </tr>
                                           
                                            <tr>
                                                <th scope="row">ParentMobileno</th>
                                                <td><?php echo htmlentities($result['ParentMobileno']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">District</th>
                                                <td><?php echo htmlentities($result['District']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Taluko</th>
                                                <td><?php echo htmlentities($result['Taluko']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Pincode</th>
                                                <td><?php echo htmlentities($result['Pincode']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Address</th>
                                                <td><?php echo htmlentities($result['Address']); ?></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">City/village</th>
                                                <td><?php echo htmlentities($result['City']); ?></td>
                                            </tr>
                                           
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } else { ?>
                    <p>No student details found.</p>
                <?php } ?>
            </div>
        </div>
        <?php include '../includes/footer.php' ?>
    </div>
    <!-- JavaScript files and scripts -->
    <!-- ... (Your JavaScript includes and scripts here) ... -->



        
        <!-- footer area end-->
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

        <!-- Start datatable js -->
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
    
    <!-- others plugins -->
    <script src="../assets/js/plugins.js"></script>
    <script src="../assets/js/scripts.js"></script>
</body>

</html>

<?php }  ?>