<?php
ini_set('display_errors', '0');

include"konek.php";

$nip=htmlspecialchars($_POST['nip']);
$namacus=htmlspecialchars($_POST['namacus']);
$jabatan=htmlspecialchars($_POST['jabatan']);

$idopd=$_POST['idopd'];
$hp=htmlspecialchars($_POST['hp']);
$pass=$_POST['pass'];

$passok=md5($pass);

$jumlahpass=strlen($pass);
$jumlahnip=strlen($nip);


$cek=mysqli_query($konek,"select * from tabelcustomer where hp='$hp' or nip='$nip'");
$hitung=mysqli_num_rows($cek);



if($hp=='' or $pass=='' or $namacus=='' or $nip=='' or $jabatan=='' or $idopd=='' or $jumlahpass<='5' or $jumlahnip!='18')
{
  $arr = array("kosong" => "input data kosong");
}


else if($hitung > 0)
{
  $arr = array("sudah" => "input data kosong");
}




else 
{

include"otp.php";

$hasil=mysqli_query($konek,"insert into tabelcustomer(nip, namacus, idopd, jabatan, hp, pass, kombinasi, passok) values('$nip','$namacus','$idopd','$jabatan','$hp','$pass','$kombinasi','$passok')");

$arr = array("berhasil" => "input data sukses", "hp" => $hp);
}
 
echo json_encode($arr);


?>