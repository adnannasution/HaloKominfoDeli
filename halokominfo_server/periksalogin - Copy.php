<?php
session_start();

include"konek.php";

$user=$_POST['user'];
$pass=$_POST['pass'];

$tampil=mysqli_query($konek,"select * from tabelcustomer where user='$user' and pass='$pass'");
$hitung=mysqli_num_rows($tampil);
$data=mysqli_fetch_array($tampil);



//------------


if($hitung > 0)
{
$arr = array("berhasil" => "Mohon tunggu sebentar","userid" => $data['user'], "nama" => $data['namacus'] , "idopd" => $data['idopd'] , "idcus" => $data['idcus']);
}
else
{
    $arr = array("gagal" => "Mohon ulang");
}


echo json_encode($arr);

?>

