<?php
ini_set('display_errors', '0');

include"konek.php";

$sql = "select * from tabelteknisi order by jabatan asc";
$hasil = mysqli_query($konek, $sql);
$results = array();

foreach($hasil as $row){
	
	 $results[] = array(
	      'idteknisi'=> $row[idteknisi],
		  'namateknisi'=> $row[namateknisi],
		  'kondisi'=> $row[kondisi],
		  'jabatan'=> $row[jabatan],
		  
	 );
}

$json = json_encode($results);

echo $json;

?>


