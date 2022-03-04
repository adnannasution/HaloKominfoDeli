<?php

include"konek.php";


$response = array('data'=>array());


$tampil=mysqli_query($konek,"select * from tabelopd order by opd asc");
while($row=mysqli_fetch_array($tampil))
{

 $opd = $row['opd'];
  $idopd = $row['idopd'];
  
  

  array_push($response['data'], array('opd'=>$opd,'idopd'=>$idopd));
 

}
	
	
 echo json_encode($response);
?>	
	
