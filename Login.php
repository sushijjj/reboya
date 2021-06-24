

<?php 
session_start(); 
include "db.php";

if (isset($_POST['uname']) && isset($_POST['password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$uname = validate($_POST['uname']);
	$pass = validate($_POST['password']);
	$login = "Log In";
	$changepass = "Change Pass";
	$useradmin="";
	$passadmin="";
	 $duration = floor(time()/(60*5));
	srand($duration);
	 date_default_timezone_set('Asia/Manila');
	 $currentDate = date('Y-m-d H:i:s');
	 $currentDate_timestamp = strtotime($currentDate);
	$endDate_months = strtotime("+5 minutes", $currentDate_timestamp);
	 $packageEndDate = date('Y-m-d H:i:s', $endDate_months);
	$_SESSION["current"] = $currentDate;
        $_SESSION["expired"] = $packageEndDate;
	

	if (empty($uname)) {
		header("Location: indx.php?error=Username is required");
	    exit();
	}else if(empty($pass)){
        header("Location: indx.php?error=Password is required");
	    exit();
	}else{
		// hashing the password
       
        
		$sql = "SELECT * FROM users WHERE username='$uname' AND password='$pass'";
		
		
		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) == 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['username'] === $uname && $row['password'] === $pass || $useradmin==="ADMIN"&&$passadmin ==="ADMIN")  {
            	$_SESSION['username'] = $row['username'];
            	
            	$_SESSION['id'] = $row['id'];
			
				
				$sql = "SELECT * FROM users WHERE username='$uname','$useradmin' AND password='$pass','$passadmin'";
	$result2 = mysqli_query($conn, $sql);
            	header("Location: code.php");
		        exit();
            }else{
				header("Location: indx.php?error=Incorrect User name or password");
		        exit();
			}
		}else{
			header("Location: indx.php?error=Incorrect User name or password");
	        exit();
		}
	}
	
}else{
	header("Location: indx.php");
	
	exit();
}