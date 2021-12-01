public class uc {
    public static void main(String[] args) {
        /*
        DEĞİŞKENLER TANIMLAMA ŞABLONU
            özel anahtar kelimeler +  değişken tipi + değişken adı = Değişken değeri + ;

            özel anahtar kelimeler : public, private, protected, static, final ve boş bırakılabilir.
            değişken tipleri : temel veri tipleri ya da sınıflardan biri olabilir.
            temel olmayan referans değişkenler için varsayılan değer "null" değeridir.
        VERİ TİPLERİNİ BİRBİRİNE DÖNÜŞTÜRME
            Dikkat edilmesi gerek!!!
            Daha az duyarlıklı veripini daha fazla duyarlıklı veri tipine doğru dönüştürülür. Hesaplamada geçerli
            byte -> short -> int -> long -> float -> double
            daha fazla duyarlıklı tipler daha baskındır.

            int + long      = long
            int + float     = float
            float + double  = double
        TİP DÖNÜŞÜMÜ
            Tipleri farklı olan değerleri birbirine atamada tip hatası karşılar bizi
            Tip dönüşümü yapılırken dönüştüreceğimiz değerin önüne parantez içinde atanacak değişkenin tipi yazılır.
            Örneğin; int x = (int)15.6f -> x değerimiz int tipinde fakat atanacak değer float tipinde. Bunu int tipine çevirmemiz gerek.
            önüne parantez içinde int yazarak bu işlemi yapıyoruz.
            Örnekler dosya içerisinde olacak. Kodları incelerseniz daha iyi anlaşılır.
        Temel Veri Tipleri ve Karakter Katarlarının Birbirlerine Dönüşümü
            Bir sayıyı karakter katarına(String) çevirmek;
                tam sayı yada tam sayı bir değişkeni String tipine değiştirmek için hazır bir yapı var.
                String a = String.valueOf(sayi); // sayi bir tam sayı veya değişken olmalı.
                String a = sayi + ""; // diğer bir yöntem sayi üst satırdaki ile aynı
                String a = Integer.toString(sayi); // bu da üçüncü bir yöntem
            Bir karakter katarını tam sayıya çevirmek
                int b = Integer.valueOf("sayi"); // "sayi" veya a = "sayi" => sayi yerine bir sayı gelecek.Tırnak içerisinde olduğundan bir string olarak tanımlanır.
                int b = Integer.parseInt("sayi"); // bu da diğer bir yöntem
            Bunlardan diğer tipler içinde var fakat örneklerde.
        */

        int sayi1 = 15; // özel anahtar kelime yazmadık. adı üstünde "özel" olmadığından kullanmadık.
        int sayi2;
        sayi2 = 20; // değişken tanımlamanın başka bir yolu...
        System.out.println("sayi1: " + sayi1 + "\nsayi2: " + sayi2);
        float sayi3, sayi4 = 25, sayi5; // burada sayi3 ve sayi5'i değersiz tanımladık. Sadece isimleri de tanımlanabilir
        sayi3 = 30; // float sayılarımız
        sayi5 = 35;
        System.out.println("sayi4: " + sayi4 + "\nsayi3: " + sayi3 + "\nsayi5: " + sayi5);
        
        float floatSayi3 = (float) sayi3; // sayi3 değişkenini float tipine dönüştürüp floatSayi3 değişkenine atadık
        System.out.println("floatSayi3: " + floatSayi3);
        int floatInt = (int) 40.6f; // float'ı int'e dönüştürürken tam kısmını alıyor yuvarlama olmuyor.
        System.out.println("floatInt: " + floatInt);
        
        int a = 14; // tam sayı tipinde
        double b = 24; // double tipinde
        System.out.println("a:" + a + "\nb: " + b + "\na + b: " + (a + b)); 
        // a + b yi parantez içinde almayınca string algılıyor. a + b double tipinde oluyor. Sebebi daha fazla duyarlıklı olan b

        char karakter = (char) 65; // char da karakterin sayı olarak bir karşılığı vardı.
        System.out.println("karakter: " + karakter); // 65 sayısı char tipine dönüşünce "A" harfi karşımıza gelecek.

        String sayi4String1 = String.valueOf(sayi4);
        System.out.println("sayi4: " + sayi4 + "\nsayi4 + 3: " + (sayi4 + 3)+ "\nsayi4String1: " + sayi4String1 + "\nsayi4String1 + 3: " + (sayi4String1 + 3));
        // sayi4 değişkeni 25.0 float bir değer. 3 eklenirse 28.0 olur.
        // sayi4String1 bir string değere sahip oldu "25.0". Eğer bir print içerisinde tırnak içinde bir yazı varsa değişkenlerde string şeklinde basılır.
        // sayi4String1 + 3 anlamı "25.0" + 3 bastırdı. Yani "25.03" bastırması gerekiyor.
        float floatSayi = 23.4f;
        String floatSayiString2 = Float.toString(floatSayi);
        System.out.println("floatSayiString2: " + (floatSayiString2 + 1));

        /*
        ARİTMETİK OPERATÖRLER
            1- Atama Operatörü      (=)
            2- Toplama Operatörü    (+)
            3- Çıkarma Operatörü    (-)
            4- Negatifleme Operatörü(-)
            5- Çarpma Operatörü     (*)
            6- Bölme Operatörü      (/)
            7- Mod Alma Operatörü   (%)
            8- Aritmetik Artırma Operatörü  (++) / Bu operatör sayı veya değişkenin önüne ve sonrasına bırakılabilir.
            9- Aritmetik Eksiltme Operatörü (--) / Aritmetik artırma operatörü gibi kullanılır.
            10- Topla ve Ata Operatörü  (+=)
            11- Çıkar ve Ata Operatörü  (-=)
            12- Çarp ve Ata Operatörü   (*=)
            13- Böl ve Ata Operatörü    (/=)
            14-Böl ve Kalanı Ata Operatörü  (%=)
        */
        // Burada sadece 8 ve 9. maddeleri örnekleyeceğim.
        int x = 6;
        int y = 6;
        System.out.println("x: " + x + "\ny: " + y);
        int artiX = ++x; // burada x ten önce artıları yazdık. Anlamı önce x'i arttır ve sonra ata. ++ anlamı bir arttır.
        int yArti = y++; // sonra yazdığımızda ise önce ata sonra y'yi arttır.
        System.out.println("x: " + x + "\ny: " + y);
        System.out.println("artiX: " + artiX + "\nyArti: " + yArti);
        int eksiX = --x; // burada da ++ gibi aynı işlemi yapmakta.
        int yEksi = y--;
        System.out.println("x: " + x + "\ny: " + y);
        System.out.println("eksiX: " + eksiX + "\nyEksi: " + yEksi);

        /*
        İlişkisel Operatörler
            1- Küçüktür Operatörü   (<)
            2- Büyüktür Operatörü   (>)
            3- Küçük Eşittir Operatörü  (<=)
            4- Büyük Eşittir Operatörü  (>=)
            5- Eşit mi Operatörü    (==)
            6- Farklı mı Operatörü  (!=)
        Matıksal Operatörler
            1- Not(Değil) Operatörü (!) / doğruysa yanlış yani eşitliğin tersi
            2- And(Ve) Operatörü    (&&) / iki boolean değer aynı ve doğru ise true diğerleri false.
            3- Or(Veya) Operatörü   (||) / iki boolean değer aynı ve yanlış ise false diğerleri true.
            4- XOR(Ayrıcalıklı veya) Operatörü  (^) / iki boolean değer farklı ise true diğerleri false.
        Bit Tabanlı Operatörler
            1- And(ve) Operatörü     (&) / Bunlar değişkenleri ikilik tabana çevirerek bit bazında işlem yaparlar.
            2- Or(veya) Operatörü    (|) / int ve long tiplerinde işlerler. byte yada short tipi int veya lnog çevrilirler.
            3- XOr Operatörü        (^)
            4- Complement(Tamamlama)    (~)
            5- Bit Kaydırma Operatörü   (>>, <<)
        ?: Operatörü
            Java'da 3 argüman alan tek operatör.
            Örneğin; a > b ? a : b // Burada a büyükse b'den, a'yı ver değilse b'yi ver anlamındadır.
        */
        System.out.println("5 < 2: " + (5 < 2));
        System.out.println("5 > 2: " + (5 > 2));
        System.out.println("5 <= 2: " + (5 <= 2));
        System.out.println("5 >= 2: " + (5 >= 2));
        System.out.println("5 == 2: " + (5 == 2));
        System.out.println("5 != 2: " + (5 != 2));

        System.out.println("!true: " + !true);
        System.out.println("true && true: " + (true && true));
        System.out.println("false || false: " + (false || false));
        System.out.println("true ^ false: " + (true ^ false));

        byte b1 = 4; // 0000 0100
        byte b2 = 7; // 0000 0111
        byte b3 = (byte) (b1 & b2); // 0000 0100
        byte b4 = (byte) (b1 | b2); // 0000 0111
        byte b5 = (byte) (b1 ^ b2); // 0000 0011
        byte b6 = (byte) (~b1); // 1111 1011
        byte b7 = (byte) (b1 >> 1); // 0000 0010
        byte b8 = (byte) (b1 << 4); // 0100 0000
        System.out.println("b1: " + b1);
        System.out.println("b2: " + b2);
        System.out.println("b3: " + b3);
        System.out.println("b4: " + b4);
        System.out.println("b5: " + b5);
        System.out.println("b6: " + b6);
        System.out.println("b7: " + b7);
        System.out.println("b8: " + b8);

        int bir = 23, iki = 25, uc = 0, uc1 = 0;
        uc = bir > iki ? bir : iki;
        uc1 = bir < iki ? bir : iki;
        System.out.println("uc: " + uc);
        System.out.println("uc1: " + uc1);

        int f = 1;
        int d = 2;
        int e = 3;
        int oncelikler = 2 + --e + ++f + (4 + 5) + d-- + e++ + 4 * 2 + 1;
        System.out.println("oncelikler: " + oncelikler);
    }
}
