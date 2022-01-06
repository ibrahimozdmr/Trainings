/* SORULAR
1- Adınızı, soyadınızı ve yaşınızı farklı değişkenlerde saklayıp, ekrana
"Benim adım Halil İbrahim ÖZDEMİR, yaşım 22 ve tüm ismimdeki karakter sayısı : 20'dur." yazdırın.

2- Bir üçgenin tüm kenarlarını değişkenlerde saklayıp çevresini ekrana yazdırın.
Örnek; "birinci kenarı 3, ikinci kenarı 4, üçüncü kemarı 5 olan üçgenin çevresi 12'dir.""
*/

void main(List<String> args) {
  // CEVAPLAR
  // 1
  var isim = "Halil İbrahim";
  String soyisim = "ÖZDEMİR";
  var yas = 22;
  print("Benim adım $isim $soyisim, yaşım $yas ve tüm ismimdeki karakter sayısı: ${(isim + soyisim).length}");

  // 2
  var birinciKenar = 3;
  var ikinciKenar = 4;
  var ucuncuKenar = 5;
  print("Birinci kenar $birinciKenar, ikinci kenar $ikinciKenar, üçüncü kenar $ucuncuKenar olan üçgenin çevresi ${birinciKenar + ikinciKenar + ucuncuKenar}'dir.");
}
