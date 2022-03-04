<?php
error_reporting(0);

include"konek.php";

$namateknisi=$_POST['namateknisi'];


$pass=$_POST['pass'];

$passok=md5($pass);

$idteknisi=$_POST['idteknisi'];
$hp=$_POST['hp'];


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






if($namateknisi=='' or $pass=='' or $hp=='')

{
    $arr = array("kosong" => "Mohon tunggu sebentar");
}

else if($size_c > 5000000)

{
    $arr = array("tidak" => "tidak sesuai");
}


else if($temp_c!='')
{
$hasil=mysqli_query($konek,"update tabelteknisi set namateknisi='$namateknisi', user='$user', pass='$pass', passok='$passok', gambar='$name_c', hp='$hp' where idteknisi='$idteknisi'");

 $arr = array("berhasil" => "Mohon tunggu sebentar");

}


else
{
$hasil=mysqli_query($konek,"update tabelteknisi set namateknisi='$namateknisi', user='$user', pass='$pass',  passok='$passok', hp='$hp' where idteknisi='$idteknisi'");

 $arr = array("berhasil" => "Mohon tunggu sebentar");

}


echo json_encode($arr);

?>