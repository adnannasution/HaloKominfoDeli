<?php
include"konek.php";

$idcus=$_GET['idcus'];

$hasil=mysqli_query($konek,"select * from tabelmasalah where rating='' and status='selesai perbaikan' and idcus='$idcus'");
$data=mysqli_fetch_array($hasil);
$hitung=mysqli_num_rows($hasil);



if($hitung > 0)
{
print"<script>window.location='rating/index.html?id=$data[idmasalah]'</script>";
}


?>