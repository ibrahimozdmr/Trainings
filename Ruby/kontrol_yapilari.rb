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
puts "18'den büyüktür." unless yas < 18 # unless if'in tersi, doğru değilse anlamında ve if'in yerine kullanılır
deger2 = 5
unless deger > 6
    puts "deger2 : #{deger2}"
else
    puts "deger2 = #{deger2}\ndeger2 + 5 : #{deger2 + 5}"
end

# mantıksal operatörler (logical operators) -> operatörler: and(&&), or(||), not(!)
a = 42
b = 8
if a > 7 && b < 11 # operatör sembolleri yerine isimleri de kullanılabilir fakat daha düşük öncelikli olduğu için simge
    # ve operatöründe şartların hepsi doğruysa sonucu doğru kabul eder.
    puts "Evet, doğrular."
end

if a == 42 || b > 10 # veya operatörü matıksal ifadelerden biri veya birden fazla ise sonucu doğru kabul eder.
    puts "birisi veya ikisi doğrudur."
end

puts !(b > 5) # normalde b, 5'ten büyük fakat ünlem konulduğu için sonuç tersine döndü.

# vaka durumları(case statements)
a = 6
print "a(#{a}) değerimizin karşılığı: "
case a
when 1
    puts "bir"
when 2
    puts "iki"
when 3
    puts "üç"
when 4
    puts "dört"
when 5
    puts "beş"
when 6
    puts "altı"
end

yas = 5
case yas
when 1, 2, 3
    puts "daha küçük bir bebek"
when 4, 5
    puts "çocuk olmuş :D"
end

yas = 18
case yas
when 1, 2, 3
    puts "daha küçük bir bebek"
when 4, 5
    puts "çocuk olmuş :D"
else
    puts "Bir bebek değil"
end

# döngüler (loops)
x = 0
while x < 10 # 0'dan 9'a kadar yazar. şartın false olduğunda döngü durur.
    print "#{x} "
    x += 1
end
print "\n"

x = 0
until x > 5 # until, şartın false olduğu zamanlarda çalışıyor true olunca duracak. while döngüsünün tersi şekilde.
    puts "x = #{x}" # 0'dan 5'e kadar ekrana yazdırır.
    x += 1
end

# aralıklar (ranges)
puts (1..3).to_a # to_a fonksiyonu aralığı diziye dönüştürmek için kullanılır.
z = (1..6).to_a # puts ile basılırsa elemanları alt alta basıyor üst satırda gösterildi. puts ile kullanımı alt saturda.
puts "#{z}"
z = (1...7).to_a # (1...7) = (1..6)  üç nokta konulursa son eleman sayılmıyor. iki nota konulursa sayılıyor.
puts "#{z}"

yas = 22
case yas
when 0..14
    puts "çocuk"
when 15..24
    puts "genç"
when 25..64
    puts "yetişkin"
else
    puts "yaşlı"
end

# for döngüsü
for i in (1..10) # for diğer bir döngüdür. yaptığı işlem aralığın üzerinde sırası ile gezinerek işlem yapıyor.
    print "#{i} "
end
print "\n"

# break
for i in 1..5
    break if i > 3
    puts i
end

# next
for i in 0..10
    next if i % 2 == 0
    print "#{i} "
end
print "\n"
