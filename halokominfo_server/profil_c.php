<?php
ini_set('display_errors', '0');

$id=$_GET['id'];

include"konek.php";

$response = array('data'=>array());

$tampil=mysqli_query($konek,"select * from tabelcustomer join tabelopd on tabelcustomer.idopd=tabelopd.idopd where idcus='$id'");
$row=mysqli_fetch_array($tampil);


 $idcus = $row['idcus'];
  $namacus = $row['namacus'];
  $hp = $row['hp'];
  $nip = $row['nip'];
  $jabatan = $row['jabatan'];
   $user = $row['user'];
    $pass = $row['pass'];
	$opd = $row['opd'];
	$idopd = $row['idopd'];
	
	 

array_push($response['data'], array('idcus'=>$idcus, 'namacus'=>$namacus,  'nip'=>$nip,'idopd'=>$idopd, 'opd'=>$opd,  'jabatan'=>$jabatan, 'hp'=>$hp, 'user'=>$user, 'pass'=>$pass));
 



 echo json_encode($response);
?>




