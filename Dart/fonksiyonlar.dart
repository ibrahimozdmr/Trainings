void main(List<String> args) {
  azalt();

  print("3 + 4 = " + toplam(3, 4).toString());

  int s4 = uygula(art, 10);
  print(s4);
  
  print("eni 3 boyu 4 metre olan halının alanı ${alan(3, 4)} metrekaredir.");
  print("eni 3 boyu 4 derinliği 5 olan buzdolabının hacmi ${hacim(3, 4, 5)} metreküptür.");
  print(faktoriyel(4));
  print(faktoriyel2(4));

  buclariYaz("Oğlak");
  buclariYaz("Kova", "Oğlak");
  buclariYaz("Kova", "Oğlak", "Balık", "İkizler");
  
  kekMalzeme("un", "yumurta", m4: "süt", m3: "şeker");

  int sayi1 = 12;
  int y = 0;
  int sonuc;
  try {
    sonuc = s4 ~/ y;
  } on IntegerDivisionByZeroException { // bunu bilmiyorum. vsCode da üzerini çiziyor???
    print("'0'a bölemem");
  } finally {
    print("işlem bitti\n");
  }
  try {
    isimYas("halil", -1);
  } catch(e, s) {
    print("Hata : $e"); // 93. satrdaki hata() fonksiyonunu ${e.hata()} şeklinde kullanıyor eğitimde fakat şuan hata veriyor???
  }
}

int art(int s3) { // fonksiyon, veri tipi + ismi + (varsa) parametreleri
  return ++s3;
}

void azalt() {
  int s1 = 10;
  print(--s1);
}

num toplam(num a, b) {
  return a + b;
}

int uygula(Function f, int s2) {
  return f(s2);
}

int alan(int en, int boy) {
  return en * boy;
}

int hacim(int en, int boy, int derinlik) => en * boy * derinlik; 
// "=>" bu işaretin anlamı fonksiyon içerisinde tek satır varsa, fonksiyonu tek satır için fazla yer kaplamasın anlamında işlem yapıyor.

int faktoriyel(int s1) {
  if (s1 == 0 || s1 == 1)
    return 1;
  else
    return s1 * faktoriyel(s1 - 1);
}
int faktoriyel2(int s1) => s1 == 0 || s1 == 1 ? 1 : s1 * faktoriyel(s1 - 1);

void buclariYaz(String? burc1, [String? burc2, String? burc3, String? burc4]) {
  // fonkisyonda parametreler köşeli parantez içine alınırsa girilmeyebilir anlamı vardır.
  // sadece ilk paramtre dışarıda olduğu için o girilmesi gerekmektedir. Fakat 4 parametre var daha fazla tanımlarsak hata ile karşılaşacağız
  if (burc1 != null) print("burc1: $burc1");
  if (burc2 != null) print("burc2: $burc2");
  if (burc3 != null) print("burc3: $burc3");
  if (burc4 != null) print("burc4: $burc4");
  print("");
}

void kekMalzeme(String m1, String m2, {String? m3, String? m4}) {
  var malzemeListe = List.of({m1, m2, m3, m4});
  malzemeListe.forEach((String? i) => print("Kekimizde $i var"));
  print("");
}

void isimYas(String isim, int yas) {
  if (yas <= 0 || isim == null) {
    throw new isimYasException();
  } else {
    print("İsminiz: $isim, yaşınız: $yas");
  }
}
class isimYasException implements Exception {
  String hata() => "eksik yada hatalı giriş";
}