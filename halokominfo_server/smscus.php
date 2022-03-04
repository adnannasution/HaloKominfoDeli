<?php
$hasil5=mysqli_query($konek,"select * from tabelcustomer where idcus='$data3[idcus]'");
$data5=mysqli_fetch_array($hasil5);

$hp=$data5['hp'];

$userkey = 'g9u76x';
$passkey = '14moimdz9j';
$telepon = "$hp";
$message = 'PING!! Perbaikan selesai, Mohon Beri Bintang diaplikasi Halo Kominfo Deli';
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


?>
