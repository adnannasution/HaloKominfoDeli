<?php

include"konek.php";

$id=$_GET['id'];

$response = array('data'=>array());


$tampil=mysqli_query($konek,"select * from tabelutusan join tabelteknisi on tabelutusan.idteknisi=tabelteknisi.idteknisi where tabelutusan.idmasalah='$id'");
while($row=mysqli_fetch_array($tampil))
{

 $namateknisi = $row['namateknisi'];
  $gambar = $row['gambar'];
  $jabatan = $row['jabatan'];

  array_push($response['data'], array('namateknisi'=>$namateknisi,'jabatan'=>$jabatan, 'gambar'=>$gambar));
 

}
	
	
 echo json_encode($response);
?>	
	
	
	
	
	


