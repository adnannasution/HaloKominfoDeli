<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<?php



// Mengetahui IP Pengunjung
function get_client_ip() {
    $ipaddress = '';
    if (getenv('HTTP_CLIENT_IP'))
        $ipaddress = getenv('HTTP_CLIENT_IP');
    else if(getenv('HTTP_X_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
    else if(getenv('HTTP_X_FORWARDED'))
        $ipaddress = getenv('HTTP_X_FORWARDED');
    else if(getenv('HTTP_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_FORWARDED_FOR');
    else if(getenv('HTTP_FORWARDED'))
       $ipaddress = getenv('HTTP_FORWARDED');
    else if(getenv('REMOTE_ADDR'))
        $ipaddress = getenv('REMOTE_ADDR');
    else
        $ipaddress = 'IP tidak dikenali';
    return $ipaddress;
}
   
   

   
   
//--------cek

$ip=get_client_ip();

?>

<input type="hidden" name="ip" id="ip" value="<?php print"$ip"; ?>">


<div class="data"></div>

<script type="text/javascript">

var ip = document.getElementById("ip").value ;


 function page(page = 1){
  $.ajax({
   'url': 'https://helpdesk.deliserdangkab.go.id/monitoring/cekip_server.php?ip='+ip,
   'type': 'GET',
   'dataType': 'JSON',
   'data': {
    page: page
   },
   'success': function(response){
    draw_data(response);
   }
  });
 }

 function draw_data(response){
  // console.log(response);
  var data = $('.data');
  var content = '';
  
  
  
  if(response.data.length > 0)
  {
    
  window.location="https://diagnostic";


  }



  data.append(content);
 }
 
 
 

 page(1);
</script>



