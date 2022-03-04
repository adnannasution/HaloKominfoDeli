<?php

include"konek.php";


$response = array('data'=>array());


$tampil=mysqli_query($konek,"select * from tabelteknisi order by namateknisi asc");
while($row=mysqli_fetch_array($tampil))
{

 $namateknisi = $row['namateknisi'];
  $idteknisi = $row['idteknisi'];
    $jabatan = $row['jabatan'];
  
  

  array_push($response['data'], array('namateknisi'=>$namateknisi,'idteknisi'=>$idteknisi,'jabatan'=>$jabatan));
 

}
	
	
 echo json_encode($response);
?>	
	
