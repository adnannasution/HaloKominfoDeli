<?php
error_reporting(0);

$id=$_GET['id'];

include"konek.php";

$response = array('data'=>array());

$tampil=mysqli_query($konek,"select * from tabelmasalah join tabelopd on tabelmasalah.idopd=tabelopd.idopd join tabelcustomer on tabelmasalah.idcus=tabelcustomer.idcus where idmasalah='$id'");
$row=mysqli_fetch_array($tampil);
$hitung=mysqli_num_rows($tampil);

if($hitung==0)
{
  $tampil=mysqli_query($konek,"select * from tabelmasalah join tabelopd on tabelmasalah.idopd=tabelopd.idopd where idmasalah='$id'");
$row=mysqli_fetch_array($tampil); 
}




 $idmasalah = $row['idmasalah'];
  $masalah = $row['masalah'];
  $opd = $row['opd'];
   $tanggalmasalah = $row['tanggalmasalah'];
    $waktumasalah = $row['waktumasalah'];
       $namacus = $row['namacus'];
        $hp = $row['hp'];
	
	 $lama = $row['lama'];
	 $rating = $row['rating'];
	 $ket = $row['ket'];
	  $status = $row['status'];

     $kode = $row['kode'];
	 

array_push($response['data'], array('idmasalah'=>$idmasalah, 'masalah'=>$masalah, 'opd'=>$opd, 'tanggalmasalah'=>$tanggalmasalah, 'waktumasalah'=>$waktumasalah, 'lama'=>$lama, 'rating'=>$rating, 'ket'=>$ket, 'status'=>$status, 'namacus'=>$namacus, 'hp'=>$hp, 'kode'=>$kode));
 



 echo json_encode($response);
?>



