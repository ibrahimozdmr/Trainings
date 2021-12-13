void main(List<String> args) {

  // INTEGER
  int sayi1 = 6; // sayi1 integer(int) yani tam sayı atadık.
  sayi1 = 8; // değişkeni istersek başka tam sayı ile değiştirebiliriz.
  sayi1 = 8.7.toInt(); // ondalıklı sayı atamaya çalıştık fakat hata aldığımız için int değerine dönüştürmemiz gerekti.
  print("sayi1: " + sayi1.toString()); // print, çıktıyı göstermeye yarıyor.
  int hexadecimal = 0xA; // hexadecimal sayılar için 0x ile başlaması gerekiyor.
  print("hexadecimal: " + hexadecimal.toString());

  // DOUBLE
  double sayi2 = 86.7; // double veri tipi ondalıklı sayıların karşılığıdır. Virgül yerine NOKTA
  sayi2 = 86; // tam sayı atarsak çıktısı ondalıklı sayı olacak. Sebebi üstte sayi2'nin türü double...
  print("sayi2: " + sayi2.toString());

  // NUMBER
  num sayi3 = 68.5; // num ise hem "int" hem de "double" atanabiliyor.
  sayi3 = 15;
  print("sayi3: " + sayi3.toString());

  // VAR
  var sayi4 = 12.3; // "var" veri tipi de her veri tipi atanabiliyor. Hangi tür atandıysa, o tür oluyor. sayi4 tipi double.
  print("sayi4 tipi: " + sayi4.runtimeType.toString() + "\nsayi4: " + sayi4.toString()); // runtimeType değişkenin tipini bastırır.

  var z; // değişkenin değeri atanmadan olabiliyor. Değeri null olmakta.
  print("z: " + z.toString());
  z = 17;
  print("z: " + z.toString());

  // BOOLEAN
  bool dogruMu = true; // true yada false değeri alır.
  bool yetiskinMi = false;

  // STRING
  String ad = "Halil";
  String kitap = 'İbrahim\'in kitabı'; // tırnaklar içerisinde engel olan bir şey varsa önüne ters eğik çizgi konularak özel bir şey değil anlamına getirilebilir
  print(ad + " " + kitap + " çok güzel. :D");

  // INTERPOLATION
  var bolum = "bilgisayar mühendisliği";
  print("$ad İbrahim ${bolum} okuyor."); // string içersinde dışarıdan değişken çağırma işlemi
  print(ad + " İbrahim " + bolum + " okuyor.");
  int en = 6;
  int boy = 8;
  print("eni $en ve boyu $boy olan bir parçanın alanı ${en * boy} olur."); // süslü parantezler çoklu işlem için gerekli
  print("\"ad\" değişkeninin uzunluğu: ${ad.length}");

  // FINAL VE CONSTANT
  final sehir = "İstanbul"; // final değişkeni tanımlandığında print te yazdırına kadar bellekte yer ayrılmıyor.
  const sayi = 3; // yazdırsakta yazdırmasakta bellekte yer ayrılıyor.
  // final ve const değişmeyen türler.
  
}