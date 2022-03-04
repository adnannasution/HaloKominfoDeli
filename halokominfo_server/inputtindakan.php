<?php
ini_set('display_errors', '0');

include"konek.php";

date_default_timezone_set('Asia/Jakarta');

$idteknisi=$_POST['idteknisi'];
$idmasalah=$_POST['idmasalahok'];
$status=$_POST['status'];
$ket=$_POST['ket'];

$tanggaltindakan=date('Y-m-d');
$waktutindakan=date('H:i');

$tindakan=$_POST['tindakan'];





//--------input history
$hasilmu=mysqli_query($konek,"insert into tabelmasalahok(idmasalah, tanggal, waktu, status) values('$idmasalah','$tanggaltindakan','$waktutindakan','$status')");
//--------------





//-------------selisih waktu

$hasil3=mysqli_query($konek,"select * from tabelmasalah where idmasalah='$idmasalah'");
$data3=mysqli_fetch_array($hasil3);

		$waktu_awal=strtotime("$data3[tanggalmasalah] $data3[waktumasalah]");
        $waktu_akhir=strtotime("$tanggaltindakan $waktutindakan"); 
		
	
        
        //menghitung selisih dengan hasil detik
        $diff    =$waktu_akhir - $waktu_awal;
        
        //membagi detik menjadi jam
        $jam    =floor($diff / (60 * 60));
        
        //membagi sisa detik setelah dikurangi $jam menjadi menit
        $menit    =$diff - $jam * (60 * 60);

 		
		
		$menit=floor($menit/60);
		$lama="$jam.$menit";
		
//-----------

if($status=='selesai perbaikan')
{
$hasil2=mysqli_query($konek,"update tabelmasalah set status='$status', ket='$ket',  lama='$lama' where idmasalah='$idmasalah'");

include"smscus.php";

}
else
{
$hasil2=mysqli_query($konek,"update tabelmasalah set status='$status', ket='$ket' where idmasalah='$idmasalah'");		
}



$hasil3=mysqli_query($konek,"update tabelteknisi set kondisi='$status' where idteknisi='$idteknisi'");	
		
//-----------		


$tampilutusan=mysqli_query($konek,"select * from tabelutusan where idmasalah='$idmasalah'");
while($dataku=mysqli_fetch_array($tampilutusan))
{
$hasilteknisiku=mysqli_query($konek,"update tabelteknisi set kondisi='$status' where idteknisi='$dataku[idteknisi]'");	
}








$arr = array("berhasil" => "input data sukses");

echo json_encode($arr);
?>