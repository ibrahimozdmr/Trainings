# diziler (arrays)
elemanlar = ["Hakan", "Ahmet", "Faruk"] # dizinin elemanları köşeli parantez içine virgül ile ayrılarak yazılır.
puts "#{elemanlar}"
puts elemanlar[2] # sırası ile elemanların indisleri 0'dan başlar yani 2. indis "Faruk" oluyor.

elemanlar[0] = "Halil" # dizinin elemanları bu şekilde değiştirilebilir.
puts "#{elemanlar}"

puts "son eleman: #{elemanlar[-1]}" # eğer indis yerine eksiden başlayarak yazılırsa sondan saymaya başlıyor.
puts elemanlar[0] == elemanlar[-3] # 0. indis ve -3. indis aynı elemanı gösteriyor.

# eleman ekleme
dizim = [54.4, 32, false] # dizi her veri tipi içerebilir
puts "\ndizim: #{dizim}"
dizim << "Halil" # diziye eleman eklemek bu şekilde oluyor. alt satırda ekrana yazdırıldı
puts "dizim: #{dizim}\ntam sayı: #{dizim[1]}, metin: #{dizim[3]}, ondalıklı sayı: #{dizim[0]}, boole değer: #{dizim[2]}"

# eleman eklemenin başka yolları
dizim.push 3 # üstte ki gibi sona ekleme yapıyor.
puts "#{dizim}"
dizim.insert 0, 3.14 # bu sefer sona değil de indis belirleyebiliyoruz.
puts "#{dizim}"

# eleman silme
dizim.pop # pop fonksiyonu dizinin son elemanını siliyor.
puts "silme işlemi: #{dizim}"
dizim.delete_at 1 # delete_at fonksiyonu istediğin indisi silmeni sağlıyor.
puts "silme işlemi: #{dizim}"

# aralık operatörü ile dizi içerisinde belli bir aralığa erişme
puts "bir aralığa erişme: #{dizim[1...4]}"

# Dizileri birleştirme (combining arrays)
birinciDizi = [1, 2]
ikinciDizi = [3, 4, 5, 6]
beraber = birinciDizi + ikinciDizi # toplama operatörü ile birleştirdik.
puts "birinciDizi + ikinciDizi : #{beraber}"

# diziler arasındaki farkı da bir dizi yapabiliriz.
birinciDizi = [5, 6, 7, 8, 9]
ikinciDizi = [5, 6, 2, 9]
beraber = birinciDizi - ikinciDizi # çıkarma operatörü birinci diziden varsa ikindi dizi elemanlarını çıkarıyor.
puts "birinciDizi - ikinciDizi : #{beraber}"

# diziyi aynı elemanlar ile eleman sayısını katlayabiliriz
dizi = [3, 4, 5]
dizi = dizi * 3 # aynı dizi elemanları 3'er tane oldu.
puts "dizi * 3 : #{dizi}"

# dizilerde boole işlemleri yapalım
dizi1 = [32, 54, 12, 72, 67]
dizi2 = [54, 32, 5]
puts "dizi1 & dizi2 : #{dizi1 & dizi2}" # & operatörü diziler arasında ortak olanları ekrana bastırıyor.

puts "dizi1 | dizi2 : #{dizi1 | dizi2}" # | operatörü dizileri, aynı eleman olmadan birleştiriyor.

# elemanların yerinden oynaması
a = [7, 8, 9]
b = a.reverse # reverse fonsiyonu diziyi tersten ayarlıyor.
puts "a: #{a}\nb(a'nın tersi): #{b}"

a = [11, 12, 13]
puts "\nters basılmış a: #{a.reverse}" # burada sadece a'nın tersini bastırdık.
puts "a dizisi:        #{a}"
puts "tersten kaydedilmiş a: #{a.reverse!}" # eğer sonuna ünlem bırakılırsa a'ya tersini atayacak. a değişip tersinden sıralanacak.
puts "a dizisi:              #{a}"

# dizilerde en çok kullanılan fonksiyonlar (bu fonksiyonlar sadece sayılar için değil metinsel ifadeler için de geçerli)
dizi = [1, 2, 3, 4, 5, 3, 1, 5]
puts "\ndizi: #{dizi}\ndizi'nin uzunluğu: #{dizi.length}" # size ve length fonksiyonları dizi uzunluğu döndürmek için kullanılır
puts "dizi'nin uzunluğu: #{dizi.size}"
puts "dizinin sıralı hali: #{dizi.sort}" # diziyi küçükten büyüğe sıralayarak yeni bir dizi döndürür
puts "dizinin tekrarsız hali: #{dizi.uniq}" # diziden yinelenen elemanları kaldırarak yeni bir dizi döndürür
puts "dizinin tekrarsız hali: #{dizi.uniq!}" # yinelenen eleman olmadan aynı diziyi değiştirir
puts "#{dizi.freeze}" # dizinin değiştirilmesini önler
puts "dizide 5 var mı: #{dizi.include? 5}" # yanı gelen parametre dizinin içersinde var mı diye kontrol eder
puts "dizinin en küçüğü: #{dizi.min}" # dizinin en küçük değerini döndürüyor
puts "dizinin en büyüğü: #{dizi.max}" # dizinin en büyük değerini döndürüyor

# dizi üzerinde gezinme for döngüsü ile
print "dizide gezinerek bastırma: "
for x in dizi
    print "#{x} "
end
