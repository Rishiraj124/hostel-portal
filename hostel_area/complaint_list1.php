<?php
include "includes/warden_header.php";
if(isset($_SESSION['hostel_id']) && isset($_SESSION['hostel_password']))
{
?>

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
  <?php
      include "includes/warden_sidebar.php";
      ?>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

     <?php
        include "includes/warden_navigation.php";
        ?>
      <br>
       <center><button class="btn btn-primary" id="menu-toggle">Click Here for Details</button></center>
      

      <div class="container-fluid" id="control_display">
          <h2 class="mt-4 text-center"><u>Welcome to KIIT Hostel Portal</u></h2><br>
<!--
     <table class="table table-bordered table-hover">
         <tr>
             <th>Complaint Id</th>
             <th>Student Name</th>
             <th>Roll No</th>
                 <th>Current Status</th>
                 <th>Seen Status</th>
             <th>Details</th>
         </tr>
-->
         
    <?php
         $hostel_names=$_SESSION['hostel_name'];
         $query="SELECT * from complaint_details WHERE complaint_hostel_name='$hostel_names' ";
    $complaint_list_query=mysqli_query($connection,$query);
         if(!$complaint_list_query)
             die("QUERY FAILED".mysqli_error($connection));
         
         while($row=mysqli_fetch_assoc($complaint_list_query))
         {
             $complaint_id=$row['complaint_number'];
        $complaint_student_name=$row['complaint_student_name'];
          $complaint_student_rollno=$row['complaint_student_rollno'];    
             $complaint_status=$row['complaint_status'];
         $complaint_seen=$row['complaint_seen'];
//             echo "<tr>";
         ?><div class="row">
          <div class="col-md-3"></div>
    <div class="complainer col-md-6" style="background-color:#5AB9EA;"><br>
        <h5><b>Complaint ID:</b>&nbsp;<?php echo $complaint_id;?></h5>
        <h5><b>Student Name:</b>&nbsp;<?php echo $complaint_student_name;?></h5>
        <h5><b>Student Roll Number:</b>&nbsp;<?php echo $complaint_student_rollno;?></h5>
        <h5><b>Current Status:</b>&nbsp;<?php echo $complaint_status;?></h5>
        <h5><b>Seen Status:</b>&nbsp;<?php echo $complaint_seen;?></h5>
        <div class="d-flex justify-content-around">
        <button type="submit" class="btn btn-danger">DELETE</button>
        <button type="submit" class="btn btn-secondary">MORE DETAILS</button>
        </div><br>    </div>
          <div class="col-md-3"></div></div>
        <?php  }?>
        </div>
     <!--repeating the same code due to the screen size-->
      <br>
       <div class="container-fluid" id="for_mobiles">
       <br>
         <?php
          
     
         $hostel_names=$_SESSION['hostel_name'];
         $query="SELECT * from complaint_details WHERE complaint_hostel_name='$hostel_names' ORDER BY complaint_id DESC ";
    $complaint_list_query=mysqli_query($connection,$query);
         if(!$complaint_list_query)
             die("QUERY FAILED".mysqli_error($connection));
         
         while($row=mysqli_fetch_assoc($complaint_list_query))
         {
             $complaint_id=$row['complaint_number'];
        $complaint_student_name=$row['complaint_student_name'];
          $complaint_student_rollno=$row['complaint_student_rollno'];     
          $complaint_status=$row['complaint_status'];
         $complaint_seen=$row['complaint_seen'];
             
         
          echo "<b>"."Complaint Id:  ".$complaint_id."<br>";
             echo "Student Name:  ".$complaint_student_name."<br>";
             echo "Student Roll number:  ".$complaint_student_rollno."<br>";
             echo "Complaint Status:  ".$complaint_status."<br>";
             echo "Seen Status:  ".$complaint_seen."<br>";
             ?><br>
            <div class="d-flex justify-content-around">
        <button type="submit" class="btn btn-danger">DELETE</button>
        <button type="submit" class="btn btn-secondary">MORE DETAILS</button>
        </div>
             <br>
             <?php
            
         }
          ?>
        
        </div>
          </div>
      </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->
  
  
  
  <!--footer-->
  
  <?php
include "includes/warden_footer.php";
}
?>