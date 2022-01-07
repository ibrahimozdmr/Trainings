// Ternary => ?: soru işareti iki nokta üst üste.
// Şart ? (doğruysa olacak şey) : (yanlışsa olacak şey)

import 'dart:io';
void main(List<String> args) {
  int sayi1 = 9;
  int sayi2 = 5;
  int kucukSayi;

  if (sayi2 < sayi1) {
    print("sayi2($sayi2), sayi1($sayi1)'den küçüktür.");
  } else {
    print("sayi1($sayi1), sayi2($sayi2)'den büyüktür veya eşittir.");
  }

  // Ternary
  kucukSayi = sayi2 < sayi1 ? sayi2 : sayi1;
  // sayi2 < sayi1 ? kucukSayi = sayi2 : kucukSayi = sayi1;     // Bu şekilde de yazılabilir.
  print("Küçük sayı: $kucukSayi");

  String? mesaj = null;
  String? varsayilan = "'Mesaj yok'";
  String? sonuc;

  sonuc = mesaj ?? varsayilan; // Burada "mesaj" değişkeni null ise "varsayilan" değerini "sonuc" değişkenine ata anlamında kullanılıyor 2 soru işareti
  print("mesaj: $sonuc");
}
