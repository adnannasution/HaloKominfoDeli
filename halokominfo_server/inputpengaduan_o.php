<?php
ini_set('display_errors', '0');

include"konek.php";



date_default_timezone_set('Asia/Jakarta');


$yakin=$_POST['yakin'];
$idopd=92;
$masalah=htmlspecialchars($_POST['masalah']);
$tanggal=date('Y-m-d');
$waktu=date('h:i');

$kode=rand(1111, 9999);


if($masalah=='' or $yakin=='')
{
$arr = array("kosong" => "input data kosong");
}

else 
{
$hasil=mysqli_query($konek,"insert into tabelmasalah(tanggalmasalah, waktumasalah, masalah, idopd, kode) values('$tanggal','$waktu','$masalah','$idopd','$kode')");




$arr = array("berhasil" => "input data sukses");
}


echo json_encode($arr);
?>