void main(List<String> args) {
  num sayi1 = 54.5;
  num sayi2 = 65;

  if (sayi1 > sayi2) { // if yanına parantez içinde şart gelir. Eğer bu olursa bunu yap
    print("$sayi1 sayısı $sayi2 sayısından büyüktür.");
  } else { // eğer üstteki olmazsa bu kısmı yap
    print("$sayi2 sayısı $sayi1 sayısından küçüktür.");
  }

  sayi1 = 30; // değişkenleri en başta tanımlandıktan sonra tekrar değiştirebiliyorduk.
  sayi2 = 30;

  if (sayi1 < sayi2) { // ilk şart
    print("$sayi1 sayısı $sayi2 sayısından küçüktür.");
  } else if (sayi1 > sayi2) { // ikinci şart
    print("$sayi2 sayısı $sayi1 sayısından küçüktür.");
  } else { // şartların hiçbiri olmaz ise
    print("$sayi1 sayısı $sayi2 sayısına eşittir.");
  }

  int notDegeri = 68;

  if (notDegeri >= 85 && notDegeri <= 100) {
    print("Notunuz 5");
  } else if (notDegeri >= 70 && notDegeri < 85) {
    print("Notunuz 4");
  } else if (notDegeri >= 55 && notDegeri < 70) {
    print("Notunuz 3");
  } else if (notDegeri >= 45 && notDegeri < 55) {
    print("Notunuz 2");
  } else if (notDegeri >= 0 && notDegeri < 45){
    print("Notunuz 1");
  } else {
    print("Hatalı not girişi yapıldı.");
  }
}
