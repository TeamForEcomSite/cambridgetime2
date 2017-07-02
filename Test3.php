



<?php
$dbhost = 'localhost:3306';
$dbuser = 'root';
$dbpass = '';
$dbname='cambridgetime';


	
	$name=$_POST['categories_name'];
	$code=$_POST['categories_code'];
	$table=$_POST['categories_table'];



$conn = new mysqli($dbhost,$dbuser,$dbpass,$dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 




$sqli="
CREATE TABLE $table (
id INT(100) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(3000) NOT NULL,
code VARCHAR(3000) NOT NULL,
img_name VARCHAR(1000),
img_path VARCHAR(1000),
img_type VARCHAR(100)
)";
if ($conn->query($sqli) === TRUE) {
    echo "Table of categories created successfully";
} else {
    echo "Error creating table: " . $conn->error;
}




   /*if(isset($_POST['upload_file'])){
        $file_name = $_FILES["file_name"]["name"];

        move_uploaded_file($_FILES["file_name"]["tmp_name"], "Your Folder Name/" . $file_name);

    
     //   mysqli_query($con, $insertImage);


    }


$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
}
*/

	$filetemp=$_FILES["img"]["tmp_name"];
	$filename=$_FILES["img"]["name"];
	$filetype=$_FILES["img"]['type'];
    $filepath="pics/".$filename;
    $dest="photos/";
    $dest2="$dest".$filename;
    
  
     move_uploaded_file($_FILES["img"]["tmp_name"],"$dest".$filename);





    $query = "INSERT INTO $table(name,code,img_name,img_path,img_type) VALUES ('$name','$code','$filename','$dest2','$filetype')";
    if ($conn->query($query) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $query . "<br>" . $conn->error;
}

$conn->close();

  echo "Image is uploaded.";
  

	
	


?> 
