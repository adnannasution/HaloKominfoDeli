<?php
include"konek.php";

$hasil=mysqli_query($konek,"update tabelmasalah set dibaca='sudah' where dibaca=''");

?>