<?php
include"konek.php";

$idteknisi=$_GET['idteknisi'];

$tampil=mysqli_query($konek,"select * from tabelmasalah join tabelutusan on tabelmasalah.idmasalah=tabelutusan.idmasalah where tabelutusan.idteknisi='$idteknisi' and dibaca_t=''");


$hitung=mysqli_num_rows($tampil);

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