<?php
ini_set('display_errors', '0');

include"konek.php";

$idteknisi=$_POST['idteknisi'];
$idmasalah=$_POST['idmasalahok'];


$cek=mysqli_query($konek,"select * from tabelutusan where idmasalah='$idmasalah' and idteknisi='$idteknisi'");
$hitung=mysqli_num_rows($cek);

$cek5=mysqli_query($konek,"update tabelteknisi set kondisi='sudah diutus' where idteknisi='$idteknisi'");


if($idteknisi=='')
{
  $arr = array("kosong" => "input data kosong");
}
else if($hitung > 0)
{
  $arr = array("sudah" => "input data sudah");
}
else
{
$hasil=mysqli_query($konek,"insert into tabelutusan(idmasalah, idteknisi) values('$idmasalah','$idteknisi')");

$arr = array("berhasil" => "input data sukses");
}


include"smsteknisi.php";

echo json_encode($arr);
?>