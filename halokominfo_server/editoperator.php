<?php
error_reporting(0);

include"konek.php";

$namaoperator=$_POST['namaoperator'];

$pass=$_POST['pass'];
$passok=md5($pass);


$idoperator=$_POST['idoperator'];
$hp=$_POST['hp'];
//-----------------







if($namaoperator=='' or $pass=='' or $hp=='')

{
    $arr = array("kosong" => "Mohon tunggu sebentar");
}


else
{
$hasil=mysqli_query($konek,"update tabeloperator set namaoperator='$namaoperator', pass='$pass', passok='$passok', hp='$hp' where idoperator='$idoperator'");

 $arr = array("berhasil" => "Mohon tunggu sebentar");

}


echo json_encode($arr);

?>