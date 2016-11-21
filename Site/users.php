<?php
require_once ('inc/connexion.inc.php');
header ('content-type: application/json');
$cnn = getConnexion('android');


if (!$cnn)
{
	exit();
}	


if(isset($_GET['email'])){$email=$_GET['email'];}
if(isset($_GET['password'])){$pwd=$_GET['password'];
$pwd=md5($pwd);}

//$stmt=$cnn->prepare('SELECT email, type_droits FROM tbl_login WHERE password=:password and password=:password');
$stmt=$cnn->prepare('SELECT email, type_droits FROM tbl_login');

//$stmt= $cnn->bindvalue(':mail', $email, PDO::PARAM_STR);
//$stmt= $cnn->bindvalue(':password', $pwd, PDO::PARAM_STR);
$stmt->execute();
$row=$stmt->fetch(PDO::FETCH_OBJ);
if (!$row)
{
	//pas de correspondant
	echo 'false';
	exit;
}

//renvoye l'adresse email et le rype du compte 
//methode brute force

echo'{"users":['.json_encode($row);

while ($row=$stmt->fetch(PDO::FETCH_OBJ))
{
	echo ','.json_encode($row);
	echo json_encode($row);
	echo json_decode($row);
	
}
echo ']}';



?>