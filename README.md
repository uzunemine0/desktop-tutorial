🌍 Dünya Tarih Atlası

Bu proje, dünya üzerindeki önemli tarihi mekanları ve eserleri zamansal dönemlerine göre sınıflandırarak interaktif bir 3D küre üzerinde görselleştiren bir web uygulamasıdır.

📌 Proje Hakkında;
Uygulama, R programlama dili ve Shiny kütüphanesi kullanılarak geliştirilmiştir. Temel amacı, karmaşık coğrafi verileri son kullanıcının kolayca anlayabileceği, görsel bir deneyime dönüştürmektir.

📋 Veri Seti İçeriği;
Uygulama içerisinde Türkiye'den ve dünyadan toplam 100'den fazla önemli lokasyon bulunmaktadır. Her bir veri noktası şu bilgileri içerir:

Eser Adı: Mekanın veya eserin ismi.

Şehir: Mekanın veya eserin bulunduğu şehir.

Ülke:Mekanın veya eserin bulunduğu ülke.

Dönem:Eserin ait olduğu çağ (Antik Çağ, Orta Çağ, Yeni Çağ, Yakın Çağ).

Koordinatlar: Hassas enlem (lat) ve boylam (lon) değerleri.

🛠 Teknik Özellikler ve Kütüphaneler;
Uygulamanın geliştirilmesinde aşağıdaki modern veri bilimi araçları kullanılmıştır:

Shiny: Web arayüzünün oluşturulması.

Plotly: 3D interaktif küre (orthographic projection) ve istatistiksel grafiklerin çizilmesi.

bslib: Uygulamanın modern "Koyu Tema" (Darkly) tasarımıyla şık görünmesini sağlar.

UTF-8 Enkodlama: Emojilerin ve özel karakterlerin tüm tarayıcılarda sorunsuz görünmesi sağlanmıştır.

🚀 Uygulama Nasıl Kullanılır?

Uygulama iki ana bölümden oluşmaktadır:

🗺️ Küre Haritası: 3D dünyayı mouse ile döndürebilir, istediğiniz bölgeye yakınlaşabilirsiniz.

Noktaların üzerindeki renkler dönemleri temsil eder (Örn: Kırmızı = Antik Çağ).

Bir noktanın üzerine geldiğinizde o esere ait detaylı bilgi kartı açılır.

📊 Analiz Grafiği: "Analiz Grafiği" sekmesine tıklandığında, veri setindeki eserlerin çağlara göre dağılımını gösteren dinamik bir sütun grafiği görülür.

💻 Kurulum ve Çalıştırma;
Bu projeyi kendi bilgisayarınızda çalıştırmak isterseniz:

-RStudio'yu açın.

-Shiny, plotly ve bslib paketlerinin yüklü olduğundan emin olun.

-app.R dosyasını çalıştırın (Run App).

Geliştirici;
[Emine Uzun] CBS Dersi Dönem Projesi
