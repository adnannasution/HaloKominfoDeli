<?php

include"konek.php";

$idteknisi=$_GET['idteknisi'];

$response = array('data'=>array());

$tampil=mysqli_query($konek,"select * from tabelmasalah join tabelutusan on tabelmasalah.idmasalah=tabelutusan.idmasalah join tabelopd on tabelmasalah.idopd=tabelopd.idopd where idteknisi='$idteknisi' and status!='selesai perbaikan'");

while($row=mysqli_fetch_array($tampil))
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

 echo json_encode($response);
?>








