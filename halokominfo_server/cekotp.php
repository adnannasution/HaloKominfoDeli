<?php
ini_set('display_errors', '0');

include"konek.php";

$hp=$_POST['hp'];

$a=$_POST['a'];
$b=$_POST['b'];
$c=$_POST['c'];
$d=$_POST['d'];

$kombinasi="$a$b$c$d";


$tampil=mysqli_query($konek,"select * from tabelcustomer where hp='$hp' and kombinasi='$kombinasi'");
$hitung=mysqli_num_rows($tampil);


$konfirmasi=mysqli_query($konek,"update tabelcustomer set konfirmasi='ok' where hp='$hp'");

//------------
if($hitung > 0)
{
$arr = array("berhasil" => "Mohon tunggu sebentar");
}


else
{
$arr = array("gagal" => "Mohon ulang");
}

echo json_encode($arr);
?>
