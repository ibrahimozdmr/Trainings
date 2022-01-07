// Değişken nedir ki dersek kodlar arasında sürekli tekrar eden şeyleri bir değere atama işlemi ve bellekte o değerde hafızada durması
void main(List<String> args) {
  // Dart dili kodlar arasında bir main parantezieri aramakta bu yüzden main kalıbının süslü parantezleri arasına yazmamız gerek
  print("Evin ekmeği");
  print("Evin kedisi");
  print("Evin koltukları");
  // gördüğünüz gibi "Evin" kelimesi 3 yerde kullanıldı. İleride geleceğiz bu örneğe

  /*
  VERİ TİPLERİ
    - Number
      - int -> Tam sayıları tutmakta
      - double -> ondalıklı sayıları tutmakta
      - num -> double ve int tipi için kullanılır
    - String -> Metinsel ifadeleri tutmakta
    - Boolean -> true/false değerlerini tutmakta
  */
  int okulNo = 5650; // tam sayılar için int
  double ortalama = 82.4; // ondalıklı sayılar için double
  num boyOlcusu = 43; // tam sayı ve ondalıklı sayılar için
  num boyOlcusu2 = 43.5;
  print("okulNo: $okulNo\tortalama: $ortalama\tboyOlcusu: $boyOlcusu\tboyOlcusu2: $boyOlcusu2"); 
  // Burada yeni bir şey öğrendik. "\" -> kaçış karakteri, "\n" -> alt satıra geçiyordu, "\t" -> yazıldığı yere bir tab boşluk bırakıyor

  String isim = "Halil İbrahim"; // metinsel ifadeler (çift tırnak veya tek tırnak arasında)
  String soyisim = ' ÖZDEMİR'; // soyisimden önce boşluk bırakılma sebebi altta isim soyisim kısmında
  print(isim + "'in yaşı");
  print("$isim adresi");
  print("${isim + soyisim} yazıları");
  
  bool kizMi = true;
  print("$isim cinsiyeti kız mı? => ${!kizMi}"); // yeni bir şey: değişkenin başına ünlem konursa tersi varsa tersini döndürür

  // en baştaki örnek
  String ev = "Evin"; // print içinde üç faklı şeklide kullanılabilir
  print("$ev ekmeği"); // başına dolar getirilirse, bir değişken için
  print("${ev} kedisi"); // bir çok değişken veya değiken ile farklı işlemler yapılacaksa, süslü parantez
  print(ev + " koltukları"); // dışarıda artı işareti ile kullanılabilir fakat türü aynı olmalı

  // Veri Tiplerini öğrendik fakat hepsi için bir tane "var" değişkeni kullanılabilir. İçeriğine hangi değer girilirse onun tipini alıyor
  var a = "İsmail Taha";
  var b = 32;
  var c = 3.14;
  var d = true;
  print("$a: String\n$b: int\n$c: double\n$d: bool"); 
  // burada yeni bir şey öğrenelim string içinde kod olarak tek satır yazılacaksa alt satıra geçmek için "\n" değeri kullabiliriz
}