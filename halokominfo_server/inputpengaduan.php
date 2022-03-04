<?php
ini_set('display_errors', '0');

include"konek.php";



date_default_timezone_set('Asia/Jakarta');
$idcus=$_GET['idcus'];

$yakin=$_POST['yakin'];
$idopd=$_POST['idopd'];
$masalah=htmlspecialchars($_POST['masalah']);
$tanggal=date('Y-m-d');
$waktu=date('H:i');

$kode=rand(1111, 9999);


if($masalah=='' or $yakin=='')
{
$arr = array("kosong" => "input data kosong");
}

else 
{
$hasil=mysqli_query($konek,"insert into tabelmasalah(idcus, tanggalmasalah, waktumasalah, masalah, idopd, kode) values('$idcus','$tanggal','$waktu','$masalah','$idopd','$kode')");







$arr = array("berhasil" => "input data sukses");
}

//include"sms.php";
 
echo json_encode($arr);
?>