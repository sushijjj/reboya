
<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['username'])) {

 ?>
<!DOCTYPE html>
<html>
<head>
	<style>
	body{
			margin: 0;
			padding: 0;
			background: url(bac.png);
			background-size: cover;
			background-repeat:no repeat;
			font-family: 'Poppins', sans-serif;
			
		}
    h1 {
    		position: relative;
    		top: 200px;
            width:500px;
            margin: 0 auto;
            background: ;
            text-align: center;
            color: black
        }
        [type="submit"]{
			border: none;
			outline: none;
			height: 40px;
			background: white;
			color: white;
			font-size: 18px;
			padding:5px;
			border border-radius: 20px;
		}
		button [type="button"]:hover {
			background-color: #7b6079;
		}
		button [type="button"]:active {
		background-color: #3e8e41;
		box-shadow: 0 5px #666;
		transform: translateY(4px);
		}
        
		
		</style>
	<title>HOME</title>
	
</head>
<body>
	
     <h1>Welcome, <?php echo $_SESSION['username']; ?></h1>
	
   <h1><center><button type="button">  <a href="Logout.php">Logout</a> </button></center><br/></h1>
	<h1><center><button type="submit">  <a href="Disp.php" >View Activity</a> </button></center></h1>

</body>
</html>

<?php 
}else{
     header("Location: index.php");
     exit();
}
 ?>                            		                            