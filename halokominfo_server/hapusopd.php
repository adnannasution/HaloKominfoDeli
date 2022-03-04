<?php
ini_set('display_errors', '0');

include"konek.php";

$id=$_GET['id'];

$hapus=mysqli_query($konek,"delete from tabelopd where idopd='$id'");

$arr = array("berhasil" => "input data sukses");

echo json_encode($arr);
?>