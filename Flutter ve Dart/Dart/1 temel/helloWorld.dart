void main(List<String> args) {
  // Tekli yorum satırı ile başlayalım. Yorum satırları, dosya çalıştırılırken atlanacak kısımlar. Burayı program çalıştırmıyor

  /*
  Çok satırlı yorum
  */

  // Yorum kısmı bitti. Şimdi gelelim dosyaları konsolda (yani cmd de) çalıştıracağımız için konsola çıktı vermemiz gerek.
  // Bunu print() fonksiyonu ile yapıyoruz.
  print("Halil İbrahim"); // Çift tırnak ve tek tırnak kullanılabiliyor.
  print('Halil İbrahim');

  print("3+5"); // tırnak içinde yazılan her şeyin metin anlamı var. Tırnaksız olursa...
  print(3 + 5);

  print("Ne güzel demiş Sezai Karakoç \"Benim aşkım uymaz öyle her saza.\""); // Örnek niyetiyle bir alıntı yaptım.
  // Alıntıda çift tırnak kullandım. En dışta da çift tırnak kullanıca hata verdi. Bunu düzeltmem için gerek şey ters eğik çizgi

  // Aynısını tek tırnak ile deneyelim.
  print('İbrahim\'in kitabı'); // Ters eğik çizgiyi kaldırırsak hata verecektir.

  // Son iki print çıktısını başka şekilde yazma. Anlayın bakalım
  print('Ne güzel demiş Sezai Karakoç "Benim aşkım uymaz öyle her saza."');
  print("İbrahim'in kitabı"); 
}