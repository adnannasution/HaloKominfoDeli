<?php

$userkey = 'g9u76x';
$passkey = '14moimdz9j';
$telepon = '085261781320';
$message = 'kombinasi angka : 1 3 4 3';
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