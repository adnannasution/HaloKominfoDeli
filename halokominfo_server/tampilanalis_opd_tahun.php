<?php
error_reporting(0);

include"konek.php";

$response = array('data'=>array());

$tahun=$_GET['tahun'];

$tampil=mysqli_query($konek,"select * from tabelopd order by opd asc");
while($row=mysqli_fetch_array($tampil))
{

$tampil2=mysqli_query($konek,"select * from tabelmasalah where idopd='$row[idopd]' and tanggalmasalah like '%$tahun-%'");
$hitung=mysqli_num_rows($tampil2);

$edit=mysqli_query($konek,"update tabelopd set jumlahkasus='$hitung' where idopd='$row[idopd]'");

}




//----------hitung


$all=mysqli_query($konek,"select count(idmasalah) as totalmasalah from tabelmasalah");
$dataall=mysqli_fetch_array($all);

$tampil3=mysqli_query($konek,"select * from tabelopd order by jumlahkasus desc");
while($dataku=mysqli_fetch_array($tampil3))
{

$persen=($dataku['jumlahkasus']/$dataall['totalmasalah'])*100;

$opd = $dataku['opd'];
$hitung = $persen;
$jumlahkasus = $dataku['jumlahkasus'];


 
array_push($response['data'], array('opd'=>$opd, 'hitung'=>$hitung, 'jumlahkasus'=>$jumlahkasus));

}

 echo json_encode($response);
?>
