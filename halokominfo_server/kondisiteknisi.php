<?php

include"konek.php";


$response = array('data'=>array());


$tampil=mysqli_query($konek,"select * from tabelteknisi order by namateknisi asc");
while($row=mysqli_fetch_array($tampil))
{

 $namateknisi = $row['namateknisi'];
  $gambar = $row['gambar'];
  $kondisi = $row['kondisi'];
  

  array_push($response['data'], array('namateknisi'=>$namateknisi, 'gambar'=>$gambar, 'kondisi'=>$kondisi));
 

}
	
	
 echo json_encode($response);
?>	
	
	
	
	
	


