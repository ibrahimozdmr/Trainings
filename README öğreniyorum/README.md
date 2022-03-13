# *.md dosyası yazalım*

## Başlık durumu:
<!-- başlık eklemek için başına "#" getiriliyor. En fazla 6 tane getirilebilir. -->
### Bu bir alt başlık <hr>

## Yazı şekillendirme:
**Kalın yazı** - Kalın yazı <br>
__Kalın yazı 2__ - Kalın yazı 2 <br>

*italik yazı* - italik yazı <br>
_italik yazı 2_ - italik yazı 2 <br>

~~üstü çizili~~ - üstü çizili <br>

**Kalın ve _italik_** içeren yazı - kalın ve italik içeren yazı <br>
***kalın ve italik*** - kalın ve italik <hr>

## Alıntı metin:
Bu bir alıntı metin değildir. <br>
>Bu bir alıntı metindir. <br>

Bir alıntı daha yapılır. <br>
Komut isteminde(Command Prompt) `dir` yazılırsa klasördekileri listeler. <br> <!--dir alıntı yapıldı-->
>Farklı bir alanda yazmak için " ``` " kullanılır.
```
dir
cd ..
dir
```
<hr>

## Bağlantı oluşturma:
Google gitmek için [tıkla](https://www.google.com.tr). <br>
Başka bir bağlatıya gitmek için [buraya tıka](links/link.md)

Bir resme bağlantı oluşturalım: <br>
![yıldız](./links/star.png) <br> <!-- Adres kısmına link olarakta bir şey verilebilir. -->

Resmin Github'ın karanlık mod veya aydınlık modda gösterilip gösterilmeyeceğini seçebiliyoruz. <br>
![Yıldız](links/star.png#gh-light-mode-only) <!-- sadece aydınlık(light) modda gösterilmeye ayarlı -->
![Yıldız](links/star.png#gh-dark-mode-only)  <hr> <!-- sadece karanlık(dark) modda gösterilmeye ayarlı -->

## Listeler:
-  Sırasız bir liste oluşturmak için
-  sıradaki madde
-  bir sonraki madde
   - üçüncü maddenin alt maddesi.

1. sıralı kiste
2. sıralı listenin ikinci maddesi.
   1. sıralı listede alt maddeler.
   2. alt madde
3. ilk liste girdisi
    - ilk alt liste girdisi
        - ikinci alt liste girdisi
<hr>

## Görev listeleri:
- [x] ilk görev #1
- [ ] ikinci görev
- [ ] \(olabilir) cmd aç
<hr>

## kişilerden veya ekiplerden bahsetme:
@ibrahimozdmr -> github profilim.
<hr>

## Emoji de kullanılabilir:
:+1: -> emojinin anlamı +1 demek.[^1]
<hr>

## Dipnotlar:
[^1]: Emojiler için bir araştırma yap. :D <hr>

## tablo oluşturma:
| ilk başlık | ikinci başlık |
| ---------- | ------------- |
| ***içerik*** | içerik 2 |
| _içerik 3_ | **içerik 4** | <!-- içerik biçimlendirilebiliyor. -->

Bir tablo oluşturalım <br>
<!-- sütunu sola veya sağa yaslama işlemi-->
| isim | soyisim | bölüm | yaş |
| --- | :---: | ---: | ---: |
| Halil İbrahim | ÖZDEMİR | Bilgisayar | 20