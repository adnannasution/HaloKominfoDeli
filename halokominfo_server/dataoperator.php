<?php

include"konek.php";


$response = array('data'=>array());


$tampil=mysqli_query($konek,"select * from tabeloperator where jabatan='operator' order by namaoperator asc");
while($row=mysqli_fetch_array($tampil))
{

 $namaoperator = $row['namaoperator'];
  $idoperator = $row['idoperator'];
  
  

  array_push($response['data'], array('namaoperator'=>$namaoperator,'idoperator'=>$idoperator));
 

}
	
	
 echo json_encode($response);
?>	
	
