options(encoding = "UTF-8")

if (!require("shiny")) install.packages("shiny")
if (!require("plotly")) install.packages("plotly")
if (!require("bslib")) install.packages("bslib")

library(shiny)
library(plotly)
library(bslib)


emoji_world  <- "\U0001f30e" 
emoji_map    <- "\U0001f5fa" 
emoji_chart  <- "\U0001f4ca" 
emoji_pin    <- "\U0001f4cd" 
emoji_museum <- "\U0001f3db" 
emoji_city   <- "\U0001f3d9" 
emoji_time   <- "\U000023f3" 


veriler <- rbind(
  c("Mevlana Muzesi", "Konya", "Turkiye", 37.87, 32.50, "Orta Cag"),
  c("Perge Antik Kenti", "Antalya", "Turkiye", 36.95, 30.85, "Antik Cag"),
  c("Zeugma Muzesi", "Gaziantep", "Turkiye", 37.07, 37.38, "Antik Cag"),
  c("Dara Antik Kenti", "Mardin", "Turkiye", 37.18, 40.95, "Antik Cag"),
  c("Uchisar Kalesi", "Nevsehir", "Turkiye", 38.63, 34.80, "Orta Cag"),
  c("Ani Harabeleri", "Kars", "Turkiye", 40.51, 43.57, "Orta Cag"),
  c("Yerebatan Sarnici", "Istanbul", "Turkiye", 41.01, 28.98, "Orta Cag"),
  c("Safranbolu Evleri", "Karabuk", "Turkiye", 41.24, 32.69, "Yeni Cag"),
  c("St. Pierre Kilisesi", "Hatay", "Turkiye", 36.20, 36.18, "Orta Cag"),
  c("Titus Tuneli", "Hatay", "Turkiye", 36.12, 35.91, "Antik Cag"),
  c("Gobeklitepe", "Sanliurfa", "Turkiye", 37.22, 38.92, "Antik Cag"),
  c("Efes Antik Kenti", "Izmir", "Turkiye", 37.94, 27.34, "Antik Cag"),
  c("Anitkabir", "Ankara", "Turkiye", 39.92, 32.83, "Yakin Cag"),
  c("Ishak Pasa Sarayi", "Agri", "Turkiye", 39.52, 44.12, "Yeni Cag"),
  c("Sumela Manastiri", "Trabzon", "Turkiye", 40.69, 39.65, "Orta Cag"),
  c("Hattusas", "Corum", "Turkiye", 40.01, 34.61, "Antik Cag"),
  c("Sagalassos", "Burdur", "Turkiye", 37.67, 30.51, "Antik Cag"),
  c("Aspendos", "Antalya", "Turkiye", 36.93, 31.17, "Antik Cag"),
  c("Knidos Antik Kenti", "Mugla", "Turkiye", 36.68, 27.37, "Antik Cag"),
  c("Sardes", "Manisa", "Turkiye", 38.48, 28.04, "Antik Cag"),
  c("Myra Antik Kenti", "Antalya", "Turkiye", 36.25, 29.98, "Antik Cag"),
  c("Phaselis", "Antalya", "Turkiye", 36.52, 30.55, "Antik Cag"),
  c("Gordion", "Ankara", "Turkiye", 39.65, 32.33, "Antik Cag"),
  c("Alacahoyuk", "Corum", "Turkiye", 40.20, 34.33, "Antik Cag"),
  c("Patara", "Antalya", "Turkiye", 36.26, 29.31, "Antik Cag"),
  c("Bergama (Pergamon)", "Izmir", "Turkiye", 39.13, 27.18, "Antik Cag"),
  c("Assos", "Canakkale", "Turkiye", 39.48, 26.33, "Antik Cag"),
  c("Troy Antik Kenti", "Canakkale", "Turkiye", 39.95, 26.23, "Antik Cag"),
  c("Didyma Tapinagi", "Aydin", "Turkiye", 37.38, 27.25, "Antik Cag"),
  c("Aphrodisias", "Aydin", "Turkiye", 37.70, 28.72, "Antik Cag"),
  c("Miletos", "Aydin", "Turkiye", 37.53, 27.27, "Antik Cag"),
  c("Labraunda", "Mugla", "Turkiye", 37.41, 27.81, "Antik Cag"),
  c("Ihlara Vadisi", "Aksaray", "Turkiye", 38.23, 34.29, "Orta Cag"),
  c("Selimiye Camii", "Edirne", "Turkiye", 41.67, 26.55, "Yeni Cag"),
  c("Bursa Ulucamii", "Bursa", "Turkiye", 40.18, 29.06, "Orta Cag"),
  c("Divrigi Ulu Camii", "Sivas", "Turkiye", 39.37, 38.11, "Orta Cag"),
  c("Kiz Kalesi", "Mersin", "Turkiye", 36.46, 34.14, "Orta Cag"),
  c("Rumkale", "Gaziantep", "Turkiye", 37.27, 37.83, "Orta Cag"),
  c("Hasankeyf", "Batman", "Turkiye", 37.71, 41.41, "Orta Cag"),
  c("Sultanahmet Camii", "Istanbul", "Turkiye", 41.00, 28.97, "Yeni Cag"),
  c("Dolmabahce Sarayi", "Istanbul", "Turkiye", 41.03, 29.00, "Yakin Cag"),
  c("Beylerbeyi Sarayi", "Istanbul", "Turkiye", 41.04, 29.04, "Yakin Cag"),
  c("Galata Kulesi", "Istanbul", "Turkiye", 41.02, 28.97, "Orta Cag"),
  c("Maiden Tower", "Istanbul", "Turkiye", 41.02, 29.00, "Orta Cag"),
  c("Odunpazari Evleri", "Eskisehir", "Turkiye", 39.76, 30.52, "Yeni Cag"),
  c("Sagalassos", "Burdur", "Turkiye", 37.67, 30.51, "Antik Cag"),
  c("Laodikeia", "Denizli", "Turkiye", 37.83, 29.10, "Antik Cag"),
  c("Zeus Tapinagi (Euromos)", "Mugla", "Turkiye", 37.37, 27.68, "Antik Cag"),
  c("Mamure Kalesi", "Mersin", "Turkiye", 36.08, 32.63, "Orta Cag"),
  c("Zerzevan Kalesi", "Diyarbakir", "Turkiye", 37.61, 40.48, "Antik Cag"),
  c("Tushpa (Van Kalesi)", "Van", "Turkiye", 38.50, 43.34, "Antik Cag"),
  c("Dara Antik Kenti", "Mardin", "Turkiye", 37.18, 40.95, "Antik Cag"),
  c("Yilan Kalesi", "Adana", "Turkiye", 37.01, 35.81, "Orta Cag"),
  c("Gordion", "Ankara", "Turkiye", 39.65, 32.33, "Antik Cag"),
  c("Sardes Antik Kenti", "Manisa", "Turkiye", 38.48, 28.04, "Antik Cag"),
  c("Kizilavlu (Bergama)", "Izmir", "Turkiye", 39.12, 27.18, "Antik Cag"),
  c("Tille Hoyuk", "Adiyaman", "Turkiye", 37.91, 38.83, "Antik Cag"),
  c("Aizanoi Antik Kenti", "Kutahya", "Turkiye", 39.20, 29.61, "Antik Cag"),
  c("Harput Kalesi", "Elazig", "Turkiye", 38.70, 39.25, "Antik Cag"),
  c("Yazilikaya Midas", "Eskisehir", "Turkiye", 39.20, 30.71, "Antik Cag"),
  c("Eshab-i Kehf Ma??ras??", "Mersin", "Turkiye", 36.95, 34.89, "Orta Cag"),
  c("Alahan Manastiri", "Mersin", "Turkiye", 36.79, 33.35, "Orta Cag"),
  c("Anavarza Antik Kenti", "Adana", "Turkiye", 37.24, 35.89, "Antik Cag"),
  
  
  
  c("Acropolis", "Atina", "Yunanistan", 37.97, 23.72, "Antik Cag"),
  c("Alhambra Sarayi", "Granada", "Ispanya", 37.17, -3.59, "Orta Cag"),
  c("Angkor Wat", "Siem Reap", "Kambocya", 13.41, 103.86, "Orta Cag"),
  c("Aztek Tapinaklari", "Meksiko", "Meksika", 19.43, -99.13, "Orta Cag"),
  c("Bagan", "Mandalay", "Myanmar", 21.17, 94.85, "Orta Cag"),
  c("Banff", "Alberta", "Kanada", 51.49, -115.92, "Yakin Cag"),
  c("Big Ben", "Londra", "Ingiltere", 51.50, -0.12, "Yakin Cag"),
  c("Borobudur", "Magelang", "Endonezya", -7.60, 110.20, "Orta Cag"),
  c("Brandenburg Gate", "Berlin", "Almanya", 52.51, 13.37, "Yeni Cag"),
  c("Buckingham Palace", "Londra", "Ingiltere", 51.50, -0.14, "Yeni Cag"),
  c("Burj Khalifa", "Dubai", "BAE", 25.19, 55.27, "Yakin Cag"),
  c("Buyuk Zimbabve", "Masvingo", "Zimbabve", -20.26, 30.93, "Orta Cag"),
  c("Cartagena", "Cartagena", "Kolombiya", 10.39, -75.48, "Yeni Cag"),
  c("Chichen Itza", "Yucatan", "Meksika", 20.68, -88.56, "Orta Cag"),
  c("Cin Seddi", "Pekin", "Cin", 40.43, 116.57, "Antik Cag"),
  c("CN Tower", "Toronto", "Kanada", 43.64, -79.38, "Yakin Cag"),
  c("Colosseum", "Roma", "Italya", 41.89, 12.49, "Antik Cag"),
  c("Djenne Camii", "Mopti", "Mali", 13.91, -4.55, "Orta Cag"),
  c("Ebu Simbel", "Asvan", "Misir", 22.33, 31.62, "Antik Cag"),
  c("Empire State", "New York", "ABD", 40.74, -73.98, "Yakin Cag"),
  c("Eyfel Kulesi", "Paris", "Fransa", 48.85, 2.29, "Yakin Cag"),
  c("Forbidden City", "Pekin", "Cin", 39.91, 116.39, "Yeni Cag"),
  c("Fushimi Inari", "Kyoto", "Japonya", 34.96, 135.77, "Yeni Cag"),
  c("Giza Piramitleri", "Kahire", "Misir", 29.97, 31.13, "Antik Cag"),
  c("Golden Gate", "San Francisco", "ABD", 37.81, -122.47, "Yakin Cag"),
  c("Golden Pavilion", "Kyoto", "Japonya", 35.03, 135.72, "Orta Cag"),
  c("Hermitage", "St. Petersburg", "Rusya", 59.93, 30.31, "Yeni Cag"),
  c("Himeji Satosu", "Hyogo", "Japonya", 34.83, 134.69, "Yeni Cag"),
  c("Kremlin", "Moskova", "Rusya", 55.75, 37.62, "Orta Cag"),
  c("Kurtarici Isa", "Rio de Janeiro", "Brezilya", -22.95, -43.21, "Yakin Cag"),
  c("Lalibela", "Amhara", "Etiyopya", 12.03, 39.04, "Orta Cag"),
  c("Louvre Muzesi", "Paris", "Fransa", 48.86, 2.33, "Yeni Cag"),
  c("Luxor Tapinagi", "Luksor", "Misir", 25.70, 32.63, "Antik Cag"),
  c("Machu Picchu", "Cusco", "Peru", -13.16, -72.54, "Orta Cag"),
  c("Mont Saint-Michel", "Normandiya", "Fransa", 48.63, -1.51, "Orta Cag"),
  c("Mount Rushmore", "Keystone", "ABD", 43.87, -103.45, "Yakin Cag"),
  c("Neuschwanstein Satosu", "Bavyera", "Almanya", 47.55, 10.74, "Yeni Cag"),
  c("Notre Dame", "Paris", "Fransa", 48.85, 2.35, "Orta Cag"),
  c("Ozgurluk Aniti", "New York", "ABD", 40.68, -74.04, "Yakin Cag"),
  c("Panama Canal", "Panama City", "Panama", 9.08, -79.68, "Yakin Cag"),
  c("Paskalya Adasi", "Hanga Roa", "Sili", -27.11, -109.34, "Orta Cag"),
  c("Petra Antik Kenti", "Ma'an", "Urdun", 30.32, 35.44, "Antik Cag"),
  c("Petronas Towers", "Kuala Lumpur", "Malezya", 3.15, 101.71, "Yakin Cag"),
  c("Pisa Kulesi", "Pisa", "Italya", 43.72, 10.39, "Orta Cag"),
  c("Pompeii", "Napoli", "Italya", 40.75, 14.48, "Antik Cag"),
  c("Potala Palace", "Lhasa", "Tibet", 29.65, 91.11, "Orta Cag"),
  c("Sagrada Familia", "Barselona", "Ispanya", 41.40, 2.17, "Yakin Cag"),
  c("Seoul Tower", "Seul", "Guney Kore", 37.55, 126.98, "Yakin Cag"),
  c("Sidney Opera Evi", "Sidney", "Avustralya", -33.85, 151.21, "Yakin Cag"),
  c("Stonehenge", "Salisbury", "Ingiltere", 51.17, -1.82, "Antik Cag"),
  c("Table Mountain", "Cape Town", "Guney Afrika", -33.96, 18.40, "Antik Cag"),
  c("Tac Mahal", "Agra", "Hindistan", 27.17, 78.04, "Yeni Cag"),
  c("Teotihuacan", "San Martin", "Meksika", 19.69, -98.84, "Antik Cag"),
  c("Terracotta Ordusu", "Xi'an", "Cin", 34.38, 109.27, "Antik Cag"),
  c("Tikal", "Peten", "Guatemala", 17.22, -89.62, "Antik Cag"),
  c("Tulum", "Quintana Roo", "Meksika", 20.21, -87.42, "Orta Cag"),
  c("Uluru (Ayers Rock)", "Uluru", "Avustralya", -25.34, 131.03, "Antik Cag"),
  c("Venedik", "Venedik", "Italya", 45.44, 12.31, "Orta Cag"),
  c("Versailles", "Versay", "Fransa", 48.80, 2.12, "Yeni Cag"),
  c("White House", "Washington", "ABD", 38.89, -77.03, "Yeni Cag"),
  c("Zanzibar", "Zanzibar", "Tanzanya", -6.16, 39.20, "Yeni Cag"),
  c("Bagan Tapinaklari", "Mandalay", "Myanmar", 21.17, 94.85, "Orta Cag"),
  c("Great Mosque of Djenne", "Djenne", "Mali", 13.91, -4.55, "Orta Cag"),
  c("Naqsh-e Jahan Meydani", "Isfahan", "Iran", 32.65, 51.67, "Yeni Cag"),
  c("Tiwanaku", "La Paz", "Bolivya", -16.55, -68.67, "Antik Cag"),
  c("Lascaux Magarasi", "Dordogne", "Fransa", 45.05, 1.17, "Antik Cag"),
  c("Derawar Kalesi", "Bahavalpur", "Pakistan", 28.76, 71.33, "Orta Cag"),
  c("Iguazu Selaleleri (Tarihi Yerlesim)", "Misiones", "Arjantin", -25.69, -54.43, "Yeni Cag"),
  c("Krak des Chevaliers", "Homs", "Suriye", 34.75, 36.29, "Orta Cag"),
  c("Palenque", "Chiapas", "Meksika", 17.48, -92.04, "Antik Cag"),
  c("Great Zimbabwe", "Masvingo", "Zimbabve", -20.26, 30.93, "Orta Cag"),
  c("Osaka Satosu", "Osaka", "Japonya", 34.68, 135.52, "Yeni Cag"),
  c("Edinburgh Kalesi", "Edinburgh", "Iskocya", 55.94, -3.19, "Orta Cag"),
  c("El Jem Amfitiyatrosu", "Mahdia", "Tunus", 34.87, 10.70, "Antik Cag"),
  c("Spis Kalesi", "Zehra", "Slovakya", 48.99, 20.76, "Orta Cag"),
  c("Guggenheim Muzesi", "Bilbao", "Ispanya", 43.26, -2.93, "Yakin Cag"),
  c("Brasilia", "Federal District", "Brezilya", -15.79, -47.88, "Yakin Cag"),
  c("Mont Saint-Michel", "Normandiya", "Fransa", 48.63, -1.51, "Orta Cag"),
  c("Swayambhunath", "Katmandu", "Nepal", 27.71, 85.29, "Antik Cag")
)

df <- as.data.frame(veriler, stringsAsFactors = FALSE)
colnames(df) <- c("isim", "sehir", "ulke", "lat", "lon", "cag")
df$lat <- as.numeric(df$lat)
df$lon <- as.numeric(df$lon)
df$cag <- factor(df$cag, levels = c("Yakin Cag", "Yeni Cag", "Orta Cag", "Antik Cag"))

renkler <- c("Yakin Cag" = "#2ECC71", "Yeni Cag" = "#F1C40F", "Orta Cag" = "#E67E22", "Antik Cag" = "#C0392B")


ui <- page_navbar(
  title = paste(emoji_world, "DUNYA TARIH ATLASI"), 
  theme = bs_theme(bootswatch = "darkly", primary = "#007BFF"),
  
  nav_panel(
    title = paste(emoji_map, "Kure Haritasi"),
    card(
      card_header(paste(emoji_pin, "Tarihi Lokasyonlar")),
      full_screen = TRUE,
      plotlyOutput("mapPlot", height = "850px")
    )
  ),
  
  nav_panel(
    title = paste(emoji_chart, "Analiz Grafigi"),
    card(
      card_header(paste(emoji_time, "Donemlere Gore Dagilim")),
      full_screen = TRUE,
      plotlyOutput("barPlot", height = "800px")
    )
  )
)


server <- function(input, output) {
  
  output$mapPlot <- renderPlotly({
    plot_geo(df, lat = ~lat, lon = ~lon) %>%
      add_markers(
        text = ~paste0(
          "<b>", emoji_museum, " Eser Adi: </b> ", isim, "<br>",  
          "<b>", emoji_city, " Sehir: </b> ", sehir, "<br>", 
          "<b>", emoji_world, " Ulke: </b> ", ulke, "<br>",
          "<b>", emoji_time, " Donem: </b> ", cag                   
        ),
        color = ~cag,
        colors = renkler,
        size = I(15), 
        hoverinfo = "text",
        marker = list(
          symbol = "circle", 
          line = list(color = "white", width = 1.5)
        )
      ) %>%
      layout(
        paper_bgcolor = "#222222", 
        legend = list(
          orientation = "h",   
          xanchor = "center",
          x = 0.5,
          y = -0.05,
          font = list(color = "white")
        ),
        geo = list(
          bgcolor = "#222222", 
          projection = list(type = 'orthographic'),
          showland = TRUE, landcolor = "#1B5E20", 
          showocean = TRUE, oceancolor = "#011a33"
        )
      )
  })
  
  output$barPlot <- renderPlotly({
    eser_counts <- as.data.frame(table(df$cag))
    colnames(eser_counts) <- c("Cag", "Sayi")
    plot_ly(eser_counts, x = ~Cag, y = ~Sayi, type = "bar",
            marker = list(color = c("#2ECC71", "#F1C40F", "#E67E22", "#C0392B"))) %>%
      layout(
        xaxis = list(title = "Donem", color = "white"),
        yaxis = list(title = "Eser Sayisi", color = "white"),
        paper_bgcolor = "rgba(0,0,0,0)",
        plot_bgcolor = "rgba(0,0,0,0)",
        font = list(color = "white")
      )
  })
}

shinyApp(ui = ui, server = server)
