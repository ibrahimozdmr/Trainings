# bir fonksiyon tamınlamak
def selam # fonksiyonun ismi küçük harf ile başlamalıdır.
    puts "Merhaba!" #çağırıldığında ne yapılacaksa içinde yazılır.
end
selam
selam

# fonksiyona parametre verme
def karesi(deger) # değer diye bir parametre eklemedim. # parantezli veya boşluklu olarak değer verilebiliyor.
    puts "#{deger}'in karesi #{deger ** 2}"
end
karesi 3

# fonksiyona birden fazla da değer verilebilir
def ucgenTuru a, b, c
    if a == b && a == c
        puts "eşkenar üçgen"
    elsif (a == b && a != c) || (a == c && a != b) || (b == c && b != a)
        puts "ikizkenar üçgen"
    else
        puts "çeşitkenar üçgen"
    end
end
ucgenTuru 3, 4, 5
ucgenTuru 5, 6, 5
ucgenTuru 2, 2, 2

y, x = 3, 5
def alanHesapla bir, iki
    puts "bir kenarı #{bir}, ikinci kenarı #{iki} olan dikdörtgenin alanı #{bir * iki} birim karedir."
end
alanHesapla x, y

print "\n"
# varsayılan (default) değer bırakma
def topla v, t = 3
    puts "v(#{v}) + t(#{t}) = #{v + t}"
end
x = 5
topla x # ikinci değer verilmedi verilmediği için varsayılan değeri getiriyor.
topla x, 5 # varsayılan gelmemesi için ikinci değer de girilmesi gerekir.

# karşılama fonksiyonu
def tanisma(name = "")
    if name == ""
        puts "Merhaba!"
    else
        puts "Hoşgeldin, #{name}"
    end
end
# tanisma gets.chomp # gets.chomp önceden öğrendik. çalışması için yorumdan kaldırın.

# opsiyonel parametreler
def yazdir *t # buradaki t bir dizi
    puts "t : #{t}"
end
print "\n"
yazdir "Halil", 5, 4.12

print "\n"
def hesapla(a, b, *c) # burada a ve b zorunlu girilmesi gerekiyor c girilmese de olur.
    puts a + b
end
hesapla 3, 4
hesapla 5, 6, 7, 8

# bir fonksiyonun değer döndürmesi (return ifadesi)
def toplam x, y
    sonuc = x + y
    return sonuc # fonsiyon bir değer çıktısı veriyor. Bir şeye atanması gerekiyor.
end
a = toplam 5, 23
puts "\ntoplam: #{a}"
puts "toplam(2.yol): #{toplam 4, 23}" # üstte bir değişkene atadık burada ekrana basırdık.

# birden çok değer return edilebilir
def karesi (a, b, c)
    return a ** 2, b ** 2, c ** 2
end
sonuc = karesi 3, 4, 5
puts "\nkareleri : #{sonuc}"

# yeni bir şey öğrenelim.
def yaz a, b
    "#{a} benim sayım."
    "#{b} benim sayım."
end
puts yaz 3, 6 # burada 6 yı ekrana verecek sebebi fonsiyonun içinde return yoksa yazılan en son satırı return ediyor.

def yaz2 b, c
    return b
    c
end
puts yaz2 4, 5 # burada return ifadesi b değerini gösterdiği için 4 yazdırdı. son sanır önemini yitiriyor.

def karesi z
    z * z
end
karesi(3).times {print "Hi "} # times başında bir fonksiyonda kullanabiliriz.
print "\n"

# parametre olarak fonksiyon kullanma
def topla bir, iki
    bir + iki
end
def carp bir, iki
    bir * iki
end
x = carp(topla(3, 5), topla(2, 3)) # burada parantez kullanılmazsa hata veriyor. parametre olarak fonksiyon kullandık.
puts "#{x}"

# global değişken
$kuresel = 39 # global değişkenlerin başına dolar bırakılır. global değişken demek her yerden değiştirilebilir.
def degistir
    $kuresel = 3 # global olan kuresel değişkenimiz burada değer değiştirdi.
    # değişkenler neden global değil dersek, her yerden erişilebilir olduğu için beklenmeyen bir şekilde değişebilir.
end
puts "kuresel : #{$kuresel}"
degistir
puts "kuresel : #{$kuresel}"

# özyineleme (recursion)
def faktoriyel sayi
    if sayi <= 1
        1
    else
        sayi * faktoriyel(sayi - 1)
    end
end
puts "5 sayının faktöriyeli : #{faktoriyel 5}"