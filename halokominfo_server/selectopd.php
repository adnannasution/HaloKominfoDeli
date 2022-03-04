<?php
ini_set('display_errors', '0');

include"konek.php";

$sql = "select * from tabelopd order by opd asc";
$hasil = mysqli_query($konek, $sql);
$results = array();

foreach($hasil as $row){
	
	 $results[] = array(
	      'idopd'=> $row[idopd],
		  'opd'=> $row[opd],
		  
	 );
}

$json = json_encode($results);

echo $json;

?>


