<?php
error_reporting(0);

include"konek.php";


$cari=$_POST['cari'];

 $response = array('paging'=>array(), 'data'=>array());

 // set page
 $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

 // data akan di tampilkan 10 baris perhalaman
 $perpage = 10;

 // metentukan offset
 // offset sendiri menentukan data yang akan di lewati setiap baris
 $limit = ($page - 1) * $perpage;

 // set query
 $sql = "select * from tabelmasalah join tabelopd on tabelmasalah.idopd=tabelopd.idopd  where status='selesai perbaikan' and masalah like '%$cari%'";

 // menentukan jumlah data yang ada di table users
 $rs = mysqli_query($konek, $sql);
 $record = mysqli_num_rows($rs);

 // menentukan total paging
 $total_page = ceil($record / $perpage);

 // memecah data berdasarkan :
 // $limit : data awal yang akan di lewati
 // $perpage : jumlah data yang akan di tampilkan
 $sql .= ' LIMIT '.$limit.','.$perpage;
 $rs = mysqli_query($konek, $sql);

 $response['paging'] = array(
  'page'=>$page,
  'perpage'=>$perpage,
  'total_page'=>$total_page
 );

 while($row = mysqli_fetch_array($rs)){
  
  $idmasalah = $row['idmasalah'];
  $masalah = $row['masalah'];
    $masalah=substr($masalah, 0, 80);
  $opd = $row['opd'];
   $tanggalmasalah = $row['tanggalmasalah'];
    $waktumasalah = $row['waktumasalah'];  
  
  array_push($response['data'], array('idmasalah'=>$idmasalah, 'masalah'=>$masalah, 'opd'=>$opd, 'tanggalmasalah'=>$tanggalmasalah, 'waktumasalah'=>$waktumasalah));
    
 }




// echo json_encode($response);
 
 
 if($sql)
 {
 $arr = array("berhasil" => "input data sukses");
 }
 echo json_encode($arr);

?>
