################################################################################
################################################################################

#Ideological Positioning in the Field

#lemmatized_short$ID <- lemmatized_short$doc_id
#lemmatized_short = subset(lemmatized_short, select = -c(1)) #drop first IDs
#df_lemma <- merge(df_short,lemmatized_short, by="ID")

################################################################################
################################################################################

CMDdemokrasi <- readRDS("/Users/osmandemirbag/Desktop/TBMM/CMDdemokrasi.Rds")

# Prepare data 
CMD_short <- CMDdemokrasi[CMDdemokrasi$cmd > 1, ]
CMD_short <- CMD_short[!duplicated(CMD_short[,-2]),]
df_short = subset(CMD_short, select = -c(1)) #drop first IDs

#load word translations xml

translations_last <- read_excel("~/Desktop/translations_last.xlsx")

df_short$token <- quanteda::tokens(df_short$Speeches,remove_punct = TRUE, remove_numbers = TRUE, remove_symbols = TRUE,padding = TRUE) %>%
  tokens_tolower()

df_freq_100 = tokens_select(df_short$token, pattern = c(translations_last$Words))
df_short = subset(df_short, select = -c(23)) #drop token variable

df_short$ülke = as.numeric(lapply(df_freq_100, function(x) length(which(x == "ülke"))))
df_short$hak = as.numeric(lapply(df_freq_100, function(x) length(which(x == "hak"))))
df_short$devlet = as.numeric(lapply(df_freq_100, function(x) length(which(x == "devlet"))))
df_short$hukuk = as.numeric(lapply(df_freq_100, function(x) length(which(x == "hukuk"))))
df_short$özgürlük = as.numeric(lapply(df_freq_100, function(x) length(which(x == "özgürlük"))))
df_short$insan = as.numeric(lapply(df_freq_100, function(x) length(which(x == "insan"))))
df_short$iktidar = as.numeric(lapply(df_freq_100, function(x) length(which(x == "iktidar"))))
df_short$karşı = as.numeric(lapply(df_freq_100, function(x) length(which(x == "karşı"))))
df_short$türkiye = as.numeric(lapply(df_freq_100, function(x) length(which(x == "türkiye"))))

df_short$sorun = as.numeric(lapply(df_freq_100, function(x) length(which(x == "sorun"))))
df_short$zaman = as.numeric(lapply(df_freq_100, function(x) length(which(x == "zaman"))))
df_short$irade = as.numeric(lapply(df_freq_100, function(x) length(which(x == "irade"))))
df_short$mücadele = as.numeric(lapply(df_freq_100, function(x) length(which(x == "mücadele"))))
df_short$orta = as.numeric(lapply(df_freq_100, function(x) length(which(x == "orta"))))
df_short$toplum = as.numeric(lapply(df_freq_100, function(x) length(which(x == "toplum"))))
df_short$konu = as.numeric(lapply(df_freq_100, function(x) length(which(x == "konu"))))
df_short$seçim = as.numeric(lapply(df_freq_100, function(x) length(which(x == "seçim"))))
df_short$yasa = as.numeric(lapply(df_freq_100, function(x) length(which(x == "yasa"))))

df_short$yönetim = as.numeric(lapply(df_freq_100, function(x) length(which(x == "yönetim"))))
df_short$millî = as.numeric(lapply(df_freq_100, function(x) length(which(x == "millî"))))
df_short$rejim = as.numeric(lapply(df_freq_100, function(x) length(which(x == "rejim"))))
df_short$ifade = as.numeric(lapply(df_freq_100, function(x) length(which(x == "ifade"))))
df_short$yargı = as.numeric(lapply(df_freq_100, function(x) length(which(x == "yargı"))))
df_short$tarih = as.numeric(lapply(df_freq_100, function(x) length(which(x == "tarih"))))
df_short$dünya = as.numeric(lapply(df_freq_100, function(x) length(which(x == "dünya"))))
df_short$terör = as.numeric(lapply(df_freq_100, function(x) length(which(x == "terör"))))
df_short$güç = as.numeric(lapply(df_freq_100, function(x) length(which(x == "güç"))))

df_short$doğru = as.numeric(lapply(df_freq_100, function(x) length(which(x == "doğru"))))
df_short$karar = as.numeric(lapply(df_freq_100, function(x) length(which(x == "karar"))))
df_short$türk = as.numeric(lapply(df_freq_100, function(x) length(which(x == "türk"))))
df_short$kur = as.numeric(lapply(df_freq_100, function(x) length(which(x == "kur"))))
df_short$süreç = as.numeric(lapply(df_freq_100, function(x) length(which(x == "süreç"))))
df_short$taraf = as.numeric(lapply(df_freq_100, function(x) length(which(x == "taraf"))))
df_short$iş = as.numeric(lapply(df_freq_100, function(x) length(which(x == "iş"))))
df_short$kurum = as.numeric(lapply(df_freq_100, function(x) length(which(x == "kurum"))))
df_short$dış = as.numeric(lapply(df_freq_100, function(x) length(which(x == "dış"))))

df_short$ilke = as.numeric(lapply(df_freq_100, function(x) length(which(x == "ilke"))))
df_short$saygı = as.numeric(lapply(df_freq_100, function(x) length(which(x == "saygı"))))
df_short$kan = as.numeric(lapply(df_freq_100, function(x) length(which(x == "kan"))))
df_short$toplumsal = as.numeric(lapply(df_freq_100, function(x) length(which(x == "toplumsal"))))
df_short$politika = as.numeric(lapply(df_freq_100, function(x) length(which(x == "politika"))))
df_short$gerçek = as.numeric(lapply(df_freq_100, function(x) length(which(x == "gerçek"))))
df_short$parlamento = as.numeric(lapply(df_freq_100, function(x) length(which(x == "parlamento"))))
df_short$güvenlik = as.numeric(lapply(df_freq_100, function(x) length(which(x == "güvenlik"))))
df_short$yapı = as.numeric(lapply(df_freq_100, function(x) length(which(x == "yapı"))))

df_short$iyi = as.numeric(lapply(df_freq_100, function(x) length(which(x == "iyi"))))
df_short$hayat = as.numeric(lapply(df_freq_100, function(x) length(which(x == "hayat"))))
df_short$kuvvet = as.numeric(lapply(df_freq_100, function(x) length(which(x == "kuvvet"))))
df_short$kürt = as.numeric(lapply(df_freq_100, function(x) length(which(x == "kürt"))))
df_short$nokta = as.numeric(lapply(df_freq_100, function(x) length(which(x == "nokta"))))
df_short$ortak = as.numeric(lapply(df_freq_100, function(x) length(which(x == "ortak"))))
df_short$örgüt = as.numeric(lapply(df_freq_100, function(x) length(which(x == "örgüt"))))
df_short$sivil = as.numeric(lapply(df_freq_100, function(x) length(which(x == "sivil"))))
df_short$mahkeme = as.numeric(lapply(df_freq_100, function(x) length(which(x == "mahkeme"))))

df_short$talep = as.numeric(lapply(df_freq_100, function(x) length(which(x == "talep"))))
df_short$ekonomi = as.numeric(lapply(df_freq_100, function(x) length(which(x == "ekonomi"))))
df_short$temmuz = as.numeric(lapply(df_freq_100, function(x) length(which(x == "temmuz"))))
df_short$kişi = as.numeric(lapply(df_freq_100, function(x) length(which(x == "kişi"))))
df_short$kadın = as.numeric(lapply(df_freq_100, function(x) length(which(x == "kadın"))))
df_short$kültür = as.numeric(lapply(df_freq_100, function(x) length(which(x == "kültür"))))
df_short$görev = as.numeric(lapply(df_freq_100, function(x) length(which(x == "görev"))))
df_short$üstünlük = as.numeric(lapply(df_freq_100, function(x) length(which(x == "üstünlük"))))
df_short$sonuç = as.numeric(lapply(df_freq_100, function(x) length(which(x == "sonuç"))))

df_short$egemenlik = as.numeric(lapply(df_freq_100, function(x) length(which(x == "egemenlik"))))
df_short$yerel = as.numeric(lapply(df_freq_100, function(x) length(which(x == "yerel"))))
df_short$ihtiyaç = as.numeric(lapply(df_freq_100, function(x) length(which(x == "ihtiyaç"))))
df_short$uygulama = as.numeric(lapply(df_freq_100, function(x) length(which(x == "uygulama"))))
df_short$kavram = as.numeric(lapply(df_freq_100, function(x) length(which(x == "kavram"))))
df_short$müdahale = as.numeric(lapply(df_freq_100, function(x) length(which(x == "müdahale"))))
df_short$yaşam = as.numeric(lapply(df_freq_100, function(x) length(which(x == "yaşam"))))
df_short$kural = as.numeric(lapply(df_freq_100, function(x) length(which(x == "kural"))))
df_short$ilk = as.numeric(lapply(df_freq_100, function(x) length(which(x == "ilk"))))

df_short$yetki = as.numeric(lapply(df_freq_100, function(x) length(which(x == "yetki"))))
df_short$özgür = as.numeric(lapply(df_freq_100, function(x) length(which(x == "özgür"))))
df_short$vatandaş = as.numeric(lapply(df_freq_100, function(x) length(which(x == "vatandaş"))))
df_short$eşit = as.numeric(lapply(df_freq_100, function(x) length(which(x == "eşit"))))
df_short$ortam = as.numeric(lapply(df_freq_100, function(x) length(which(x == "ortam"))))
df_short$şiddet = as.numeric(lapply(df_freq_100, function(x) length(which(x == "şiddet"))))
df_short$teklif = as.numeric(lapply(df_freq_100, function(x) length(which(x == "teklif"))))
df_short$hedef = as.numeric(lapply(df_freq_100, function(x) length(which(x == "hedef"))))
df_short$medya = as.numeric(lapply(df_freq_100, function(x) length(which(x == "medya"))))

df_short$girişim = as.numeric(lapply(df_freq_100, function(x) length(which(x == "girişim"))))
df_short$varlık = as.numeric(lapply(df_freq_100, function(x) length(which(x == "varlık"))))
df_short$temsil = as.numeric(lapply(df_freq_100, function(x) length(which(x == "temsil"))))
df_short$ilişki = as.numeric(lapply(df_freq_100, function(x) length(which(x == "ilişki"))))
df_short$süre = as.numeric(lapply(df_freq_100, function(x) length(which(x == "süre"))))
df_short$hesap = as.numeric(lapply(df_freq_100, function(x) length(which(x == "hesap"))))
df_short$silah = as.numeric(lapply(df_freq_100, function(x) length(which(x == "silah"))))
df_short$inanç = as.numeric(lapply(df_freq_100, function(x) length(which(x == "inanç"))))
df_short$dil = as.numeric(lapply(df_freq_100, function(x) length(which(x == "dil"))))

df_short$savaş = as.numeric(lapply(df_freq_100, function(x) length(which(x == "savaş"))))
df_short$düşünce = as.numeric(lapply(df_freq_100, function(x) length(which(x == "düşünce"))))
df_short$eğitim = as.numeric(lapply(df_freq_100, function(x) length(which(x == "eğitim"))))
df_short$denetim = as.numeric(lapply(df_freq_100, function(x) length(which(x == "denetim"))))
df_short$vesayet = as.numeric(lapply(df_freq_100, function(x) length(which(x == "vesayet"))))
df_short$güvence = as.numeric(lapply(df_freq_100, function(x) length(which(x == "güvence"))))
df_short$olay = as.numeric(lapply(df_freq_100, function(x) length(which(x == "olay"))))
df_short$yeniden = as.numeric(lapply(df_freq_100, function(x) length(which(x == "yeniden"))))
df_short$şart = as.numeric(lapply(df_freq_100, function(x) length(which(x == "şart"))))
df_short$göz = as.numeric(lapply(df_freq_100, function(x) length(which(x == "göz"))))

short_chp <- df_short %>% filter(Speaker_party=="CHP")
short_akp <- df_short %>% filter(Speaker_party=="AKP AK Party")
short_mhp <- df_short %>% filter(Speaker_party=="MHP")
short_hdp <- df_short %>% filter(Speaker_party=="HDP")

short_chp$sum_of_words <- quanteda::ntoken(short_chp$Speeches,remove_punct = TRUE, remove_numbers = TRUE, remove_symbols = TRUE,padding = TRUE) %>%
  sum()
short_chp$sum_of_words = as.numeric(short_chp$sum_of_words, force=TRUE)

short_akp$sum_of_words <- quanteda::ntoken(short_akp$Speeches,remove_punct = TRUE, remove_numbers = TRUE, remove_symbols = TRUE,padding = TRUE) %>%
  sum()
short_akp$sum_of_words = as.numeric(short_akp$sum_of_words)

short_mhp$sum_of_words <- quanteda::ntoken(short_mhp$Speeches,remove_punct = TRUE, remove_numbers = TRUE, remove_symbols = TRUE,padding = TRUE) %>%
  sum()
short_mhp$sum_of_words = as.numeric(short_mhp$sum_of_words)

short_hdp$sum_of_words <- quanteda::ntoken(short_hdp$Speeches,remove_punct = TRUE, remove_numbers = TRUE, remove_symbols = TRUE,padding = TRUE) %>%
  sum()
short_hdp$sum_of_words = as.numeric(short_hdp$sum_of_words)


short_chp_demokrasi = short_chp %>% summarise(country = sum(ülke/sum_of_words),
                                              right = sum(hak/sum_of_words),
                                              state = sum(devlet/sum_of_words),
                                              law = sum(hukuk/sum_of_words),
                                              freedom = sum(özgürlük/sum_of_words),
                                              human = sum(insan/sum_of_words),
                                              power = sum(iktidar/sum_of_words),
                                              contra = sum(karşı/sum_of_words),
                                              turkey = sum(türkiye/sum_of_words),
                                              problem = sum(sorun/sum_of_words),
                                              time = sum(zaman/sum_of_words),
                                              will = sum(irade/sum_of_words),
                                              struggle = sum(mücadele/sum_of_words),
                                              central = sum(orta/sum_of_words),
                                              society = sum(toplum/sum_of_words),
                                              topic = sum(konu/sum_of_words),
                                              election = sum(seçim/sum_of_words),
                                              code = sum(yasa/sum_of_words),
                                              
                                              government = sum(yönetim/sum_of_words),
                                              national = sum(millî/sum_of_words),
                                              regime = sum(rejim/sum_of_words),
                                              expression = sum(ifade/sum_of_words),
                                              jurisdiction = sum(yargı/sum_of_words),
                                              history = sum(tarih/sum_of_words),
                                              world = sum(dünya/sum_of_words),
                                              terror = sum(terör/sum_of_words),
                                              strength = sum(güç/sum_of_words),
                                              
                                              accurate = sum(doğru/sum_of_words),
                                              decision = sum(karar/sum_of_words),
                                              turkish = sum(türk/sum_of_words),
                                              rate = sum(kur/sum_of_words),
                                              process = sum(süreç/sum_of_words),
                                              side = sum(taraf/sum_of_words),
                                              work = sum(iş/sum_of_words),
                                              institution = sum(kurum/sum_of_words),
                                              outer = sum(dış/sum_of_words),
                                              
                                              principle = sum(ilke/sum_of_words),
                                              respect = sum(saygı/sum_of_words),
                                              blood = sum(kan/sum_of_words),
                                              societal = sum(toplumsal/sum_of_words),
                                              politics = sum(politika/sum_of_words),
                                              real = sum(gerçek/sum_of_words),
                                              parliament = sum(parlamento/sum_of_words),
                                              security = sum(güvenlik/sum_of_words),
                                              structure = sum(yapı/sum_of_words),
                                              
                                              good = sum(iyi/sum_of_words),
                                              life = sum(hayat/sum_of_words),
                                              force = sum(kuvvet/sum_of_words),
                                              kurdish = sum(kürt/sum_of_words),
                                              point = sum(nokta/sum_of_words),
                                              common = sum(ortak/sum_of_words),
                                              organization = sum(örgüt/sum_of_words),
                                              civil = sum(sivil/sum_of_words),
                                              court = sum(mahkeme/sum_of_words),
                                              
                                              demand = sum(talep/sum_of_words),
                                              economics = sum(ekonomi/sum_of_words),
                                              july = sum(temmuz/sum_of_words),
                                              person = sum(kişi/sum_of_words),
                                              woman = sum(kadın/sum_of_words),
                                              culture = sum(kültür/sum_of_words),
                                              duty = sum(görev/sum_of_words),
                                              superiority = sum(üstünlük/sum_of_words),
                                              result = sum(sonuç/sum_of_words),
                                              
                                              sovereignty = sum(egemenlik/sum_of_words),
                                              local = sum(yerel/sum_of_words),
                                              need = sum(ihtiyaç/sum_of_words),
                                              application = sum(uygulama/sum_of_words),
                                              concept = sum(kavram/sum_of_words),
                                              intervention = sum(müdahale/sum_of_words),
                                              experience = sum(yaşam/sum_of_words),
                                              rule= sum(kural/sum_of_words),
                                              first = sum(ilk/sum_of_words),
                                              
                                              warrant = sum(yetki/sum_of_words),
                                              liberal = sum(özgür/sum_of_words),
                                              citizen = sum(vatandaş/sum_of_words),
                                              equal = sum(eşit/sum_of_words),
                                              context = sum(ortam/sum_of_words),
                                              violence = sum(şiddet/sum_of_words),
                                              proposal = sum(teklif/sum_of_words),
                                              target = sum(hedef/sum_of_words),
                                              press = sum(medya/sum_of_words),
                                              
                                              attempt = sum(girişim/sum_of_words),
                                              wealth = sum(varlık/sum_of_words),
                                              representation = sum(temsil/sum_of_words),
                                              relation = sum(ilişki/sum_of_words),
                                              period = sum(süre/sum_of_words),
                                              calculation = sum(hesap/sum_of_words),
                                              gun = sum(silah/sum_of_words),
                                              belief = sum(inanç/sum_of_words),
                                              language = sum(dil/sum_of_words),
                                              
                                              war = sum(savaş/sum_of_words),
                                              idea = sum(düşünce/sum_of_words),
                                              education = sum(eğitim/sum_of_words),
                                              inspection = sum(denetim/sum_of_words),
                                              tutelage = sum(vesayet/sum_of_words),
                                              assurance = sum(güvence/sum_of_words),
                                              case = sum(olay/sum_of_words),
                                              again = sum(yeniden/sum_of_words),
                                              condition = sum(şart/sum_of_words),
                                              eye = sum(göz/sum_of_words))


short_mhp_demokrasi = short_mhp %>% summarise(country = sum(ülke/sum_of_words),
                                              right = sum(hak/sum_of_words),
                                              state = sum(devlet/sum_of_words),
                                              law = sum(hukuk/sum_of_words),
                                              freedom = sum(özgürlük/sum_of_words),
                                              human = sum(insan/sum_of_words),
                                              power = sum(iktidar/sum_of_words),
                                              contra = sum(karşı/sum_of_words),
                                              turkey = sum(türkiye/sum_of_words),
                                              
                                              problem = sum(sorun/sum_of_words),
                                              time = sum(zaman/sum_of_words),
                                              will = sum(irade/sum_of_words),
                                              struggle = sum(mücadele/sum_of_words),
                                              central = sum(orta/sum_of_words),
                                              society = sum(toplum/sum_of_words),
                                              topic = sum(konu/sum_of_words),
                                              election = sum(seçim/sum_of_words),
                                              code = sum(yasa/sum_of_words),
                                              
                                              government = sum(yönetim/sum_of_words),
                                              national = sum(millî/sum_of_words),
                                              regime = sum(rejim/sum_of_words),
                                              expression = sum(ifade/sum_of_words),
                                              jurisdiction = sum(yargı/sum_of_words),
                                              history = sum(tarih/sum_of_words),
                                              world = sum(dünya/sum_of_words),
                                              terror = sum(terör/sum_of_words),
                                              strength = sum(güç/sum_of_words),
                                              
                                              accurate = sum(doğru/sum_of_words),
                                              decision = sum(karar/sum_of_words),
                                              turkish = sum(türk/sum_of_words),
                                              rate = sum(kur/sum_of_words),
                                              process = sum(süreç/sum_of_words),
                                              side = sum(taraf/sum_of_words),
                                              work = sum(iş/sum_of_words),
                                              institution = sum(kurum/sum_of_words),
                                              outer = sum(dış/sum_of_words),
                                              
                                              principle = sum(ilke/sum_of_words),
                                              respect = sum(saygı/sum_of_words),
                                              blood = sum(kan/sum_of_words),
                                              societal = sum(toplumsal/sum_of_words),
                                              politics = sum(politika/sum_of_words),
                                              real = sum(gerçek/sum_of_words),
                                              parliament = sum(parlamento/sum_of_words),
                                              security = sum(güvenlik/sum_of_words),
                                              structure = sum(yapı/sum_of_words),
                                              
                                              good = sum(iyi/sum_of_words),
                                              life = sum(hayat/sum_of_words),
                                              force = sum(kuvvet/sum_of_words),
                                              kurdish = sum(kürt/sum_of_words),
                                              point = sum(nokta/sum_of_words),
                                              common = sum(ortak/sum_of_words),
                                              organization = sum(örgüt/sum_of_words),
                                              civil = sum(sivil/sum_of_words),
                                              court = sum(mahkeme/sum_of_words),
                                              
                                              demand = sum(talep/sum_of_words),
                                              economics = sum(ekonomi/sum_of_words),
                                              july = sum(temmuz/sum_of_words),
                                              person = sum(kişi/sum_of_words),
                                              woman = sum(kadın/sum_of_words),
                                              culture = sum(kültür/sum_of_words),
                                              duty = sum(görev/sum_of_words),
                                              superiority = sum(üstünlük/sum_of_words),
                                              result = sum(sonuç/sum_of_words),
                                              
                                              sovereignty = sum(egemenlik/sum_of_words),
                                              local = sum(yerel/sum_of_words),
                                              need = sum(ihtiyaç/sum_of_words),
                                              application = sum(uygulama/sum_of_words),
                                              concept = sum(kavram/sum_of_words),
                                              intervention = sum(müdahale/sum_of_words),
                                              experience = sum(yaşam/sum_of_words),
                                              rule= sum(kural/sum_of_words),
                                              first = sum(ilk/sum_of_words),
                                              
                                              warrant = sum(yetki/sum_of_words),
                                              liberal = sum(özgür/sum_of_words),
                                              citizen = sum(vatandaş/sum_of_words),
                                              equal = sum(eşit/sum_of_words),
                                              context = sum(ortam/sum_of_words),
                                              violence = sum(şiddet/sum_of_words),
                                              proposal = sum(teklif/sum_of_words),
                                              target = sum(hedef/sum_of_words),
                                              press = sum(medya/sum_of_words),
                                              
                                              attempt = sum(girişim/sum_of_words),
                                              wealth = sum(varlık/sum_of_words),
                                              representation = sum(temsil/sum_of_words),
                                              relation = sum(ilişki/sum_of_words),
                                              period = sum(süre/sum_of_words),
                                              calculation = sum(hesap/sum_of_words),
                                              gun = sum(silah/sum_of_words),
                                              belief = sum(inanç/sum_of_words),
                                              language = sum(dil/sum_of_words),
                                              
                                              war = sum(savaş/sum_of_words),
                                              idea = sum(düşünce/sum_of_words),
                                              education = sum(eğitim/sum_of_words),
                                              inspection = sum(denetim/sum_of_words),
                                              tutelage = sum(vesayet/sum_of_words),
                                              assurance = sum(güvence/sum_of_words),
                                              case = sum(olay/sum_of_words),
                                              again = sum(yeniden/sum_of_words),
                                              condition = sum(şart/sum_of_words),
                                              eye = sum(göz/sum_of_words))

short_akp_demokrasi = short_akp %>% summarise(country = sum(ülke/sum_of_words),
                                              right = sum(hak/sum_of_words),
                                              state = sum(devlet/sum_of_words),
                                              law = sum(hukuk/sum_of_words),
                                              freedom = sum(özgürlük/sum_of_words),
                                              human = sum(insan/sum_of_words),
                                              power = sum(iktidar/sum_of_words),
                                              contra = sum(karşı/sum_of_words),
                                              turkey = sum(türkiye/sum_of_words),
                                              
                                              problem = sum(sorun/sum_of_words),
                                              time = sum(zaman/sum_of_words),
                                              will = sum(irade/sum_of_words),
                                              struggle = sum(mücadele/sum_of_words),
                                              central = sum(orta/sum_of_words),
                                              society = sum(toplum/sum_of_words),
                                              topic = sum(konu/sum_of_words),
                                              election = sum(seçim/sum_of_words),
                                              code = sum(yasa/sum_of_words),
                                              
                                              government = sum(yönetim/sum_of_words),
                                              national = sum(millî/sum_of_words),
                                              regime = sum(rejim/sum_of_words),
                                              expression = sum(ifade/sum_of_words),
                                              jurisdiction = sum(yargı/sum_of_words),
                                              history = sum(tarih/sum_of_words),
                                              world = sum(dünya/sum_of_words),
                                              terror = sum(terör/sum_of_words),
                                              strength = sum(güç/sum_of_words),
                                              
                                              accurate = sum(doğru/sum_of_words),
                                              decision = sum(karar/sum_of_words),
                                              turkish = sum(türk/sum_of_words),
                                              rate = sum(kur/sum_of_words),
                                              process = sum(süreç/sum_of_words),
                                              side = sum(taraf/sum_of_words),
                                              work = sum(iş/sum_of_words),
                                              institution = sum(kurum/sum_of_words),
                                              outer = sum(dış/sum_of_words),
                                              
                                              principle = sum(ilke/sum_of_words),
                                              respect = sum(saygı/sum_of_words),
                                              blood = sum(kan/sum_of_words),
                                              societal = sum(toplumsal/sum_of_words),
                                              politics = sum(politika/sum_of_words),
                                              real = sum(gerçek/sum_of_words),
                                              parliament = sum(parlamento/sum_of_words),
                                              security = sum(güvenlik/sum_of_words),
                                              structure = sum(yapı/sum_of_words),
                                              
                                              good = sum(iyi/sum_of_words),
                                              life = sum(hayat/sum_of_words),
                                              force = sum(kuvvet/sum_of_words),
                                              kurdish = sum(kürt/sum_of_words),
                                              point = sum(nokta/sum_of_words),
                                              common = sum(ortak/sum_of_words),
                                              organization = sum(örgüt/sum_of_words),
                                              civil = sum(sivil/sum_of_words),
                                              court = sum(mahkeme/sum_of_words),
                                              
                                              demand = sum(talep/sum_of_words),
                                              economics = sum(ekonomi/sum_of_words),
                                              july = sum(temmuz/sum_of_words),
                                              person = sum(kişi/sum_of_words),
                                              woman = sum(kadın/sum_of_words),
                                              culture = sum(kültür/sum_of_words),
                                              duty = sum(görev/sum_of_words),
                                              superiority = sum(üstünlük/sum_of_words),
                                              result = sum(sonuç/sum_of_words),
                                              
                                              sovereignty = sum(egemenlik/sum_of_words),
                                              local = sum(yerel/sum_of_words),
                                              need = sum(ihtiyaç/sum_of_words),
                                              application = sum(uygulama/sum_of_words),
                                              concept = sum(kavram/sum_of_words),
                                              intervention = sum(müdahale/sum_of_words),
                                              experience = sum(yaşam/sum_of_words),
                                              rule= sum(kural/sum_of_words),
                                              first = sum(ilk/sum_of_words),
                                              
                                              warrant = sum(yetki/sum_of_words),
                                              liberal = sum(özgür/sum_of_words),
                                              citizen = sum(vatandaş/sum_of_words),
                                              equal = sum(eşit/sum_of_words),
                                              context = sum(ortam/sum_of_words),
                                              violence = sum(şiddet/sum_of_words),
                                              proposal = sum(teklif/sum_of_words),
                                              target = sum(hedef/sum_of_words),
                                              press = sum(medya/sum_of_words),
                                              
                                              attempt = sum(girişim/sum_of_words),
                                              wealth = sum(varlık/sum_of_words),
                                              representation = sum(temsil/sum_of_words),
                                              relation = sum(ilişki/sum_of_words),
                                              period = sum(süre/sum_of_words),
                                              calculation = sum(hesap/sum_of_words),
                                              gun = sum(silah/sum_of_words),
                                              belief = sum(inanç/sum_of_words),
                                              language = sum(dil/sum_of_words),
                                              
                                              war = sum(savaş/sum_of_words),
                                              idea = sum(düşünce/sum_of_words),
                                              education = sum(eğitim/sum_of_words),
                                              inspection = sum(denetim/sum_of_words),
                                              tutelage = sum(vesayet/sum_of_words),
                                              assurance = sum(güvence/sum_of_words),
                                              case = sum(olay/sum_of_words),
                                              again = sum(yeniden/sum_of_words),
                                              condition = sum(şart/sum_of_words),
                                              eye = sum(göz/sum_of_words))

short_hdp_demokrasi = short_hdp %>% summarise(country = sum(ülke/sum_of_words),
                                              right = sum(hak/sum_of_words),
                                              state = sum(devlet/sum_of_words),
                                              law = sum(hukuk/sum_of_words),
                                              freedom = sum(özgürlük/sum_of_words),
                                              human = sum(insan/sum_of_words),
                                              power = sum(iktidar/sum_of_words),
                                              contra = sum(karşı/sum_of_words),
                                              turkey = sum(türkiye/sum_of_words),
                                              
                                              problem = sum(sorun/sum_of_words),
                                              time = sum(zaman/sum_of_words),
                                              will = sum(irade/sum_of_words),
                                              struggle = sum(mücadele/sum_of_words),
                                              central = sum(orta/sum_of_words),
                                              society = sum(toplum/sum_of_words),
                                              topic = sum(konu/sum_of_words),
                                              election = sum(seçim/sum_of_words),
                                              code = sum(yasa/sum_of_words),
                                              
                                              government = sum(yönetim/sum_of_words),
                                              national = sum(millî/sum_of_words),
                                              regime = sum(rejim/sum_of_words),
                                              expression = sum(ifade/sum_of_words),
                                              jurisdiction = sum(yargı/sum_of_words),
                                              history = sum(tarih/sum_of_words),
                                              world = sum(dünya/sum_of_words),
                                              terror = sum(terör/sum_of_words),
                                              strength = sum(güç/sum_of_words),
                                              
                                              accurate = sum(doğru/sum_of_words),
                                              decision = sum(karar/sum_of_words),
                                              turkish = sum(türk/sum_of_words),
                                              rate = sum(kur/sum_of_words),
                                              process = sum(süreç/sum_of_words),
                                              side = sum(taraf/sum_of_words),
                                              work = sum(iş/sum_of_words),
                                              institution = sum(kurum/sum_of_words),
                                              outer = sum(dış/sum_of_words),
                                              
                                              principle = sum(ilke/sum_of_words),
                                              respect = sum(saygı/sum_of_words),
                                              blood = sum(kan/sum_of_words),
                                              societal = sum(toplumsal/sum_of_words),
                                              politics = sum(politika/sum_of_words),
                                              real = sum(gerçek/sum_of_words),
                                              parliament = sum(parlamento/sum_of_words),
                                              security = sum(güvenlik/sum_of_words),
                                              structure = sum(yapı/sum_of_words),
                                              
                                              good = sum(iyi/sum_of_words),
                                              life = sum(hayat/sum_of_words),
                                              force = sum(kuvvet/sum_of_words),
                                              kurdish = sum(kürt/sum_of_words),
                                              point = sum(nokta/sum_of_words),
                                              common = sum(ortak/sum_of_words),
                                              organization = sum(örgüt/sum_of_words),
                                              civil = sum(sivil/sum_of_words),
                                              court = sum(mahkeme/sum_of_words),
                                              
                                              demand = sum(talep/sum_of_words),
                                              economics = sum(ekonomi/sum_of_words),
                                              july = sum(temmuz/sum_of_words),
                                              person = sum(kişi/sum_of_words),
                                              woman = sum(kadın/sum_of_words),
                                              culture = sum(kültür/sum_of_words),
                                              duty = sum(görev/sum_of_words),
                                              superiority = sum(üstünlük/sum_of_words),
                                              result = sum(sonuç/sum_of_words),
                                              
                                              sovereignty = sum(egemenlik/sum_of_words),
                                              local = sum(yerel/sum_of_words),
                                              need = sum(ihtiyaç/sum_of_words),
                                              application = sum(uygulama/sum_of_words),
                                              concept = sum(kavram/sum_of_words),
                                              intervention = sum(müdahale/sum_of_words),
                                              experience = sum(yaşam/sum_of_words),
                                              rule= sum(kural/sum_of_words),
                                              first = sum(ilk/sum_of_words),
                                              
                                              warrant = sum(yetki/sum_of_words),
                                              liberal = sum(özgür/sum_of_words),
                                              citizen = sum(vatandaş/sum_of_words),
                                              equal = sum(eşit/sum_of_words),
                                              context = sum(ortam/sum_of_words),
                                              violence = sum(şiddet/sum_of_words),
                                              proposal = sum(teklif/sum_of_words),
                                              target = sum(hedef/sum_of_words),
                                              press = sum(medya/sum_of_words),
                                              
                                              attempt = sum(girişim/sum_of_words),
                                              wealth = sum(varlık/sum_of_words),
                                              representation = sum(temsil/sum_of_words),
                                              relation = sum(ilişki/sum_of_words),
                                              period = sum(süre/sum_of_words),
                                              calculation = sum(hesap/sum_of_words),
                                              gun = sum(silah/sum_of_words),
                                              belief = sum(inanç/sum_of_words),
                                              language = sum(dil/sum_of_words),
                                              
                                              war = sum(savaş/sum_of_words),
                                              idea = sum(düşünce/sum_of_words),
                                              education = sum(eğitim/sum_of_words),
                                              inspection = sum(denetim/sum_of_words),
                                              tutelage = sum(vesayet/sum_of_words),
                                              assurance = sum(güvence/sum_of_words),
                                              case = sum(olay/sum_of_words),
                                              again = sum(yeniden/sum_of_words),
                                              condition = sum(şart/sum_of_words),
                                              eye = sum(göz/sum_of_words))
rownames(short_akp_demokrasi) <- "Justice and Development Party(AKP)"
rownames(short_chp_demokrasi) <- "Republican People's Party(CHP)"
rownames(short_mhp_demokrasi) <- "Nationalist Movement Party(MHP)"
rownames(short_hdp_demokrasi) <- "People's Democratic Party(HDP)"

short_akp_demokrasi <- t(short_akp_demokrasi)
short_hdp_demokrasi <- t(short_hdp_demokrasi)
short_chp_demokrasi <- t(short_chp_demokrasi)
short_mhp_demokrasi <- t(short_mhp_demokrasi)

short_akp_demokrasi <- as.data.frame(short_akp_demokrasi)
short_hdp_demokrasi <- as.data.frame(short_hdp_demokrasi)
short_chp_demokrasi <- as.data.frame(short_chp_demokrasi)
short_mhp_demokrasi <- as.data.frame(short_mhp_demokrasi)

short_akp_demokrasi <- t(short_akp_demokrasi)
short_hdp_demokrasi <- t(short_hdp_demokrasi)
short_chp_demokrasi <- t(short_chp_demokrasi)
short_mhp_demokrasi <- t(short_mhp_demokrasi)

short_akp_demokrasi <- as.data.frame(short_akp_demokrasi)
short_hdp_demokrasi <- as.data.frame(short_hdp_demokrasi)
short_chp_demokrasi <- as.data.frame(short_chp_demokrasi)
short_mhp_demokrasi <- as.data.frame(short_mhp_demokrasi)

akpchp <- rbind(short_akp_demokrasi,short_chp_demokrasi)
mhphdp <- rbind(short_mhp_demokrasi,short_hdp_demokrasi)
df_parties <- rbind(akpchp,mhphdp)

res.pca <- PCA(df_parties, scale.unit = TRUE, ncp = 5, graph = TRUE)
get_pca_var(res.pca)

habillage <- as.factor(translations_last$Memberships)
pca.plot <- fviz_pca_biplot(res.pca,
                            geom.var = c("point", "text"),
                            repel=TRUE)
ggpubr::ggpar(pca.plot,
              title = "Representation of Terms and Parties Together",
              subtitle = "Principal Component Analysis",
              xlab = "PC1 (%48.1)", ylab = "PC2(%30)",
              ggtheme = theme_gray(), 
              legend.title = "4 Different Meanings of Democracy",
              palette = "jco")

################################################################################
################################################################################