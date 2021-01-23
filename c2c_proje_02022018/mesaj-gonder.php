
<?php 

require_once 'header.php'; 

islemkontrol();

$kullanicisor=$db->prepare("SELECT * FROM kullanici where kullanici_id=:id");
$kullanicisor->execute(array(
  'id' => $_GET['kullanici_gel']
));

$kullanicicek=$kullanicisor->fetch(PDO::FETCH_ASSOC);

?>



<!-- Header Area End Here -->

<!-- Inner Page Banner Area Start Here -->
<div class="pagination-area bg-secondary">
    <div class="container">
        <div class="pagination-wrapper">

        </div>
    </div>  
</div> 
<!-- Inner Page Banner Area End Here -->          
<!-- Settings Page Start Here -->
<div class="settings-page-area bg-secondary section-space-bottom">
    <div class="container">



        <div class="row settings-wrapper">


            <?php require_once 'hesap-sidebar.php' ?>


            <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12"> 

               <?php 

               if ($_GET['durum']=="hata") {?>

               <div class="alert alert-danger">
                <strong>Hata!</strong> İşlem Başarısız
            </div>                   
            
            <?php } else if ($_GET['durum']=="ok") {?>

            <div class="alert alert-success">
                <strong>Bilgi!</strong> Mesajınız Başarıyla Gönderildi
            </div>                   
            
            <?php }
            ?>


            <form action="nedmin/netting/kullanici.php" method="POST" enctype="multipart/form-data" class="form-horizontal" id="personal-info-form">


                <div class="settings-details tab-content">
                    <div class="tab-pane fade active in" id="Personal">
                        <h2 class="title-section">Mesaj Gönderme İşlemleri</h2>
                        <div class="personal-info inner-page-padding"> 



                              <div class="form-group">
                                    <label class="col-sm-3 control-label">Gönderilen Kullanıcı</label>
                                    <div class="col-sm-9">
                                        <input disabled="" class="form-control" required="" name="urun_ad" id="first-name" value="<?php echo $kullanicicek['kullanici_ad']." ".$kullanicicek['kullanici_soyad'] ?>" type="text">
                                    </div>
                                </div>



                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Mesajınız</label>
                                    <div class="col-sm-9">

                                        <textarea  class="ckeditor" id="editor1" name="mesaj_detay" placeholder="Ürün Açıklaması..."></textarea>
                                    </div>
                                </div>

                                <script type="text/javascript">

                                   CKEDITOR.replace( 'editor1',

                                   {

                                      filebrowserBrowseUrl : 'ckfinder/ckfinder.html',

                                      filebrowserImageBrowseUrl : 'ckfinder/ckfinder.html?type=Images',

                                      filebrowserFlashBrowseUrl : 'ckfinder/ckfinder.html?type=Flash',

                                      filebrowserUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',

                                      filebrowserImageUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',

                                      filebrowserFlashUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',

                                      forcePasteAsPlainText: true

                                  } 

                                  );

                              </script>

                              <input type="hidden" name="kullanici_gel" value="<?php echo $_GET['kullanici_gel'] ?>">






                              <div class="form-group">

                                <div align="right" class="col-sm-12">
                                 <button class="update-btn" name="mesajgonder" id="login-update">Mesaj Gönder</button>

                             </div>
                         </div>        


                                                         
                     </div> 
                 </div> 



             </div> 

         </form> 
     </div>  
 </div>  
</div>  
</div> 
<!-- Settings Page End Here -->


<?php require_once 'footer.php'; ?>

<script type="text/javascript">

    $(document).ready(function(){


        $("#kullanici_tip").change(function(){


            var tip=$("#kullanici_tip").val();

            if (tip=="PERSONAL") {


                $("#kurumsal").hide();
                $("#tc").show();



            } else if (tip=="PRIVATE_COMPANY") {

                $("#kurumsal").show();
                $("#tc").hide();

            }


        }).change();



    });

</script>