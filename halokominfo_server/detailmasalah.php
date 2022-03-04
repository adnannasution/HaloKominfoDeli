<?php


include"konek.php";

$response = array('data'=>array());

$id=$_GET['id'];

$tampil=mysqli_query($konek,"select * from tabelmasalah join tabelopd on tabelmasalah.idopd=tabelopd.idopd where idmasalah='$id'");
$row=mysqli_fetch_array($tampil);



 $idmasalah = $row['idmasalah'];
  $masalah = $row['masalah'];
  $opd = $row['opd'];
   $tanggalmasalah = $row['tanggalmasalah'];
    $waktumasalah = $row['waktumasalah'];
	
	 $lama = $row['lama'];
	 $rating = $row['rating'];
	 $ket = $row['ket'];
	  $status = $row['status'];

	  $kode = $row['kode'];
	  
	 

array_push($response['data'], array('idmasalah'=>$idmasalah, 'masalah'=>$masalah, 'opd'=>$opd, 'tanggalmasalah'=>$tanggalmasalah, 'waktumasalah'=>$waktumasalah, 'lama'=>$lama, 'rating'=>$rating, 'ket'=>$ket, 'status'=>$status, 'kode'=>$kode));
 



 echo json_encode($response);
?>











