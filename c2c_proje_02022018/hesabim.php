
<?php 

require_once 'header.php'; 

islemkontrol();

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
                <strong>Hata!</strong> İşlem Başarısı
            </div>                   
            
            <?php } else if ($_GET['durum']=="ok") {?>

            <div class="alert alert-success">
                <strong>Bilgi!</strong> Kayıt Başarılı
            </div>                   
            
            <?php }
            ?>


            <form action="nedmin/netting/kullanici.php" method="POST" class="form-horizontal" id="personal-info-form">
                <div class="settings-details tab-content">
                    <div class="tab-pane fade active in" id="Personal">
                        <h2 class="title-section">Hesap Bilgilerimi Düzenle</h2>
                        <div class="personal-info inner-page-padding"> 


                         <div class="form-group">
                            <label class="col-sm-3 control-label">Kayıtlı Mail (Değiştiremezsiniz)</label>
                            <div class="col-sm-9">
                                <input class="form-control" disabled="" id="first-name" value="<?php echo $kullanicicek['kullanici_mail'] ?>" type="text">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-3 control-label">Ad</label>
                            <div class="col-sm-9">
                                <input class="form-control" id="first-name" name="kullanici_ad" value="<?php echo $kullanicicek['kullanici_ad'] ?>" type="text">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-3 control-label">Soyad</label>
                            <div class="col-sm-9">
                                <input class="form-control" name="kullanici_soyad" value="<?php echo $kullanicicek['kullanici_soyad'] ?>"  id="last-name" type="text">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-3 control-label">Telefon GSM</label>
                            <div class="col-sm-9">
                                <input class="form-control" name="kullanici_gsm" value="<?php echo $kullanicicek['kullanici_gsm'] ?>" id="company-name" type="text">
                            </div>
                        </div>



                        <div class="form-group">

                            <div align="right" class="col-sm-12">
                               <button class="update-btn" name="musteribilgiguncelle" id="login-update">Bilgileri Güncelle</button>

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