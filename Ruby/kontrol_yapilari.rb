# boole değerleri true ve false. ingilizcesi boolean diye geçer. bir de değerin yokluğunu gösteren nil değeri vardır.
# false ve nil harici her şey doğru kabul edilir.
yanlis = false
dogru = true
bos = nil
yazi = "Selam"
rakam = 0
rakam2 = 13514

# bir değerin veya değişkenin önüne ünlem bırakılırsa tersini verecektir.
puts false # false değeri direk basılır
puts !false

# bir ünlem yerine iki ünlem bırakılırsa bu sefer değerin bool değerini verir (the double bang operator)
puts "false bool değeri  : #{!!yanlis}"
puts "true bool değeri   : #{!!dogru}"
puts "0 bool değeri      : #{!!rakam}"
puts "nil bool değeri    : #{!!bos}"
puts "'Selam' bool değeri: #{!!yazi}"

# karşılaştırma operatörleri (comparison operators)
sayi1 = 5
sayi2 = 9
puts "sayi1 == sayi2 : #{sayi1 == sayi2}" # "==" denk mi sorusunu soruyor. Cevap bool değeri çevirir.
puts "sayi1 == 5     : #{sayi1 == 5}"
# bir eşittir atama işlemi yaparken, iki eşittir denklik sorgulama işlemini yapmakta.
puts "sayi1 != sayi2 : #{sayi1 != sayi2}" # "!=" eşit değil mi işareti
puts "5 >= 3 : #{5 >= 3}"
puts "7 < 7  : #{7 < 7}" # diğer büyüklük operatörleri de var.

puts "3 == 3.0 :  #{3 == 3.0}"
puts "3.eql?(3.0) : #{3.eql?(3.0)}" # eql? fonksiyonu tür ve değer olarak birbirine denk mi işlemi sorguluyor
puts "'a' > 'b' : #{'b' > 'a'}"

# if ifadeleri (if statements)
deger = 18
if deger > 7 # if'in yanındaki bool true ise if'in içersindeki kod çalıştırılır.
    puts "deger(#{deger}) değişkeni 7'den büyüktür."
end # if başladığı yerin sonunda end değeri olması gerekiyor

# if içinde if olamaz diye bir şart yok :D
if deger > 10
    puts "birinci if oynatıldı. sıradaki"
    if deger < 20
        puts "ikinci if oynatılıyor."
    end
end

#sıradaki konu if değeri yanlış ise ne olacak sorunun cevabı
yas = 22
if yas > 18
    puts "Alabilirsiniz."
else # else yapısı üstteki şart olmadıysa bunu yap anlamı var.
    puts "Alamazsınız."
end # ikinci bir seçenek tamam da üçüncü bir seçenek olsaydı ne yapardık?

if yas > 55
    puts "Yaşınız çok ilerlemiş. Sizi alamayız."
elsif yas > 18 # Üçüncü bir seçeneğimiz de çıktı karşımıza. Daha fazlası için elsif kullanıyoruz. (Else if)
    puts "Hoşgeldiniz. İyi eğlenceler dileriz."
else
    puts "Yaşınız çok küçük. Giremezsiniz."
end

puts "18'den büyüktür." if yas >= 18 # if yapısı bu şekilde de yazılabiliyormuş. Doğruysa olacak olan + if + şart
puts "18'den büyüktür." unless yas < 18 # unless if'in tersi, doğru değilse anlamında
deger2 = 5
unless deger > 6
    puts "deger2 : #{deger2}"
else
    puts "deger2 = #{deger2}\ndeger2 + 5 : #{deger2 + 5}"
end