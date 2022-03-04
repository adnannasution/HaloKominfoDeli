<?php
ini_set('display_errors', '0');

include"konek.php";

$id=$_GET['id'];

if($id!=1)
{
$hapus=mysqli_query($konek,"delete from tabeloperator where idoperator='$id'");

$arr = array("berhasil" => "input data sukses");

}


echo json_encode($arr);
?>