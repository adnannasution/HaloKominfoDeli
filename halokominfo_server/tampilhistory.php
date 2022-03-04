<?php

include"konek.php";


$response = array('data'=>array());

$id=$_GET['id'];

$tampil=mysqli_query($konek,"select * from tabelmasalahok where idmasalah='$id' order by idtindakan asc");
while($row=mysqli_fetch_array($tampil))
{

 $waktu = $row['waktu'];
  $tanggal = $row['tanggal'];
  $status = $row['status'];
  
  

  array_push($response['data'], array('waktu'=>$waktu,'tanggal'=>$tanggal,'status'=>$status));
 

}
	
	
 echo json_encode($response);
?>	
	
