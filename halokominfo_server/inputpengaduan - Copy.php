<?php
ini_set('display_errors', '0');

include"konek.php";

date_default_timezone_set('Asia/Jakarta');

$idopd=$_POST['idopd'];
$idcus=$_GET['idcus'];
$tanggal=date('Y-m-d');
$waktu=date('h:i');
$masalah=$_POST['masalah'];

if($masalah=='')
{
  $arr = array("kosong" => "input data kosong");
}

else 
{
$hasil=mysqli_query($konek,"insert into tabelmasalah(idcus, tanggalmasalah, waktumasalah, masalah, idopd) values('$idcus','$tanggal','$waktu','$masalah','$idopd')");

$arr = array("berhasil" => "input data sukses");
}
 
echo json_encode($arr);


?>