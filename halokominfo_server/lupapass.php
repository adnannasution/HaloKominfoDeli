<?php
ini_set('display_errors', '0');

include"konek.php";

$hp=$_POST['hp'];
$idopd=$_POST['idopd'];

$hasil=mysqli_query($konek,"select * from tabelcustomer where hp='$hp' and idopd='$idopd'");
$data=mysqli_fetch_array($hasil);
$hitung=mysqli_num_rows($hasil);


$userkey = "g9u76x";
$passkey = "14moimdz9j";
$telepon = "$hp";
$message = "password anda : $data[pass]";
$url = 'https://gsm.zenziva.net/api/sendWA/';
$curlHandle = curl_init();
curl_setopt($curlHandle, CURLOPT_URL, $url);
curl_setopt($curlHandle, CURLOPT_HEADER, 0);
curl_setopt($curlHandle, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curlHandle, CURLOPT_SSL_VERIFYHOST, 2);
curl_setopt($curlHandle, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($curlHandle, CURLOPT_TIMEOUT,30);
curl_setopt($curlHandle, CURLOPT_POST, 1);
curl_setopt($curlHandle, CURLOPT_POSTFIELDS, array(
    'userkey' => $userkey,
    'passkey' => $passkey,
    'nohp' => $telepon,
    'pesan' => $message
));
$results = json_decode(curl_exec($curlHandle), true);
curl_close($curlHandle);



if($hp=='' or  $idopd=='')
{
$arr = array("gagal" => "input data gagal");
}
else if($hitung > 0)
{
$arr = array("berhasil" => "input data sukses");
}
else
{
$arr = array("gagal" => "input data gagal");
}

echo json_encode($arr);

?>