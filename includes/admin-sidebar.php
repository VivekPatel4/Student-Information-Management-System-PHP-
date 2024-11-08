<nav>
        <ul class="metismenu" id="menu">
        <li class="<?php if($page=='dashboard') {echo 'active';} ?>"><a href="dashboard.php"><i class="ti-dashboard"></i> <span>Dashboard</span></a></li>
                            
        <li class="<?php if($page=='employee') {echo 'active';} ?>"><a href="employees.php"><i class="ti-id-badge"></i> <span>Students Section</span></a></li>

        <li><a href="#"><i class="fa fa-desktop"></i> Rooms</a>
					<ul>
						<li><a href="create-room.php">Add a Room</a></li>
						<li><a href="manage-rooms.php">Manage Rooms</a></li>
					</ul>
		</li>

        <li class="<?php if($page=='leave1') {echo 'active';} ?>">
            <a href="javascript:void(0)" aria-expanded="true"><i class="ti-user"></i><span>Leave</span></a>

            <ul class="collapse">
                <li ><a href="leave.php"><i class="ti-check"></i> Apply</a></li>
               
                <li ><a href="absent.php"><i class="ti-home"></i> absent</a></li>

                <li ><a href="present.php"><i class="fa fa-child"></i> present</a></li>

                <li ><a href="today hostel.php"><i class="fa fa-hotel"></i> today hostel</a></li>

            </ul>
            
        </li>

                        
        <li class="<?php if($page=='department') {echo 'active';} ?>"><a href="department.php"><i class="fa fa-th-large"></i> <span>Department Section</span></a></li>

        <li class="<?php if($page=='remainder') {echo 'active';} ?>"><a href="remainder.php"><i class="fa fa-calendar"></i> <span>Remainder Section</span></a></li>

        <li class="<?php if($page=='leave') {echo 'active';} ?>"><a href="leave-section.php"><i class="fa fa-sign-out"></i> <span>Leave Types</span></a></li>

        <li class="<?php if($page=='manage-leave') {echo 'active';} ?>">
            <a href="javascript:void(0)" aria-expanded="true"><i class="ti-briefcase"></i><span>Manage Leave</span></a>

            <ul class="collapse">
                <li ><a href="pending-history.php"><i class="fa fa-spinner"></i> Pending</a></li>
                <li ><a href="approved-history.php"><i class="fa fa-check"></i> Approved</a></li>
                <li ><a href="declined-history.php"><i class="fa fa-times-circle"></i> Declined</a></li>
                <li ><a href="leave-history.php"><i class="fa fa-history"></i> Leave History</a></li>
            </ul>
            
        </li>


        <li class="<?php if($page=='job') {echo 'active';} ?>"><a href="job.php"><i class="ti-briefcase"></i> <span>Job</span></a></li>
      

        <li class="<?php if($page=='manage-admin') {echo 'active';} ?>"><a href="manage-admin.php"><i class="fa fa-lock"></i> <span>Manage Admin</span></a></li>
                            
    </ul>
</nav>



