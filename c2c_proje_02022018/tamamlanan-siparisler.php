
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
            <h2 class="title-section">Yeni Siparişler</h2>
            <div class="personal-info inner-page-padding"> 

              <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Tarih</th>
                    <th scope="col">Sipariş No</th>
                    <th scope="col">Ürün Ad</th>
                    <th scope="col">Ürün Fiyat</th>
                    <th scope="col">Durum</th>
                  </tr>
                </thead>
                <tbody>

                  <?php 
                  $siparissor=$db->prepare("SELECT siparis.*,siparis_detay.*,kullanici.*,urun.* FROM siparis INNER JOIN siparis_detay ON siparis.siparis_id=siparis_detay.siparis_id INNER JOIN kullanici ON kullanici.kullanici_id=siparis_detay.kullanici_idsatici INNER JOIN urun ON urun.urun_id=siparis_detay.urun_id where siparis.kullanici_idsatici=:kullanici_idsatici and siparis_detay.siparisdetay_onay=:onay  order by siparis_zaman DESC");

                  $siparissor->execute(array(
                    'kullanici_idsatici' => $_SESSION['userkullanici_id'],
                    'onay' => 2
                   
                  ));



                  while($sipariscek=$siparissor->fetch(PDO::FETCH_ASSOC)) { $say++?>


                  <tr>
                    <th scope="row"><?php echo $say ?></th>
                    <td><?php echo $sipariscek['siparis_zaman'] ?></td>
                    <td><?php echo $sipariscek['siparis_id'] ?></td>
                    <td><?php echo $sipariscek['urun_ad'] ?></td>
                    <td><?php echo $sipariscek['urun_fiyat'] ?></td>
                    <td><?php 

                    if ($sipariscek['siparisdetay_onay']==0) {?>

                    <a onclick="return confirm('Ürünü Teslim Ediyorsunuz Bu İşlem Geri Alınamaz');" href="nedmin/netting/kullanici.php?urunteslim=ok&siparisdetay_id=<?php echo $sipariscek['siparisdetay_id'] ?>&siparis_id=<?php echo $sipariscek['siparis_id'] ?>"><button class="btn btn-warning btn-xs"> Teslim Et</button></a>

                   
                    <?php  } else if ($sipariscek['siparisdetay_onay']==1) {?>

                    <button class="btn btn-success btn-xs"> Alıcıdan Onay Bekliyor</button>


                    <?php  }

                    ?>

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