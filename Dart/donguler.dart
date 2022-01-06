void main(List<String> args) {
  // for
  for (int i = 0; i < 10; i++) { // i başlangıç değerimiz. dışarıda da tanımlanabilir.
    if (i % 3 == 0) // Eğer if içerisinde tek satır olacaksa süslü parantez kullanmayabilirsiniz.
      print("$i sayısı 3'e bölünür.");
  }

  String s1 = "dart";
  List liste = [1, 2, 3, 4, 5, "$s1 ve flutter", "kelime", true];
  liste.add("halil ibrahim"); // "add" listeye eleman ekleme fonsiyonu
  for (var i in liste) { // listeyi gezmek amaçlı for da özel bir yapımız var -> (değişken) in list
    if (i == 3 || i == true)
      print(i);
  }

  for (int i = 0; i < liste.length; i ++) {
    print("liste elemanı: ${liste[i]}");
  }

  // while
  int x = 0;
  while (x < liste.length) { // length -> liste uzunluğu
    if (liste[x].runtimeType == String)
      print("liste elemanı olan \"${liste[x]}\" değeri bir String.");
      x++;
  }

  // do-while
  int start = 0;
  do {
    print("okunan: $start");
    start++;
  } while (start < 5);

  // continue
  for (int i = 0; i < 10; i++) {
    if (i == 3) // i eşit olduğu zaman üçe altındaki satırları okuma sıradaki elemana geç anlamı var.
      continue; // 3 yazılmayacak
    if (i == 8)
      break; // break komutu nereye yazılmışsa o döngüyü sonlandırmak üzere yazılır. 8 elemanı basılmadan işlem bitecek.
    print(i);
  }
}