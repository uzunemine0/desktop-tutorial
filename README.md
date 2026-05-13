🌍 Dünya Tarih Atlası (3D İnteraktif CBS Projesi)

Bu proje, Antik Çağ'dan Yakın Çağ'a kadar dünya tarihindeki önemli mekanları ve eserleri 3 Boyutlu bir dijital küre üzerinde görselleştiren interaktif bir web uygulamasıdır. Kullanıcılar, tarihsel verileri sadece bir liste olarak değil, dünya üzerindeki gerçek konumlarıyla ve zamansal sınıflandırmalarıyla keşfedebilirler.

🚀 Uygulamaya Canlı Erişin: https://uzun-emine.shinyapps.io/PROJEyeni_CBS/ 

 
📌 Proje Hakkında
Uygulama, R programlama dili ve Shiny framework'ü kullanılarak bir Coğrafi Bilgi Sistemi (CBS) mantığıyla geliştirilmiştir. Karmaşık koordinat verilerini, son kullanıcının mouse yardımıyla dünyayı döndürerek inceleyebileceği basit ve estetik bir arayüze dönüştürür.


📋 Veri Seti ve İçerik
Uygulama içerisinde Türkiye'den ve dünyadan seçilmiş, tarihsel öneme sahip 100'den fazla lokasyon titizlikle işlenmiştir. Her bir veri noktası (pin) şu bilgileri barındırır:

-Eser/Mekan Adı: Yapının resmi adı.

-Konum: Bulunduğu şehir ve ülke bilgisi.

-Tarihsel Dönem: Eserin ait olduğu çağ (Antik, Orta, Yeni veya Yakın Çağ).

-Coğrafi Koordinatlar: Hassas enlem ve boylam değerleri.



🛠 Teknik Altyapı
Projenin geliştirilmesinde aşağıdaki modern kütüphaneler kullanılmıştır:

-Shiny: Uygulamanın web tabanlı interaktif bir platform olmasını sağlar.

-Plotly: 3D interaktif küre (orthographic) ve dinamik istatistiksel grafiklerin motorudur.

-bslib: Uygulamaya modern, göz yormayan bir "Koyu Tema" (Darkly) tasarımı kazandırır.

-UTF-8: Küresel emojilerin ve Türkçe karakterlerin sorunsuz görüntülenmesini sağlar.



🚀 Uygulama Nasıl Kullanılır? (Kullanım Kılavuzu)
Uygulama, üst menüdeki iki ana sekme üzerinden keşfedilir:

🗺️ Küre Haritası Sekmesi:

3D Dünya modelini mouse ile her yöne döndürebilir, mouse tekerleği ile yakınlaşabilirsiniz.

Renk Kodları: Haritadaki noktaların renkleri çağları temsil eder (Örn: Kırmızı noktalar Antik Çağ eserlerini gösterir).

Detay Bilgi: Bir noktanın üzerine mouse ile geldiğinizde, o eserin adını ve konumunu gösteren bir bilgi kartı açılır.


📊 Analiz Grafiği Sekmesi:

Bu bölümde, veri setindeki eserlerin hangi çağda ne kadar yoğunlaştığını gösteren dinamik bir sütun grafiği yer alır.



💻 Yerel Kurulum (Geliştiriciler İçin)
Projeyi kendi bilgisayarınızda çalıştırmak isterseniz:

-RStudio'yu açın.

-Gerekli paketleri kurun: install.packages(c("shiny", "plotly", "bslib"))

-app.R dosyasını açın ve üstteki "Run App" butonuna basın.



Geliştirici: Emine Uzun

Bölüm: İskenderun Teknik Üniversitesi (İSTE) - Yönetim Bilişim Sistemleri (YBS)
