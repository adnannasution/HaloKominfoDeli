<?php
include"konek.php";

$idteknisi=$_GET['id'];


$hasil=mysqli_query($konek,"select * from tabelmasalah join tabelutusan on tabelmasalah.idmasalah=tabelutusan.idmasalah where idteknisi='$idteknisi' and status='' and dibaca_t=''");


$data=mysqli_fetch_array($hasil);
$hitung=mysqli_num_rows($hasil);

if($hitung==0)
{
$baru='';
}
else
{
$baru=$hitung;
}

print"$baru";

?>