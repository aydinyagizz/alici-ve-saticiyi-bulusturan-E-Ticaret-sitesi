
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






                <div class="settings-details tab-content">
                    <div class="tab-pane fade active in" id="Personal">
                        <h2 class="title-section">Ürünleriniz</h2>
                        <div class="personal-info inner-page-padding"> 

                            <table class="table table-striped">
                              <thead>
                                <tr>
                                  <th scope="col">#</th>
                                  <th scope="col">Ürün Eklenme Tarihi</th>
                                  <th scope="col">Ürün adı</th>
                                  <th scope="col"></th>
                                  <th scope="col"></th>
                              </tr>
                          </thead>
                          <tbody>

                            <?php 
                            $urunsor=$db->prepare("SELECT * FROM urun where kullanici_id=:kullanici_id order by urun_zaman DESC");
                            $urunsor->execute(array(
                                'kullanici_id' => $_SESSION['userkullanici_id']
                            ));

                            $say=0;

                            while($uruncek=$urunsor->fetch(PDO::FETCH_ASSOC)) { $say++?>
                            

                            <tr>
                              <th scope="row"><?php echo $say ?></th>
                              <td><?php echo $uruncek['urun_zaman'] ?></td>
                              <td><?php echo $uruncek['urun_ad'] ?></td>
                              <td><a href="urun-duzenle?urun_id=<?php echo $uruncek['urun_id'] ?>"><button class="btn btn-primary btn-xs">Düzenle</button></a></td>
                              <td>


                                <?php if ($uruncek['urun_durum']==0) {?>

                                <button class="btn btn-warning btn-xs">Onay Bekliyor</button>
                                 
                               <?php } else {?>


                                <a onclick="return confirm('Bu ürünü silmek istiyormusunuz? \n İşlem geri alınamaz...')" href="nedmin/netting/adminislem.php?urunsil=ok&urun_id=<?php echo $uruncek['urun_id'] ?>&urunfoto_resimyol=<?php echo $uruncek['urunfoto_resimyol'] ?>"><button class="btn btn-danger btn-xs">Sil</button></a>


                               <?php } ?>
                                


                              </td>
                          </tr>

                          <?php } ?>


                      </tbody>
                  </table>






















              </div> 
          </div> 



      </div> 


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