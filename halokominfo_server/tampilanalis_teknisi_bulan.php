<?php
error_reporting(0);

include"konek.php";

$response = array('data'=>array());
$tahun=$_GET['tahun'];
$bulan=$_GET['bulan'];


$tampil=mysqli_query($konek,"select * from tabelteknisi order by namateknisi asc");
while($row=mysqli_fetch_array($tampil))
{

$tampil2=mysqli_query($konek,"select * from tabelmasalah join tabelutusan on tabelmasalah.idmasalah=tabelutusan.idmasalah where tanggalmasalah like '%$tahun-$bulan-%' and tabelutusan.idteknisi='$row[idteknisi]'");

$hitung=mysqli_num_rows($tampil2);

$edit=mysqli_query($konek,"update tabelteknisi set jumlahkasus='$hitung' where idteknisi='$row[idteknisi]'");

}




//----------hitung


$all=mysqli_query($konek,"select count(idmasalah) as totalmasalah from tabelmasalah");
$dataall=mysqli_fetch_array($all);

$tampil3=mysqli_query($konek,"select * from tabelteknisi order by jumlahkasus desc");
while($dataku=mysqli_fetch_array($tampil3))
{

$persen=($dataku['jumlahkasus']/$dataall['totalmasalah'])*100;

$namateknisi = $dataku['namateknisi'];
$hitung = $persen;
$jumlahkasus = $dataku['jumlahkasus'];




//---menghitung rating bintang
$tampil5=mysqli_query($konek,"select * from tabelutusan where idteknisi='$dataku[idteknisi]'");
$datamu=mysqli_fetch_array($tampil5);

$idmasalah = $datamu['idmasalah'];

$tampil6=mysqli_query($konek,"select sum(jumlahrating) as totalrating from tabelmasalah where idmasalah='$idmasalah' and tanggalmasalah like '%$tahun-$bulan-%'");
$datakau=mysqli_fetch_array($tampil6);

$jumlahrating=$datakau['totalrating'];



//-------

array_push($response['data'], array('namateknisi'=>$namateknisi, 'hitung'=>$hitung, 'jumlahkasus'=>$jumlahkasus, 'jumlahrating'=>$jumlahrating));

}

 echo json_encode($response);
 
 
?>
