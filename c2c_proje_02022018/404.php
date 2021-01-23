<?php 
require_once 'header.php' 

?>
          <?php require_once 'search.php' ?>
                      <!-- Inner Page Banner Area Start Here -->
            <div class="pagination-area bg-secondary">
                <div class="container">
                    <div class="pagination-wrapper">
                       
                    </div>
                </div>  
            </div> 
            <!-- Inner Page Banner Area End Here -->          
            <!-- Page Error Area Start Here -->
            <div class="page-error-area bg-secondary section-space-bottom">
                <div class="container">
                    <h2 class="title-section">Hata!</h2>
                    <div class="page-error-top">
                        <img src="img\404.png" alt="404" class="img-responsive">
                        <p>Üzgünüm! Aradığınız sayfayı bulamadım.</p>
                        <div class="page-error-bottom">
                            <p>Aradığınız sayfa silinmiş yada yayından kaldırılmış olabilir!</p>
                            <p>Lütfen üst kısımdan arama yaparak deneyiniz.</p>
                            <a href="/" class="default-btn">Anasayfa</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Error Area End Here -->
            <!-- Footer Area Start Here -->
            <?php require_once 'footer.php' ?>