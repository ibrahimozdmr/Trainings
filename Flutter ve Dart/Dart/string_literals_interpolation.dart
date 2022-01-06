void main(List<String> args) {
  // Literal, türü ile beraber bir değişkenin atanması. Her değişken bir literal. Misal;
  // int sayi = 5;
  // String yazi = "Halil";
  // var deger = 43.4;
  // Bunların hepsi birer literal'dir. Literals denmesi birden fazla olduğu için

  String ad = "Hakan"; // String tipini görmüştük fakat burada tekrar amaçlı yapıyoruz 
  var soyad = 'Kale'; // var türünde de atanabiliyordu
  var kurs = 'Dart\'ı öğreniyorum.'; // ters eğik çizginin anlamı escape karakteri diye geçiyor
  String kursTanimi = "Dart ile Flutter'ı öğreneceğiz"; // tek tırnak yazıları escape karakteri olmadan kullanmak için çift tırnak

  print(ad + " " + soyad);
  print("$ad $soyad"); // interpolation ne dersek tek tırnak içinde dışarıdan değişken çağırmak veya tırnak içinde işlem yapmak
  print("Soyad olan $soyad'de bulunan karakter sayısı: " + soyad.length.toString());
  // length bir şeyin uzunluğunu buluyor. toString() ise string tipine dönüştürmek için
  print("ad değişkenin($ad) karakter sayısı: ${ad.length}"); // ad.length sonuna toString gelmeme sebebi tırnak içerisinde olduğu için

  double en = 10;
  double boy = 12;
  print("Eni $en, boyu $boy olan diktörtgenin alanı ${en * boy}'dir."); // en boy çarpımını böyle yazabiliyorduk
  print("Eni ${en.toInt()}, boyu ${boy.toInt()} olan diktörgenin alanı ${(en * boy).toInt()}"); // toInt() ise int tipine dönüştürüyor
}
