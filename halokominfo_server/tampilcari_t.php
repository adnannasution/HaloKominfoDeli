<?php
include"konek.php";

$cari=$_GET['cari'];
$idteknisi=$_GET['idteknisi'];


$response = array('data'=>array());

$tampil=mysqli_query($konek,"select * from tabelmasalah join tabelopd on tabelmasalah.idopd=tabelopd.idopd where masalah like '%$cari%' or kode like '%$cari%' or tanggalmasalah like '%$cari%' or tabelopd.opd like '%$cari%'");

while($row=mysqli_fetch_array($tampil))
{

$cek=mysqli_query($konek,"select * from tabelutusan where idteknisi='$idteknisi'");
$dataok=mysqli_fetch_array($cek);


if($idteknisi==$dataok['idteknisi'])
{



 $idmasalah = $row['idmasalah'];
  $masalah = $row['masalah'];
    $masalah=substr($masalah, 0, 80);
  $opd = $row['opd'];
   $tanggalmasalah = $row['tanggalmasalah'];
    $waktumasalah = $row['waktumasalah'];
    $kode = $row['kode'];

  array_push($response['data'], array('idmasalah'=>$idmasalah, 'masalah'=>$masalah, 'opd'=>$opd, 'tanggalmasalah'=>$tanggalmasalah, 'waktumasalah'=>$waktumasalah, 'kode'=>$kode));
 
} 

}

 echo json_encode($response);
?>
