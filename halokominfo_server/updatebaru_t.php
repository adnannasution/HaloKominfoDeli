<?php
include"konek.php";

$idteknisi=$_GET['idteknisi'];

$tampil=mysqli_query($konek,"select * from tabelmasalah join tabelutusan on tabelmasalah.idmasalah=tabelutusan.idmasalah where tabelutusan.idteknisi='$idteknisi'");

while($data=mysqli_fetch_array($tampil))
{
$hasil=mysqli_query($konek,"update tabelmasalah set dibaca_t='sudah' where idmasalah='$data[idmasalah]'");
}
?>