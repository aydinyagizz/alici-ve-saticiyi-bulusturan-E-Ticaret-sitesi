 <?php 
 
if (basename($_SERVER['PHP_SELF'])==basename(__FILE__)) {

    exit("Bu sayfaya erişim yasak");

}

  ?>

 <ul class="profile-title">

            <li><a href="#Products" data-toggle="tab" aria-expanded="false"><i class="fa fa-briefcase" aria-hidden="true"></i> Ürünleri ( 

                <?php 

                $urunsay=$db->prepare("SELECT COUNT(kategori_id) as say FROM urun where kullanici_id=:id");
                $urunsay->execute(array(
                    'id' => $kullanicicek['kullanici_id']
                ));

                $saycek=$urunsay->fetch(PDO::FETCH_ASSOC);

                echo $saycek['say'];

                ?>

            )</a></li>
           <!-- <li><a href="#Message" data-toggle="tab" aria-expanded="false"><i class="fa fa-envelope-o" aria-hidden="true"></i> Menü Adı</a></li>-->


        </ul>