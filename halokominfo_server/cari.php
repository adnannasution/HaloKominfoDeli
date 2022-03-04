<?php
ini_set('display_errors', '0');

include"konek.php";

$cari=$_POST['cari'];

if($cari=='')
{
$arr = array("kosong" => "Mohon ulang");
}

else 
{
$arr = array("berhasil" => "Mohon tunggu sebentar","cari" => $cari);
}




echo json_encode($arr);
?>
