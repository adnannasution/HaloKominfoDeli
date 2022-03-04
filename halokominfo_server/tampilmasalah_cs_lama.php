<?php
include"konek.php";



$id=$_GET['idcus'];


$response = array('data'=>array());

$tampil=mysqli_query($konek,"select * from tabelmasalah join tabelopd on tabelmasalah.idopd=tabelopd.idopd where idcus='$id' and status='selesai perbaikan'");
while($row=mysqli_fetch_array($tampil))
{

 $idmasalah = $row['idmasalah'];
  $masalah = $row['masalah'];
  $opd = $row['opd'];
   $tanggalmasalah = $row['tanggalmasalah'];
    $waktumasalah = $row['waktumasalah'];

  array_push($response['data'], array('idmasalah'=>$idmasalah, 'masalah'=>$masalah, 'opd'=>$opd, 'tanggalmasalah'=>$tanggalmasalah, 'waktumasalah'=>$waktumasalah));
 

}

 echo json_encode($response);
?>
