<?php

include"konekan.php";

date_default_timezone_set('Asia/Jakarta');

$url = "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

$tanggal=date('Y-m-d');
$waktu=date('H:i');




if ( isset($_SERVER["REMOTE_ADDR"]) )    {
$ip=$_SERVER["REMOTE_ADDR"] . ' ';
} else if ( isset($_SERVER["HTTP_X_FORWARDED_FOR"]) )    {
$ip=$_SERVER["HTTP_X_FORWARDED_FOR"] . ' ';
} else if ( isset($_SERVER["HTTP_CLIENT_IP"]) )    {
$ip=$_SERVER["HTTP_CLIENT_IP"] . ' ';
}
echo 'Clients IP  Address: ' . $ip;


echo gethostbyaddr($_SERVER['REMOTE_ADDR']);

echo GetHostByName($REMOTE_ADDR);


$name=GetHostByName($REMOTE_ADDR);

//----------







//----------
 
$hasil=mysqli_query($konek,"select * from tabelmonitoring where name='$name' and tanggal='$tanggal'"); 
$hitung=mysqli_num_rows($hasil);



if($hitung==0)
{  
$hasil=mysqli_query($konek,"insert into tabelmonitoring(tanggal, waktu, url, name) values('$tanggal','$waktu','$url','$name')");
}
else
{
$hasil=mysqli_query($konek,"update tabelmonitoring set waktu='$waktu' where name='$name' and tanggal='$tanggal'");
} 
   
?>


<script>
//window.location="https://404.html";
</script>