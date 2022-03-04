<?php
error_reporting(0);

include"konek.php";

$opd=$_POST['opd'];


//-----------------



if($opd=='')

{
    $arr = array("kosong" => "Mohon tunggu sebentar");
}


else
{
$hasil=mysqli_query($konek,"insert into tabelopd(opd) values('$opd')");

 $arr = array("berhasil" => "Mohon tunggu sebentar");

}


echo json_encode($arr);

?>