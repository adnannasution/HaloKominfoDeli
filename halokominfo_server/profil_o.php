<?php
ini_set('display_errors', '0');

$id=$_GET['id'];

include"konek.php";

$response = array('data'=>array());

$tampil=mysqli_query($konek,"select * from tabeloperator where idoperator='$id'");
$row=mysqli_fetch_array($tampil);


 $idoperator = $row['idoperator'];
  $namaoperator = $row['namaoperator'];
  $hp = $row['hp'];
   $user = $row['user'];
    $pass = $row['pass'];
    $jabatan = $row['jabatan'];
	
	 
array_push($response['data'], array('idoperator'=>$idoperator, 'namaoperator'=>$namaoperator, 'hp'=>$hp, 'user'=>$user, 'pass'=>$pass, 'jabatan'=>$jabatan));
 


 echo json_encode($response);
?>




