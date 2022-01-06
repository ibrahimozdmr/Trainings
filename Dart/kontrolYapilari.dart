import 'dart:math'; // dosya veya kütüpane eklemek için "import"

void main(List<String> args) {
  
  // if else -> Eğer bu olursa bu olsun, olmazsa bu olsun yapısı.
  int s1 = 15;
  int s2 = 30;
  if (s1 <= s2) {
    print("$s1 <= $s2");
  } else {
    print("$s2 <= s1");
  }

  // else if -> Alttaki örneği konuşuyorum. Eğer bu olursa bu, olmazsa bu, o da olmazsa bu olsun.
  if (s1 < s2) {
    print("$s1 < $s2");
  } else if(s1 > s2) {
    print("$s1 > $s2");
  } else {
    print("$s1 == $s2");
  }

  int s3 = Random().nextInt(100); // Rastgele sayılar için "random" fonksiyonu. "nextInt" fonksiyonu parantez içindeki sayıya kadar anlamında.
  if (s3 >= 60 && s1 < 100) { // && -> ve operatörü
    print("Öğrencimizin notu $s3 ve başarıyla geçti.");
  } else if (s3 >= 45 || s3 <60) { // || -> veya operatörü
    print("Öğrencimizin notu $s3 ve ortalama bir başarı ile geçti.");
  } else {
    print("Öğrencimizin notu $s3 ve başarı ile geçemedi!!!");
  }

  // ternary if -> ? :
  int s4 = 40;
  int atama;
  s4 > s3 ? atama = s4 : atama = s3;
  print("atama sonucu: $atama");

  int atama2 = s4 < s3 ? s4 : s3;
  print("atama sonucu: $atama2");

  var x;
  var y = 20;
  var deger = x ?? y; // ilk x e bakar boşsa yani null ise y ye bakar, y de değer varsa onu döndürür yoksa null döndürür.
  print("val: $deger");

  // switch, nested switch(switch içinde switch yapısı)
  int sayi1 = 30;
  String m1 = "bla";
  switch (sayi1) {
    case 5:
      print("sayi1: 5");
      break;
    case 10:
      print("sayi1: 10");break;
    case 20:
      print("sayi1: 20");
      break;
    case 30: {
      switch (m1) {
        case "bla":
          print("bla bla bla bla bla");
        }
    }
      print("sayi1: 30");
      break;
    default: // default kısmında break kullanmasakta olur.
      print("Değer aramızda değil...");
      break;
  }
}