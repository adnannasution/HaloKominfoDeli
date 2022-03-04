<?php
ini_set('display_errors', '0');

include"konek.php";

$hp=htmlspecialchars($_POST['hp']);
$pass=$_POST['pass'];

$passok=md5($pass);


$tampil=mysqli_query($konek,"select * from tabelcustomer where hp='$hp' and passok='$passok' and konfirmasi='ok'");
$hitung=mysqli_num_rows($tampil);

$data=mysqli_fetch_array($tampil);
$jabatan='customer';

$lihat=mysqli_query($konek,"select * from tabelopd where idopd='$data[idopd]'");
$dataopd=mysqli_fetch_array($lihat);


//--------

$tampil2=mysqli_query($konek,"select * from tabelteknisi where hp='$hp' and passok='$passok'");
$hitung2=mysqli_num_rows($tampil2);

$data2=mysqli_fetch_array($tampil2);
$jabatan2='teknisi';


$tampil3=mysqli_query($konek,"select * from tabeloperator where hp='$hp' and passok='$passok'");
$hitung3=mysqli_num_rows($tampil3);

$data3=mysqli_fetch_array($tampil3);
$jabatan3=$data3['jabatan'];

//------------
if($hitung > 0)
{
$arr = array("berhasil" => "Mohon tunggu sebentar","userid" => $data['user'], "nama" => $data['namacus'] , "idopd" => $data['idopd'] , "idcus" => $data['idcus'], "jabatan" => $jabatan, "opd" => $dataopd['opd']);
}

else if($hitung2 > 0)
{
$arr = array("berhasil" => "Mohon tunggu sebentar","userid" => $data2['user'], "nama" => $data2['namateknisi'] , "idteknisi" => $data2['idteknisi'], "jabatan" => $jabatan2);
}

else if($hitung3 > 0)
{
$arr = array("berhasil" => "Mohon tunggu sebentar","userid" => $data3['user'], "nama" => $data3['namaoperator'] , "idoperator" => $data3['idoperator'], "jabatan" => $jabatan3);
}


else
{
$arr = array("gagal" => "Mohon ulang");
}

echo json_encode($arr);
?>
