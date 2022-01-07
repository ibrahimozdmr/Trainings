void main(List<String> args) {
  // örnek olarak not sistemini ele alalım.
  int not = 4; // not sonucu hangi aralıkta olduğuna bakalım

  switch (not) {
    case 5:
      print("Notunuz 85 ile 100 arasında");
      break;
    case 4:
      print("Notunuz 70 ile 85 arasında");
      break;
    case 3:
      print("Notunuz 55 ile 70 arasında");
      break;
    case 2:
      print("Notunuz 45 ile 55 arasında");
      break;
    case 1:
      print("Notunuz 0 ile 45 arasında");
      break;
    default:
      print("Hatalı not girişi ypaıldı.");
      break;
  }

  /*
  // Switch yapısında double değer yani ondalıklı sayılar kullanılmıyor. Hata veriyor.
  var kilo = 75.6;
  switch (kilo) {
    case 18.5:
      print("kilo 20'den az");
      break;
  }
  */

  int sayi = 34;
  int bolum = sayi ~/
      10; // burada yeni bir şey öğrendik bölüm sonucunu bulmak için "~/" operatörünü kullanırız.

  switch (bolum) {
    case 5:
      print("Sayı 50'den büyüktür");
      break;
    case 4:
      print("Sayı 40'tan büyüktür");
      break;
    case 3:
      print("Sayı 30'dan büyüktür");
      break;
    case 2:
      print("Sayi 20'den büyüktür");
      break;
    case 1:
      print("Sayı 10'dan büyüktür");
      break;
    case 0:
      print("Sayi 10'dan küçüktür");
      break;
    default:
      print("Girilen sayı 60'tan büyüktür");
  }
}
