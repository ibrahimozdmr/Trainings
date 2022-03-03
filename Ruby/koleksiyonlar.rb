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
