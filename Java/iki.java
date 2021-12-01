class iki {
    public static void main(String[] args) {
        /*
        TEMEL VERİ TİPLERİ
            a- Tam Sayılar
                1- byte     / 8 bit     / onluk: 27, Sekizlik(octal): 033 (başına 0 gelir), Onaltılık(Hexadecimal): 0x1b (başına 0x gelir)
                2- short    / 16 bit    /
                3- int      / 32 bit    /
                4- long     / 64 bit    /
            b- Ondalıklı Sayılar    / ondalık sayılar için varsayılan veri tipi double dır.
                1- float    / 0.25'in yazımı: .25F, .25f, 0.25F, 0.25f
                2- double   / 0.25'in yazımı: .25D, .25d, 0.25D, 0.25d, 0.25, .25
                // Bilimsel notasyonda da gösterilebilir. 0.25 sayısı için: bilimsel 25x10-2, Java da 25e-2 ya da 25E-2
            c- Karakterler
                1- char     / '' içine yazılan karakter char tipi olur.
            d- Mantıksal Tipler
                1- true
                2- false

        Varsayılan Değerleri
            byte    -> 0
            short   -> 0
            int     -> 0
            long    -> 0
            float   -> 0.0f
            double  -> 0.0d
            char    -> '\u0000'
            boolean -> false
        
        REFERANS TİPLER
            Bellekteki adresleri tutulur.
            Referans Tipleri: array, class, interface
        
        String Sınıfı (Karakter Katarları)
            Birden fazla karakterin bir araya gelerek oluşturduğu özel değişken.
            Temel veri tipi değildir. Karakter katarlarını tutmak için tasarlanmış bir sınıf.
            Veri tipi olarak "String"
        
        SINIF (class)
            Temel programlama elemanı, birbiri ile ilişkili olan verileri bir araya getirerek sadece bir referans aracılığıyla ulaşmak.
        NESNE KAVRAMI
            Java'da her şey nesnedir fakat nesneler kullanılması için bir referansa ihtiyaç duyar.
            Bir sınıf tanımladığımız zaman aslında yeni bir veri tipi oluşturmuş oluyoruz.
         */

        iki1_temelVeriTipleri temel = new iki1_temelVeriTipleri(); // iki1_temelVeriTipleri sınıfı bir değişken oldu
        // new kelimesi ile bir nesne oluşturduk. "temel" değişkeni ile sınıfımıza ulaşacağız.
        
        System.out.println(temel.byteTamSayi);      // 0
        System.out.println(temel.shortTamSayi);     // 0
        System.out.println(temel.intTamSayi);       // 0
        System.out.println(temel.longTamSayi);      // 0
        System.out.println(temel.floatTamSayi);     // 0.0
        System.out.println(temel.doubleTamSayi);    // 0.0
        System.out.println(temel.charKarakteri);    //  -> konsol çıktısında bir şey yazdırmaz çünkü varsayılanı 0 veya null
        System.out.println(temel.booleanDeğişkeni); // false

        // Sınıf ve nesne kavramı ile ilgili örnek
        iki2_kutu kutu1 = new iki2_kutu();
        kutu1.genislik = 5;
        kutu1.yukseklik = 5;
        kutu1.derinlik = 5;
        System.out.println("Kutumuzun hacmi: " + kutu1.genislik * kutu1.yukseklik * kutu1.derinlik);
        System.out.println("Kutumuz kırılı mı: " + kutu1.kiriliMi);

        iki2_kutu kutu2 = new iki2_kutu();
        System.out.println("Kutumuzun hacmi: " + kutu2.genislik * kutu2.yukseklik * kutu2.derinlik);
        System.out.println("Kutumuz kırılı mı: " + kutu2.kiriliMi);
        // kutu1 ve kutu2 nesnemizi oluşturduk. kutu1 şubeye geldi özellikleri belli fakat kutu2'nin kaydı var fakat bir şey şubeye gelmemiş. Varsayılan değer atadığımız için sistem düzgün çalıştı.
    }
}