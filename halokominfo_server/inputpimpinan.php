<?php
error_reporting(0);

include"konek.php";

$namapimpinan=$_POST['namapimpinan'];
$user=$_POST['user'];
$pass=$_POST['pass'];
$hp=$_POST['hp'];

//-----------------
$passok=md5($pass);


if($namapimpinan=='' or $hp=='' or $pass=='')

{
$arr = array("kosong" => "Mohon tunggu sebentar");
}


else
{
$hasil=mysqli_query($konek,"insert into tabeloperator(namaoperator, user, pass, hp, jabatan, passok) values('$namapimpinan','$user','$pass','$hp','Pimpinan','$passok')");

 $arr = array("berhasil" => "Mohon tunggu sebentar");

}


echo json_encode($arr);

?>