<?php
ini_set('display_errors', '0');

include"konek.php";

$nip=$_POST['nip'];
$namacus=$_POST['namacus'];
$jabatan=$_POST['jabatan'];

$idopd=$_POST['idopd'];
$user=$_POST['user'];
$pass=$_POST['pass'];


if($user=='' or $pass=='' or $namacus=='' or $nip=='' or $jabatan=='' or $idopd=='')
{
  $arr = array("kosong" => "input data kosong");
}




else 
{
$hasil=mysqli_query($konek,"insert into tabelcustomer(nip, namacus, idopd, jabatan, user, pass) values('$nip','$namacus','$idopd','$jabatan','$user','$pass')");

$arr = array("berhasil" => "input data sukses");
}
 
echo json_encode($arr);


?>