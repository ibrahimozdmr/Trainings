# ekrana bir şeyler bastırma
puts "Hello World!"

# print ile puts farkı
print "Halil İbrahim" # Halil İbrahim yazdırıyoruz fakat sonra gelecek yazı varsa alt satıra geçmeden devamına yazılır.
puts " Özdemir" # Özdemir yazıldıktan sonra alt satıra geçer.

# yorum işlemleri
puts "Tek satır" # tek satırlı yorumlarda başına "#" bırakarak işlemi yaparız.
puts "Çoklu satır" # "=begin / =end" arası çoklu satır yorumu ifade eder.
=begin
    Burası
    çoklu
    satır olarak
    işlem görür
=end

# değişkenler (variables)
sayi = 5 # değişkenler bir veriyi tutmak ve çok yerde kullanmak amaçlıdır. Atama operatörü(=) ile işlem gerçekleştirilir.
# değişkenler sayı ve büyük harf ile başlayamazlar. Büyük harf konusu ileride değinilecek.
puts sayi

# sabitler (constants)
Pi = 3.14 # Sabit değeri atandıktan sonra değiştirmeye çalışmak bir uyarı verecektir. Büyük harf konusu burada devreye giriyor.
puts Pi

# veri tipleri (data types)
x = 55 # integer
y = 1.75 # float
z = "Merhaba" # string
puts "Samsun plakası #{x}'tir. 2+2 = #{2 + 2}" # dize enterpolasyonu (string interpolation) dize içerisinde ruby kodu çalıştırmak için

# aritmetik operatörler (arithmetic operators)
a = 5
b = 2
puts "a + b   : #{a + b}" # Toplama işlemi (Addition)
puts "a - b   : #{a - b}" # Çıkarma işlemi (Subtraction)
puts "a * b   : #{a * b}" # Çarpma işlemi (Multiplication)
puts "a / b   : #{a / b}" # Bölme işlemi (Division)
# sonucu integer bir değer olacaktır. Float bir değer için değişkenlerden biri float olması gerekiyor.
puts "5 / 2.0 : #{5 / 2.0}" # bir üst satırdaki işlemi ayınısı fakat 2 float değer yazdık
puts "a % b   : #{a % b}" # modül operatörü (modulus operator)
puts "a ** b  : #{b ** a}" # üs operatörü (exponent operator)

# aritmetik operatörlerin kısa gösterim olarak ataması
x = 3
x += 2 # x = x + 2
x -= 1
x *= 4 # x = x * 4
x /= 2
x %= 5 # x = x % 5
x **= 3 # x = x ** 3
puts "x: #{x}" # x değişkenin en son değeri ...

# paralel atama (parallel assignment) -> tek satırda birden fazla değişkenin değerlerinin atanması için kullanılır
x, y, z, t = 32, 51, 23, 65
puts "x: #{x}, y: #{y}, z: #{z}, t: #{t}"
# değişken değerlerini değiştirme işlemi (2'den fazla da olabilir mi?)
x, y = y, x
puts "x: #{x}, y: #{y}, z: #{z}, t: #{t}"

# Strings
text = 'Ruby\'nin söz dizimi eğlencelidir.'
text2 = "Merhaba,\nibrahim"
puts text
puts text2

# birleştirme (concatenation)
textA = "Halil"
textB = "İbrahim"
puts textA + " " + textB

# Bir dizeyi tekrarlamak (Repeating a String)
c = "a"
puts c * 5

# girdi(input) almak
girilenDeger = gets # girdi gets fonksiyonu ile alınıyor fakat sonuna alt satıra ekleme yapıyor
puts "girilen değer: #{girilenDeger}"
print "Lütfen isminizi giriniz: "
name = gets.chomp
puts "Hoşgeldin #{name}"
print "Lütfen yaşınızı giriniz: "
age = gets.to_i
puts "Girilen yaş #{age}"