<?php
session_start();


include"konekan.php";


//--------cek

date_default_timezone_set('Asia/Jakarta');

$tanggal=date('Y-m-d');

$kode=$_SESSION['kode'];

print"kode : $_SESSION[kode] asdf";

   
$hasil=mysqli_query($konek,"select * from tabelmonitoring where tanggal='$tanggal' and kode='$_SESSION[kode]'");
$hitung=mysqli_num_rows($hasil);

if($hitung > 0)
{
  print"ok kunci";
?>
<script>
//window.location="https://404.html";
</script>
<?php
}
else
{
  print"tidak";
}

?>
