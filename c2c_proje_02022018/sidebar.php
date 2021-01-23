<?php 
if (basename($_SERVER['PHP_SELF'])==basename(__FILE__)) {

    exit("Bu sayfaya erişim yasak");

}
 ?>


<div class="fox-sidebar">
    <div class="sidebar-item">
        <div class="sidebar-item-inner">
            <h3 class="sidebar-item-title">Kategoriler</h3>
            <ul class="sidebar-categories-list">

             <?php 

             $kategorisor=$db->prepare("SELECT * FROM kategori where kategori_durum=:durum order by kategori_sira ASC");
             $kategorisor->execute(array(
                'durum' => 1
            ));

             while($kategoricek=$kategorisor->fetch(PDO::FETCH_ASSOC)) { 

                $kategori_id=$kategoricek['kategori_id'];
                ?>


                <li><a href="kategoriler-<?=seo($kategoricek['kategori_ad'])."-".$kategoricek['kategori_id'] ?>"><?php echo $kategoricek['kategori_ad'] ?><span>(

                    <?php 

                    $urunsay=$db->prepare("SELECT COUNT(kategori_id) as say FROM urun where kategori_id=:id");
                    $urunsay->execute(array(
                        'id' => $kategori_id
                    ));

                    $saycek=$urunsay->fetch(PDO::FETCH_ASSOC);

                    echo $saycek['say'];

                    ?>

                )</span></a></li>

                <?php } ?>
            </ul>
        </div>
    </div>
    <!--<div class="sidebar-item">
        <div class="sidebar-item-inner">
            <h3 class="sidebar-item-title">Fiyat Aralığı</h3>
            <div id="price-range-wrapper" class="price-range-wrapper">
                <div id="price-range-filter"></div>
                <div class="price-range-select">
                    <div class="price-range" id="price-range-min"></div>
                    <div class="price-range" id="price-range-max"></div>
                </div>
                <button class="sidebar-full-width-btn disabled" type="submit" value="Login"><i class="fa fa-search" aria-hidden="true"></i>Search</button>
            </div>
        </div>
    </div>-->


</div>
