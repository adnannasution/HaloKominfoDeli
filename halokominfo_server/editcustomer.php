<?php
error_reporting(0);

include"konek.php";

$namacus=$_POST['namacus'];


$pass=$_POST['pass'];
$passok=md5($pass);


$idcus=$_POST['idcus'];
$hp=$_POST['hp'];
$nip=$_POST['nip'];
$jabatan=$_POST['jabatan'];


$idopd=$_POST['idopd'];
//-----------------







if($namacus=='' or $pass=='' or $nip=='' or $jabatan=='')

{
    $arr = array("kosong" => "Mohon tunggu sebentar");
}


else
{

if($idopd!='')
{
$hasil=mysqli_query($konek,"update tabelcustomer set namacus='$namacus', pass='$pass', nip='$nip', idopd='$idopd', passok='$passok',  jabatan='$jabatan' where idcus='$idcus'");
}
else
{
$hasil=mysqli_query($konek,"update tabelcustomer set namacus='$namacus', pass='$pass', nip='$nip', passok='$passok', jabatan='$jabatan' where idcus='$idcus'");
}

 $arr = array("berhasil" => "Mohon tunggu sebentar");

}


echo json_encode($arr);

?>