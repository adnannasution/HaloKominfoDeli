<?php
ini_set('display_errors', '0');

$id=$_GET['id'];

include"konek.php";

$response = array('data'=>array());

$tampil=mysqli_query($konek,"select * from tabelteknisi where idteknisi='$id'");
$row=mysqli_fetch_array($tampil);


 $idteknisi = $row['idteknisi'];
  $namateknisi = $row['namateknisi'];
  $hp = $row['hp'];
   $user = $row['user'];
    $pass = $row['pass'];
	 $gambar = $row['gambar'];
	
	 

array_push($response['data'], array('idteknisi'=>$idteknisi, 'namateknisi'=>$namateknisi, 'hp'=>$hp, 'user'=>$user, 'pass'=>$pass, 'gambar'=>$gambar));
 



 echo json_encode($response);
?>




