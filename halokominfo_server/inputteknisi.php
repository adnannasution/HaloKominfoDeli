<?php
error_reporting(0);

include"konek.php";

$namateknisi=$_POST['namateknisi'];
$hp=$_POST['hp'];
$pass=$_POST['pass'];
$jabatan=$_POST['jabatan'];

$passok=md5($pass);

//-----------------

$temp_c=$_FILES['fileupload_bn_a']['tmp_name'];
$name_c=$_FILES['fileupload_bn_a']['name'];
$size_c=$_FILES['fileupload_bn_a']['size'];
$type_c = $_FILES['fileupload_bn_a']['type'];


$format = pathinfo($name_c, PATHINFO_EXTENSION);
if( ($format == "jpg") or ($format == "png") or ($format == "jpeg") )
{

$acak_c=rand(0000, 9999);
$name_c="$acak_c.$name_c";

$alamat='teknisi/';
$copy_c=move_uploaded_file($temp_c, $alamat.$name_c);
}






if($namateknisi=='' or $hp=='' or $pass=='' or $temp_c=='' or $jabatan=='')

{
    $arr = array("kosong" => "Mohon tunggu sebentar");
}

else if($size_c > 5000000)

{
    $arr = array("tidak" => "tidak sesuai");
}

else
{
$hasil=mysqli_query($konek,"insert into tabelteknisi(namateknisi, hp, pass, gambar, jabatan, passok) values('$namateknisi','$hp','$pass','$name_c','$jabatan','$passok')");

 $arr = array("berhasil" => "Mohon tunggu sebentar");

}


echo json_encode($arr);

?>