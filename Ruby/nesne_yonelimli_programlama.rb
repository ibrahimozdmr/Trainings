# bir sınıf tanımlaması
class Person # sınıf isminin baş harfi büyük olur.
end
#------
class Person
    def initialize # initialize methodu, bu sınıftan ilk nesne oluştuğunda burası ön tanımlamaları yapıldığı yerdir
        puts "Hey, Merhaba!"
    end
end
p1 = Person.new
p2 = Person.new

# class'tan oluşturulan nesne ile beraber özelliklerini değişkene atamak
class Hayvan
    def initialize yasi # hayvanın yaşının kaç olduğu, hayvan nesnesi oluşturulurken atama yapılma şartını getirir
        @age = yasi
    end
end
a1 = Hayvan.new 6

class Person
    def initialize name, age # birden fazla değişken de alabilir
        @name = name
        @age = age
        puts "#{name}'in yaşı #{age}"
    end
end
a2 = Person.new "ibrahim", 20 # burada ekrana bir baskı yapan içerik var.

# sınıf içerğini farklı fonksiyonlar da ekleyebiliriz.
class Dog
    def havlama
        puts "Woof!"
    end
end
b1 = Dog.new
b1.havlama # bir üst satırda nesne tanımını yaptık. burada ise sınıf içindeki fonksiyonu kullandık.

# bir kutu alanı sınıf ile bulma
class Kutu
    def initialize g, y
        @genislik = g
        @yukseklik = y
    end
    def alan
        @genislik * @yukseklik
    end
end
kutum = Kutu.new 5, 6
puts "\n5'e 6 kutunun alanı: #{kutum.alan}"

# bir sınıfın başlangıçta tanımlandığı değişkene erişmek istiyorsak...
class Person
    def initialize name
        @isim = name
    end
    def ismi_al # bu bir getter fonksiyonu(get)
        @isim
    end
end
birinciKisi = Person.new "Halil İbrahim"
birinci_ismi = birinciKisi.ismi_al # nesne tanımlarken yazdığımız ismi değişkene atamış olduk.
puts "\nbirincinin ismi: #{birinci_ismi}"

# setter fonksiyonu
class Person
    def initialize name
        @isim = name
    end
    def ismi_al
        @isim
    end
    def ismi_ayarla=(name1) # setter methodu böyle yazılıyor (set)
        @isim = name1
    end
end
ikinci_kisi = Person.new "Halil İbrah.."
puts "\nikinci kişinin atanan ismi: #{ikinci_kisi.ismi_al}"
ikinci_kisi.ismi_ayarla = "Halil İbrahim" # İsmin son iki harfi eksik iken ismi setter fonk. ile değiştirerek tamamladık
puts "değiştirilen isim: #{ikinci_kisi.ismi_al}"

# yukarıda yazdığımız Person sınıfı bu şekilde de yazılabilir
class Person
    def initialize name
        @name = name
    end
    def name
        @name
    end
    def name= (name)
        @name = name
    end
end
ucuncu_kisi = Person.new "Taha"
ucuncu_kisi.name = "İsmail"
puts "\nüçüncü kişinin değişen ismi: #{ucuncu_kisi.name}"