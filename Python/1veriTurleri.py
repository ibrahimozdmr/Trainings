# Veri türleri, type() fonksiyonu, matematiksel operatörler, print() fonksiyonu

# print() fonksiyonu konsola yazdırmaya yarıyor. Parantez içine değişken veya tırnaklar içinde yazı veya sayı girildiği zaman konsolda çıktısını görürüz. Bir sonraki dosya onunla alakalı olacak

"""
PYTHON VERİ TÜRLERİ
    1- Number (Sayılar)
    2- String (Karakter)
    3- List (Listeler)
    4- Tuple (Demetler)
    5- Dictionary (Sözlükler)
    6- Sets (Kümeler)
"""

# NUMBER
tamSayi = 15            # int
print("tamSayi      : ", type(tamSayi))
ondalikliSayi = 13.5    # float
print("ondalikSayi  : ", type(ondalikliSayi))
karmasikSayi = 5+12j    # complex
print("karmasikSayi : ", type(karmasikSayi))

# IMMUTABLE (Değiştirilemez)
#   1- String
isim = "Halil İbrahim"  # string
print("isim         : ", type(isim))
#   2- Tuple
demet = (3, 4, 6, 5, "Hello", 3.2, 4j)  # tuple
print("demet        : ", type(demet))

# MUTABLE (Değiştirilebilir)
#   1- List
liste = [4, 3, 2.4, "Hi", 'a', [1, 2, 3, 4, 5]] # list
print("liste        : ", type(liste))
#   2- Dictionary
sayilar = {1: "bir", 2: "iki", 3: "üç"}     # dict (dictionary)
print("sayilar      : ", type(sayilar))

# BASİT MATEMATİK OPERATÖRLERİ
a = 3 + 3
print("3+3  = ", a)
a = 5 - 3
print("5-3  = ", a)
a = 3 * 3
print("3*3  = ", a)
a = 4 / 2
print("4/2  = ", a)
a = 10 // 3
print("10//3 = ", a)
a = 4 % 3
print("4%3  = ", a)
a = 3 ** 3
print("3**3 = ", a)
b = 5
print("b    = ", b, "\n-b   = ", (-b))

print("\nİŞLEM ÖNCELİĞİ")
"""
ARİTMETİK İŞLEMLERDE ÖNCELİK KURALLARI VAR:
  i- Parantez içi
  ii- Üs alma işlemleri
  iii- Bölme ve çarpma işlemleri
  iv- Çıkarma ve toplama işlemleri
  v- işlemler soldan sağa doğru olur (bu madde 2. ve 3. maddeler içindir.)
"""
sonuc = 5 + 5 * 4 / 2 - 4 + 8 ** 2
# sonuc = 5 + ((5 * 4) / 2) - 4 + (8 ** 2)
print("5 + 5 * 4 / 2 - 4 + 8 ** 2 = ", sonuc)

# ÖDEV: Bir dairenin alanını hesaplayan bir örnek