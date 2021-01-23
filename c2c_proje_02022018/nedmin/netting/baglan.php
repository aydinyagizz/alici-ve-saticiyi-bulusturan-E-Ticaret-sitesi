<?php 


try {



	$db=new PDO("mysql:host=localhost;dbname=database;charset=utf8",'root','pass');

	//echo "veritabanı bağlantısı başarılı";

}



catch (PDOExpception $e) {



	echo $e->getMessage();

}



 ?>