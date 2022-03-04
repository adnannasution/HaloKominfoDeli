<?php
$id=$_GET['id'];

include"konek.php";

$response = array('data'=>array());

$tampil=mysqli_query($konek,"select * from tabelutusan join tabelteknisi on tabelutusan.idteknisi=tabelteknisi.idteknisi where tabelutusan.idmasalah='$id'");

while($row=mysqli_fetch_array($tampil))
{

$namateknisi = $row['namateknisi'];
  $jabatan = $row['jabatan'];
  $gambar = $row['gambar'];
    

array_push($response['data'], array('namateknisi'=>$namateknisi, 'jabatan'=>$jabatan, 'gambar'=>$gambar));
 

}

 echo json_encode($response);
?>

