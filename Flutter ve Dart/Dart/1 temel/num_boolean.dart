void main(List<String> args) {
  int yas = 21;
  print("yas: $yas");
  yas = 44; // değişkenler aynı türde değeri değiştirilebilir
  print("yas: $yas");
  num yil = 2005; // num değeri tam sayı ve ondalıklı sayı değerleri alıyordu
  print("yil: $yil");

  double sayi = 54;
  print("sayi: $sayi");

  int kilo = 73.4.toInt(); // Yeni bir şey... -> toInt()
  // Ondalıklı sayıyı tam sayıya çevirmek için toInt() değerini sona getirdiğimiz zaman tam kısmını alıyor yuvalama işlemi olmuyor.
  print("kilo: $kilo");

  var kilo2 = 34.5; // var tipi değeri ne olursa ilk atandığı değerin tipini alıyor
  var sayi2 = 34;
  print("kilo2: $kilo2\nsayi2: $sayi2");

  int numara; // yeni bir şey farklı bir tanımlama...
  numara = 5555555555;
  print("numara: $numara");

  int? sayi3 = null; // değer atamadığımız zaman null değeri yani türkçede boş anlamında değerini atamak için tipin sonuna soru işareti
  print("sayi3: $sayi3");
  int? sayi4; // null değeri atamadığımız zamanda da kendisi atıyor null değerini
  print("sayi4: $sayi4");

  // tam sayı kısmına hexadecimal tipinde değer de atanabilir
  int hexaDecimalSayi = 0xF; // hexadecimal demek onaltılı sayı sistemi demek. Her basamak 0'dan 15'e kadar değer alıyor.
  print("hexaDecimalSayi: $hexaDecimalSayi");
}