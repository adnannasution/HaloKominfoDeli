<?php
include"konek.php";

$rating=$_POST['rating-input'];
$idmasalah=$_POST['idmasalahok'];


if($rating=='1')
{
$bintang='<img style="width:15%" src="rating/bintang.png">';
}
else if($rating=='2')
{
$bintang='<img style="width:15%" src="rating/bintang.png"><img style="width:15%" src="rating/bintang.png">';
}

else if($rating=='3')
{
$bintang='<img style="width:15%" src="rating/bintang.png"><img style="width:15%" src="rating/bintang.png"><img style="width:15%" src="rating/bintang.png">';
}

else if($rating=='4')
{
$bintang='<img style="width:15%" src="rating/bintang.png"><img style="width:15%" src="rating/bintang.png"><img style="width:15%" src="rating/bintang.png"><img style="width:15%" src="rating/bintang.png">';
}

else if($rating=='5')
{
$bintang='<img style="width:15%" src="rating/bintang.png"><img style="width:15%" src="rating/bintang.png"><img style="width:15%" src="rating/bintang.png"><img style="width:15%" src="rating/bintang.png"><img style="width:15%" src="rating/bintang.png">';
}



$hasil=mysqli_query($konek,"update tabelmasalah set rating='$bintang', jumlahrating='$rating' where idmasalah='$idmasalah'");

if($rating > 0)
{
$arr = array("berhasil" => "input data sukses");
}
else
{
$arr = array("kosong" => "input data gagal");
}
echo json_encode($arr);
?>