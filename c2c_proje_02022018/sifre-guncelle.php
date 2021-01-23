
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
                <strong>Hata!</strong> İşlem Başarısız
            </div>                   
            
            <?php } else if ($_GET['durum']=="ok") {?>

            <div class="alert alert-success">
                <strong>Bilgi!</strong> İşlem Başarılı
            </div>                   
            
            <?php }  else if ($_GET['durum']=="eskisifrehata") {?>

            <div class="alert alert-danger">
                <strong>Bilgi!</strong> Eski Şifreniz Hatalı
            </div>                   
            
            <?php } else if ($_GET['durum']=="sifreleruyusmuyor") {?>

            <div class="alert alert-danger">
                <strong>Bilgi!</strong> Şifreler Uyuşmuyor
            </div>                   
            
            <?php } else if ($_GET['durum']=="eksiksifre") {?>

            <div class="alert alert-danger">
                <strong>Bilgi!</strong> Şifreniz En Az 6 Karakter Olmalı!
            </div>                   
            
            <?php }
            ?>


            <form action="nedmin/netting/kullanici.php" method="POST" class="form-horizontal" id="personal-info-form">
                <div class="settings-details tab-content">
                    <div class="tab-pane fade active in" id="Personal">
                        <h2 class="title-section">Şifre Güncelleme</h2>
                        <div class="personal-info inner-page-padding"> 


                       


                        <div class="form-group">
                            <label class="col-sm-3 control-label">Eski Şifrenizi Giriniz</label>
                            <div class="col-sm-9">
                                <input class="form-control" id="first-name" name="kullanici_eskipassword" placeholder="Eski Şifrenizi Giriniz" type="password">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-3 control-label">Şifreniz</label>
                            <div class="col-sm-9">
                                <input class="form-control" id="first-name" name="kullanici_passwordone" placeholder="Şifrenizi Giriniz" type="password">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">Şifreniz Tekrar</label>
                            <div class="col-sm-9">
                                <input class="form-control" id="first-name" name="kullanici_passwordtwo" placeholder="Şifrenizi Tekrar Giriniz" type="password">
                            </div>
                        </div>


                        <div class="form-group">

                            <div align="right" class="col-sm-12">
                               <button class="update-btn" name="musterisifreguncelle" id="login-update">Şifre Güncelle</button>

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