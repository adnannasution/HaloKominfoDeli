<?php
include"konek.php";

$hasil=mysqli_query($konek,"select * from tabelmasalah where status='' and dibaca=''");
$data=mysqli_fetch_array($hasil);
$hitung=mysqli_num_rows($hasil);

if($hitung==0)
{
$baru='';
}
else
{
$baru=$hitung;
}

print"$baru";

?>