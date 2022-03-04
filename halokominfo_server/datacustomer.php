<?php

include"konek.php";


$response = array('data'=>array());


$tampil=mysqli_query($konek,"select * from tabelcustomer join tabelopd on tabelcustomer.idopd=tabelopd.idopd order by tabelopd.opd asc");
while($row=mysqli_fetch_array($tampil))
{

 $namacus = $row['namacus'];
  $idcus = $row['idcus'];
   $opd = $row['opd'];
  
  

  array_push($response['data'], array('namacus'=>$namacus,'idcus'=>$idcus, 'opd'=>$opd ));
 

}
	
	
 echo json_encode($response);
?>	
	
