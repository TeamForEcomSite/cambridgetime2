<?php include"header.php";?>

<div class="col-sm-3 col-md-2 hidden-xs">
					<!-- Block vertical-menu -->
					<div class="block block-vertical-menu">
						<div class="vertical-head">
							<h5 class="vertical-title">Categories</h5>
						</div>
						<div class="vertical-menu-content">
	                        <ul class="vertical-menu-list">
	                           <li class="ef4896">
                                 

<?php
$dbhost = 'localhost:3306';
$dbuser = 'root';
$dbpass = '';
$dbname='cambridgetime';



  


$conn = new mysqli($dbhost,$dbuser,$dbpass,$dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
  $sql = "select * from categories  where C_name in(select C_name from categories where C_id >0)";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
   ?>	
	                        <ul class="vertical-menu-list">
	                           
 <li onmouseover="getPaging(this.value)"  value="<?php echo $row['C_id'] ?>">
 <a href="Test6.php?id=<?php echo $row['C_id'] ?>" >

   

    <?php
       echo  $row["C_name"]. " " ;?></a></li>
  <?php
    }
} else {
    echo "0 results";
}

$conn->close();


?>
<script type="text/javascript">
            function getPaging(value)
            {
                var javascriptVariable = value;
  window.location.href = "?name=" + javascriptVariable+"#vertical-dropdown-menu"; 
            }
    
</script>





   
									<div class="vertical-dropdown-menu">

                                        <div class="vertical-groups">
										
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <div class="block-content-vertical-menu border">
                                                        <h3 class="head">Personalised Products</h3>
														
                                                        <div class="inner">
                                                            <ul class="vertical-menu-link">
                                                            
                                                              
                                                                        

                                                                    <?php

if ($_GET['name']) { // check parameter was passed
  $subject =$_GET['name'];
   // cast whatever was passed to integer
} else {
  // handle no subject case
}


$dbhost = 'localhost:3306';
$dbuser = 'root';
$dbpass = '';
$dbname='cambridgetime';



  


$conn = new mysqli($dbhost,$dbuser,$dbpass,$dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 




$sql = "select S_name from subcategories  where $subject=C_id";
$result = $conn->query($sql);
if ($result->num_rows > 0) {?> 

   <?php while($row = $result->fetch_assoc()) {?><li>
    
   

   
   <a href="test13.php">  <span class="text"> <?php  echo  $row["S_name"]." "?> </span> </a></li> <?php
  
    }?>
    
    <?php
} else {
    echo "0 results";
}

$conn->close();





?>

                                                                    
<?php //for($i=0;$i>5;$i++){
//echo $i;	} ?>    
                                                      
                                                           </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
	                                </div>
	                            </li>
	                        </ul>
	                    </div>
					</div>
					<!-- ./Block vertical-menu -->
				</div>
				
<?php include "ftr.php";?>				