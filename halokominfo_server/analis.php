<?php
session_start();

unset($_SESSION['bintang1']);
unset($_SESSION['bintang2']);
unset($_SESSION['bintang3']);
unset($_SESSION['bintang4']);
unset($_SESSION['bintang5']);

include"konek.php";


$response = array('data'=>array());

$idteknisi=$_GET['id'];

$hasilok=mysqli_query($konek,"select * from tabelutusan where idteknisi='$idteknisi'");

$jumlahkasus=mysqli_num_rows($hasilok);



while($dataok=mysqli_fetch_array($hasilok))
{





$hasil6=mysqli_query($konek,"select * from tabelmasalah where idmasalah='$dataok[idmasalah]' and jumlahrating='1'");
$data1=mysqli_num_rows($hasil6);

$_SESSION['bintang1']=$_SESSION['bintang1']+$data1;


$hasil7=mysqli_query($konek,"select * from tabelmasalah where idmasalah='$dataok[idmasalah]' and jumlahrating='2'");
$data2=mysqli_num_rows($hasil7);

$_SESSION['bintang2']=$_SESSION['bintang2']+$data2;

$hasil8=mysqli_query($konek,"select * from tabelmasalah where idmasalah='$dataok[idmasalah]' and jumlahrating='3'");
$data3=mysqli_num_rows($hasil8);

$_SESSION['bintang3']=$_SESSION['bintang3']+$data3;

$hasil9=mysqli_query($konek,"select * from tabelmasalah where idmasalah='$dataok[idmasalah]' and jumlahrating='4'");
$data4=mysqli_num_rows($hasil9);

$_SESSION['bintang4']=$_SESSION['bintang4']+$data4;

$hasil99=mysqli_query($konek,"select * from tabelmasalah where idmasalah='$dataok[idmasalah]' and jumlahrating='5'");
$data5=mysqli_num_rows($hasil99);

$_SESSION['bintang5']=$_SESSION['bintang5']+$data5;

}





 $jumlahkasus = $jumlahkasus;
  $bintang1 = $_SESSION['bintang1'];
   $bintang2 = $_SESSION['bintang2'];
    $bintang3 = $_SESSION['bintang3'];
     $bintang4 = $_SESSION['bintang4'];
      $bintang5 = $_SESSION['bintang5'];
  

$jumlahrating=($bintang1*1)+($bintang2*2)+($bintang3*3)+($bintang4*4)+($bintang5*5);	  
	 

array_push($response['data'], array('jumlahkasus'=>$jumlahkasus, 'bintang1'=>$bintang1, 'bintang2'=>$bintang2,  'bintang3'=>$bintang3, 'bintang4'=>$bintang4, 'bintang5'=>$bintang5, 'jumlahrating'=>$jumlahrating));
 



 echo json_encode($response);

?>

