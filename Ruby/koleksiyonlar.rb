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

# hashes (diğer bilinen adı ile dictionary yani sözlükler)
sayilar = {"bir" => 1, "iki" => 2, "üç" => 3} # key => value (anahtar => değer) ilişkisi. süslü parantezler kullanılıyor
puts "\nbir sayısı: #{sayilar["bir"]}"

bilgiler = {[34, 85.4, 1988] => "Kemal", [30, 65.1, 1992] => "Eda"} # anahtar kısmı dizi de olabilir yada sağ taraf
puts "bilgiler[[34, 85.4, 1988]] : #{bilgiler[[34, 85.4, 1988]]}"
bilgiler = {"Kemal" => [34, 85.4, 1988], "Eda" => [30, 65.1, 1992]} # görüldüğü gibi bu sefer üsttekinin tam tersi
puts "bilgiler['Kemal'] : #{bilgiler['Kemal']}"

# semboller (symbols)
isim = :name # burada ":anne" bir semboldür. hafızada bir kez saklanıyor.
puts "isim : #{isim}"

h = {:name => "Halil İbrahim", :age => 22, :gender => "erkek"}
h = {name: "Halil İbrahim", age: 22, gender: "erkek"}
puts "yaş : #{h[:age]}"

# hash üzerinde kullanılan fonksiyonlar
renkler = {kırmızı: "red", sarı: "yellow", mavi: "blue", siyah: "black"}
renkler.delete :kırmızı # verilan değer içinde varsa siliyor.
puts "\nrenkler : #{renkler}"
puts "hash.key : #{renkler.key "yellow"}" # verilen değer key kısmından olması gerek yoksa nil döndürüyor.
puts "invert : #{renkler.invert}" # invert key ve value değerlerinin yerini değiştirerek yeni bir hash oluşturuyor.
puts "anahtarlar(keys) : #{renkler.keys}" # hash'in keylerini yeni bir dizi olarak çıkarıyor.
puts "değerler(values) : #{renkler.values}" # value değerlerini yeni bir dizi olarak çıkarıyor.
puts "hash uzunluğu : #{renkler.length}"

# iç içe diziler (nested array)
nestedArray = [[1, 3, 5, 7, 9], [0, 2, 4, 6, 8], [3, 6, 9]]
puts "\ndizi içinde dizi: #{nestedArray[1][3]}\ndizinin 0. elemanı: #{nestedArray[0]}"

# nested hashes (iç içe sözlükler diğer adıyla)
arabalar = {
    opel: {yıl: 2005, renk: "beyaz"},
    ferrari: {yıl: 2020, renk: "kırmızı"}
}
puts "Ferrari'nin rengi: #{arabalar[:ferrari][:renk]}"

# yineleyiciler (iterators)
sayilar = [14, 25, 39, 54]
sayilar.each do |i| # each fonksiyonu burada bir iterator. dizinin her elemanını döner ve i değişkenine atar
    print "#{i} "
end
print "\n"

toplam = 0
sayilar.each do |x|
    toplam += x
end
puts "sayilar dizisindeki sayıların tolamı: #{toplam}"

# iterator sözlüklerde de kullanılabilir. Hash'lere sözlük diyorum çünkü sözlükte kelime, kelime anlamı gibi çalışıyor.
cozunurlukler = {HD: 1920, UHD: 3840, UHD: 7680}
cozunurlukler.each do |kelime, anlami| # do end bloğu. "kelime, anlami" değişkenleri yerine istediğimizi yazabiliriz.
    print "#{kelime} => #{anlami}\n"
end

# do end bloğunun daha kısa bir yolu
print "\n"
cozunurlukler.each {|key, value| puts "#{key} => #{value}\n"}

# stringlerde de each_char kullanabiliriz
kelime = "sevmek" # burada karakterleri bir listeye ekleyeceğiz.
harfDizisi = []
kelime.each_char {|x| harfDizisi << x}
puts "#{harfDizisi}" # kelimenin harflerini dönerken eklemiş olduk.

# başka bir iterator(yineleyici) "times"
toplam = 0
3.times do
    toplam += 5 # toplam değişkenine her seferinde 5 ekleyecek. 3.times 3 sefer anlamında
    print "toplam : #{toplam}\n"
end

# 6-7 satırda bir metnin karater sayıcı nasıl yapılır öğrenelim :D
birMetin = "Kelimeler bitmek bilmiyor! Uzun bir METİN :)"
birMetin.downcase! # downcase fonksiyonu bir string'i hepsini küçük harf yapıyor. Ünlem önceden bahsedildi.

karakterler = {}
karakterler.default = 0 # default kısmı sözlüğe bir key eklendiğinde karşılığı yoksa varsayılan value olarak atar.

birMetin.each_char {|harf| karakterler[harf] += 1} # burada metni dolarak her karakteri sözlüğe ekledik.

puts "\nmetin: '#{birMetin}'"
# alt satırda a'dan z'ye metnin karakter sayılarını ekrana baştırması ve kaç tane olduğunu gösteren kod.
('a'..'z').each {|z| puts "'#{z}' karakterinin metindeki sayısı #{karakterler[z]}" if karakterler[z] != 0}