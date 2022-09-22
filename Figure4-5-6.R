
tbmm_corpus <- readRDS("/Users/osmandemirbag/Desktop/TBMM/TBMMCorpus.Rds")

# punctuation, tolower
tbmm_corpus$Speeches <- gsub("NA", "", tbmm_corpus$Speeches) %>%
  gsub("\\s+"," ", .) %>% 
  trimws(., "left")

tbmm_corpus$Speeches <- gsub('[[:punct:] ]+',' ', tbmm_corpus$Speeches) %>% tolower()

short_chp <- tbmm_corpus %>% filter(Speaker_party=="CHP")
short_akp <- tbmm_corpus %>% filter(Speaker_party=="AKP AK Party")
short_mhp <- tbmm_corpus %>% filter(Speaker_party=="MHP")
short_hdp <- tbmm_corpus %>% filter(Speaker_party=="HDP")


#support to chp

chp_chp_s1 <- as.numeric(nrow(short_chp[grepl(c("chp sıralarından alkışlar"), short_chp$Speeches),]))
chp_chp_s2 <- as.numeric(nrow(short_chp[grepl(c("chp sıralarından bravo sesleri"), short_chp$Speeches),]))
chp_chp_s3 <- as.numeric(nrow(short_chp[grepl(c("chp sıralarından doğru"), short_chp$Speeches),]))
chp_chp_s4 <- as.numeric(nrow(short_chp[grepl(c("chp sıralarından evet" ), short_chp$Speeches),]))

chp_akp_s1 <- as.numeric(nrow(short_chp[grepl(c("ak parti sıralarından alkışlar"), short_chp$Speeches),]))
chp_akp_s2 <- as.numeric(nrow(short_chp[grepl(c("ak parti sıralarından bravo sesleri"), short_chp$Speeches),]))
chp_akp_s3 <- as.numeric(nrow(short_chp[grepl(c("ak parti sıralarından doğru"), short_chp$Speeches),]))
chp_akp_s4 <- as.numeric(nrow(short_chp[grepl(c("ak parti sıralarından evet" ), short_chp$Speeches),]))

chp_mhp_s1 <- as.numeric(nrow(short_chp[grepl(c("mhp sıralarından alkışlar"), short_chp$Speeches),]))
chp_mhp_s2 <- as.numeric(nrow(short_chp[grepl(c("mhp sıralarından bravo sesleri"), short_chp$Speeches),]))
chp_mhp_s3 <- as.numeric(nrow(short_chp[grepl(c("mhp sıralarından doğru"), short_chp$Speeches),]))
chp_mhp_s4 <- as.numeric(nrow(short_chp[grepl(c("mhp sıralarından evet" ), short_chp$Speeches),]))

chp_hdp_s1 <- as.numeric(nrow(short_chp[grepl(c("hdp sıralarından alkışlar"), short_chp$Speeches),]))
chp_hdp_s2 <- as.numeric(nrow(short_chp[grepl(c("hdp sıralarından bravo sesleri"), short_chp$Speeches),]))
chp_hdp_s3 <- as.numeric(nrow(short_chp[grepl(c("hdp sıralarından doğru"), short_chp$Speeches),]))
chp_hdp_s4 <- as.numeric(nrow(short_chp[grepl(c("hdp sıralarından evet" ), short_chp$Speeches),]))

#Hostility to chp

chp_chp_h1 <- as.numeric(nrow(short_chp[grepl(c("chp sıralarından otur yerine sesleri"), short_chp$Speeches),]))
chp_chp_h2 <- as.numeric(nrow(short_chp[grepl(c("chp sıralarından gürültüler"), short_chp$Speeches),]))
chp_chp_h3 <- as.numeric(nrow(short_chp[grepl(c("chp sıralarından yuh"), short_chp$Speeches),]))
chp_chp_h4 <- as.numeric(nrow(short_chp[grepl(c("chp sıralarından ne alakası var sesleri"), short_chp$Speeches),]))
chp_chp_h5 <- as.numeric(nrow(short_chp[grepl(c("chp sıra kapaklarına vurmalar"), short_chp$Speeches),]))
chp_chp_h6 <- as.numeric(nrow(short_chp[grepl(c("chp sıralarından kürsü önünde toplanmalar" ), short_chp$Speeches),]))

chp_akp_h1 <- as.numeric(nrow(short_chp[grepl(c("ak parti sıralarından otur yerine sesleri"), short_chp$Speeches),]))
chp_akp_h2 <- as.numeric(nrow(short_chp[grepl(c("ak parti sıralarından gürültüler"), short_chp$Speeches),]))
chp_akp_h3 <- as.numeric(nrow(short_chp[grepl(c("ak parti sıralarından yuh"), short_chp$Speeches),]))
chp_akp_h4 <- as.numeric(nrow(short_chp[grepl(c("ak parti sıralarından ne alakası var sesleri"), short_chp$Speeches),]))
chp_akp_h5 <- as.numeric(nrow(short_chp[grepl(c("ak parti sıralarından sıra kapaklarına vurmalar"), short_chp$Speeches),]))
chp_akp_h6 <- as.numeric(nrow(short_chp[grepl(c("ak parti ve chp sıralarından karşılıklı laf atmalar"), short_chp$Speeches),]))
chp_akp_h7 <- as.numeric(nrow(short_chp[grepl(c("chp ve ak parti sıralarından karşılıklı laf atmalar"), short_chp$Speeches),]))
chp_akp_h8 <- as.numeric(nrow(short_chp[grepl(c("ak parti ve chp sıralarından karşılıklı sataşmalar"), short_chp$Speeches),]))
chp_akp_h9 <- as.numeric(nrow(short_chp[grepl(c("chp ve ak parti sıralarından karşılıklı sataşmalar"), short_chp$Speeches),]))
chp_akp_h10 <- as.numeric(nrow(short_chp[grepl(c("ak parti ve chp sıralarından birbirleri üzerine yürümeler" ), short_chp$Speeches),]))
chp_akp_h11 <- as.numeric(nrow(short_chp[grepl(c("chp ve ak parti sıralarından birbirleri üzerine yürümeler" ), short_chp$Speeches),]))
chp_akp_h12 <- as.numeric(nrow(short_chp[grepl(c("ak parti ve chp sıralarından karşılıklı konuşmalar" ), short_chp$Speeches),]))
chp_akp_h13 <- as.numeric(nrow(short_chp[grepl(c("chp ve ak parti sıralarından karşılıklı konuşmalar" ), short_chp$Speeches),]))
chp_akp_h14 <- as.numeric(nrow(short_chp[grepl(c("ak parti sıralarından kürsü önünde toplanmalar" ), short_chp$Speeches),]))

chp_mhp_h1 <- as.numeric(nrow(short_chp[grepl(c("mhp sıralarından otur yerine sesleri"), short_chp$Speeches),]))
chp_mhp_h2 <- as.numeric(nrow(short_chp[grepl(c("mhp sıralarından gürültüler"), short_chp$Speeches),]))
chp_mhp_h3 <- as.numeric(nrow(short_chp[grepl(c("mhp sıralarından yuh"), short_chp$Speeches),]))
chp_mhp_h4 <- as.numeric(nrow(short_chp[grepl(c("mhp sıralarından ne alakası var sesleri"), short_chp$Speeches),]))
chp_mhp_h5 <- as.numeric(nrow(short_chp[grepl(c("mhp sıralarından sıra kapaklarına vurmalar"), short_chp$Speeches),]))
chp_mhp_h6 <- as.numeric(nrow(short_chp[grepl(c("mhp ve chp sıralarından karşılıklı laf atmalar"), short_chp$Speeches),]))
chp_mhp_h7 <- as.numeric(nrow(short_chp[grepl(c("chp ve mhp sıralarından karşılıklı laf atmalar"), short_chp$Speeches),]))
chp_mhp_h8 <- as.numeric(nrow(short_chp[grepl(c("mhp ve chp sıralarından karşılıklı sataşmalar"), short_chp$Speeches),]))
chp_mhp_h9 <- as.numeric(nrow(short_chp[grepl(c("chp ve mhp sıralarından karşılıklı sataşmalar"), short_chp$Speeches),]))
chp_mhp_h10 <- as.numeric(nrow(short_chp[grepl(c("mhp ve chp sıralarından birbirleri üzerine yürümeler" ), short_chp$Speeches),]))
chp_mhp_h11 <- as.numeric(nrow(short_chp[grepl(c("chp ve mhp sıralarından birbirleri üzerine yürümeler" ), short_chp$Speeches),]))
chp_mhp_h12 <- as.numeric(nrow(short_chp[grepl(c("mhp ve chp sıralarından karşılıklı konuşmalar" ), short_chp$Speeches),]))
chp_mhp_h13 <- as.numeric(nrow(short_chp[grepl(c("chp ve mhp sıralarından karşılıklı konuşmalar" ), short_chp$Speeches),]))
chp_mhp_h14 <- as.numeric(nrow(short_chp[grepl(c("mhp sıralarından kürsü önünde toplanmalar" ), short_chp$Speeches),]))


chp_hdp_h1 <- as.numeric(nrow(short_chp[grepl(c("hdp sıralarından otur yerine sesleri"), short_chp$Speeches),]))
chp_hdp_h2 <- as.numeric(nrow(short_chp[grepl(c("hdp sıralarından gürültüler"), short_chp$Speeches),]))
chp_hdp_h3 <- as.numeric(nrow(short_chp[grepl(c("hdp sıralarından yuh"), short_chp$Speeches),]))
chp_hdp_h4 <- as.numeric(nrow(short_chp[grepl(c("hdp sıralarından ne alakası var sesleri"), short_chp$Speeches),]))
chp_hdp_h5 <- as.numeric(nrow(short_chp[grepl(c("hdp sıralarından sıra kapaklarına vurmalar"), short_chp$Speeches),]))
chp_hdp_h6 <- as.numeric(nrow(short_chp[grepl(c("hdp ve chp sıralarından karşılıklı laf atmalar"), short_chp$Speeches),]))
chp_hdp_h7 <- as.numeric(nrow(short_chp[grepl(c("chp ve hdp sıralarından karşılıklı laf atmalar"), short_chp$Speeches),]))
chp_hdp_h8 <- as.numeric(nrow(short_chp[grepl(c("hdp ve chp sıralarından karşılıklı sataşmalar"), short_chp$Speeches),]))
chp_hdp_h9 <- as.numeric(nrow(short_chp[grepl(c("chp ve hdp sıralarından karşılıklı sataşmalar"), short_chp$Speeches),]))
chp_hdp_h10 <- as.numeric(nrow(short_chp[grepl(c("hdp ve chp sıralarından birbirleri üzerine yürümeler" ), short_chp$Speeches),]))
chp_hdp_h11 <- as.numeric(nrow(short_chp[grepl(c("chp ve hdp sıralarından birbirleri üzerine yürümeler" ), short_chp$Speeches),]))
chp_hdp_h12 <- as.numeric(nrow(short_chp[grepl(c("hdp ve chp sıralarından karşılıklı konuşmalar" ), short_chp$Speeches),]))
chp_hdp_h13 <- as.numeric(nrow(short_chp[grepl(c("chp ve hdp sıralarından karşılıklı konuşmalar" ), short_chp$Speeches),]))
chp_hdp_h14 <- as.numeric(nrow(short_chp[grepl(c("hdp sıralarından kürsü önünde toplanmalar"), short_chp$Speeches),]))


#support to ak party

akp_chp_s1 <- as.numeric(nrow(short_akp[grepl(c("chp sıralarından alkışlar"), short_akp$Speeches),]))
akp_chp_s2 <- as.numeric(nrow(short_akp[grepl(c("chp sıralarından bravo sesleri"), short_akp$Speeches),]))
akp_chp_s3 <- as.numeric(nrow(short_akp[grepl(c("chp sıralarından doğru"), short_akp$Speeches),]))
akp_chp_s4 <- as.numeric(nrow(short_akp[grepl(c("chp sıralarından evet" ), short_akp$Speeches),]))

akp_akp_s1 <- as.numeric(nrow(short_akp[grepl(c("ak parti sıralarından alkışlar"), short_akp$Speeches),]))
akp_akp_s2 <- as.numeric(nrow(short_akp[grepl(c("ak parti sıralarından bravo sesleri"), short_akp$Speeches),]))
akp_akp_s3 <- as.numeric(nrow(short_akp[grepl(c("ak parti sıralarından doğru"), short_akp$Speeches),]))
akp_akp_s4 <- as.numeric(nrow(short_akp[grepl(c("ak parti sıralarından evet" ), short_akp$Speeches),]))

akp_mhp_s1 <- as.numeric(nrow(short_akp[grepl(c("mhp sıralarından alkışlar"), short_akp$Speeches),]))
akp_mhp_s2 <- as.numeric(nrow(short_akp[grepl(c("mhp sıralarından bravo sesleri"), short_akp$Speeches),]))
akp_mhp_s3 <- as.numeric(nrow(short_akp[grepl(c("mhp sıralarından doğru"), short_akp$Speeches),]))
akp_mhp_s4 <- as.numeric(nrow(short_akp[grepl(c("mhp sıralarından evet" ), short_akp$Speeches),]))

akp_hdp_s1 <- as.numeric(nrow(short_akp[grepl(c("hdp sıralarından alkışlar"), short_akp$Speeches),]))
akp_hdp_s2 <- as.numeric(nrow(short_akp[grepl(c("hdp sıralarından bravo sesleri"), short_akp$Speeches),]))
akp_hdp_s3 <- as.numeric(nrow(short_akp[grepl(c("hdp sıralarından doğru"), short_akp$Speeches),]))
akp_hdp_s4 <- as.numeric(nrow(short_akp[grepl(c("hdp sıralarından evet" ), short_akp$Speeches),]))

#Hostility to ak party

akp_akp_h1 <- as.numeric(nrow(short_akp[grepl(c("ak parti sıralarından otur yerine sesleri"), short_akp$Speeches),]))
akp_akp_h2 <- as.numeric(nrow(short_akp[grepl(c("ak parti sıralarından gürültüler"), short_akp$Speeches),]))
akp_akp_h3 <- as.numeric(nrow(short_akp[grepl(c("ak parti sıralarından yuh"), short_akp$Speeches),]))
akp_akp_h4 <- as.numeric(nrow(short_akp[grepl(c("ak parti sıralarından ne alakası var sesleri"), short_akp$Speeches),]))
akp_akp_h5 <- as.numeric(nrow(short_akp[grepl(c("ak parti sıra kapaklarına vurmalar"), short_akp$Speeches),]))
akp_akp_h6 <- as.numeric(nrow(short_akp[grepl(c("ak parti sıralarından kürsü önünde toplanmalar" ), short_akp$Speeches),]))

akp_chp_h1 <- as.numeric(nrow(short_akp[grepl(c("chp sıralarından otur yerine sesleri"), short_akp$Speeches),]))
akp_chp_h2 <- as.numeric(nrow(short_akp[grepl(c("chp sıralarından gürültüler"), short_akp$Speeches),]))
akp_chp_h3 <- as.numeric(nrow(short_akp[grepl(c("chp sıralarından yuh"), short_akp$Speeches),]))
akp_chp_h4 <- as.numeric(nrow(short_akp[grepl(c("chp sıralarından ne alakası var sesleri"), short_akp$Speeches),]))
akp_chp_h5 <- as.numeric(nrow(short_akp[grepl(c("chp sıralarından sıra kapaklarına vurmalar"), short_akp$Speeches),]))
akp_chp_h6 <- as.numeric(nrow(short_akp[grepl(c("chp ve ak parti sıralarından karşılıklı laf atmalar"), short_akp$Speeches),]))
akp_chp_h7 <- as.numeric(nrow(short_akp[grepl(c("ak parti ve chp sıralarından karşılıklı laf atmalar"), short_akp$Speeches),]))
akp_chp_h8 <- as.numeric(nrow(short_akp[grepl(c("ak parti ve chp sıralarından karşılıklı sataşmalar"), short_akp$Speeches),]))
akp_chp_h9 <- as.numeric(nrow(short_akp[grepl(c("chp ve ak parti sıralarından karşılıklı sataşmalar"), short_akp$Speeches),]))
akp_chp_h10 <- as.numeric(nrow(short_akp[grepl(c("ak parti ve chp sıralarından birbirleri üzerine yürümeler" ), short_akp$Speeches),]))
akp_chp_h11 <- as.numeric(nrow(short_akp[grepl(c("chp ve ak parti sıralarından birbirleri üzerine yürümeler" ), short_akp$Speeches),]))
akp_chp_h12 <- as.numeric(nrow(short_akp[grepl(c("ak parti ve chp sıralarından karşılıklı konuşmalar" ), short_akp$Speeches),]))
akp_chp_h13 <- as.numeric(nrow(short_akp[grepl(c("chp ve ak parti sıralarından karşılıklı konuşmalar" ), short_akp$Speeches),]))
akp_chp_h14 <- as.numeric(nrow(short_akp[grepl(c("chp sıralarından kürsü önünde toplanmalar" ), short_akp$Speeches),]))

akp_mhp_h1 <- as.numeric(nrow(short_akp[grepl(c("mhp sıralarından otur yerine sesleri"), short_akp$Speeches),]))
akp_mhp_h2 <- as.numeric(nrow(short_akp[grepl(c("mhp sıralarından gürültüler"), short_akp$Speeches),]))
akp_mhp_h3 <- as.numeric(nrow(short_akp[grepl(c("mhp sıralarından yuh"), short_akp$Speeches),]))
akp_mhp_h4 <- as.numeric(nrow(short_akp[grepl(c("mhp sıralarından ne alakası var sesleri"), short_akp$Speeches),]))
akp_mhp_h5 <- as.numeric(nrow(short_akp[grepl(c("mhp sıralarından sıra kapaklarına vurmalar"), short_akp$Speeches),]))
akp_mhp_h6 <- as.numeric(nrow(short_akp[grepl(c("mhp ve ak parti sıralarından karşılıklı laf atmalar"), short_akp$Speeches),]))
akp_mhp_h7 <- as.numeric(nrow(short_akp[grepl(c("ak prti ve mhp sıralarından karşılıklı laf atmalar"), short_akp$Speeches),]))
akp_mhp_h8 <- as.numeric(nrow(short_akp[grepl(c("mhp ve ak parti sıralarından karşılıklı sataşmalar"), short_akp$Speeches),]))
akp_mhp_h9 <- as.numeric(nrow(short_akp[grepl(c("ak parti ve mhp sıralarından karşılıklı sataşmalar"), short_akp$Speeches),]))
akp_mhp_h10 <- as.numeric(nrow(short_akp[grepl(c("mhp ve ak parti sıralarından birbirleri üzerine yürümeler" ), short_akp$Speeches),]))
akp_mhp_h11 <- as.numeric(nrow(short_akp[grepl(c("ak parti ve mhp sıralarından birbirleri üzerine yürümeler" ), short_akp$Speeches),]))
akp_mhp_h12 <- as.numeric(nrow(short_akp[grepl(c("mhp ve ak parti sıralarından karşılıklı konuşmalar" ), short_akp$Speeches),]))
akp_mhp_h13 <- as.numeric(nrow(short_akp[grepl(c("ak parti ve mhp sıralarından karşılıklı konuşmalar" ), short_akp$Speeches),]))
akp_mhp_h14 <- as.numeric(nrow(short_akp[grepl(c("mhp sıralarından kürsü önünde toplanmalar" ), short_akp$Speeches),]))

akp_hdp_h1 <- as.numeric(nrow(short_akp[grepl(c("hdp sıralarından otur yerine sesleri"), short_akp$Speeches),]))
akp_hdp_h2 <- as.numeric(nrow(short_akp[grepl(c("hdp sıralarından gürültüler"), short_akp$Speeches),]))
akp_hdp_h3 <- as.numeric(nrow(short_akp[grepl(c("hdp sıralarından yuh"), short_akp$Speeches),]))
akp_hdp_h4 <- as.numeric(nrow(short_akp[grepl(c("hdp sıralarından ne alakası var sesleri"), short_akp$Speeches),]))
akp_hdp_h5 <- as.numeric(nrow(short_akp[grepl(c("hdp sıralarından sıra kapaklarına vurmalar"), short_akp$Speeches),]))
akp_hdp_h6 <- as.numeric(nrow(short_akp[grepl(c("hdp ve ak parti sıralarından karşılıklı laf atmalar"), short_akp$Speeches),]))
akp_hdp_h7 <- as.numeric(nrow(short_akp[grepl(c("akp ve hdp sıralarından karşılıklı laf atmalar"), short_akp$Speeches),]))
akp_hdp_h8 <- as.numeric(nrow(short_akp[grepl(c("hdp ve ak parti sıralarından karşılıklı sataşmalar"), short_akp$Speeches),]))
akp_hdp_h9 <- as.numeric(nrow(short_akp[grepl(c("akp ve hdp sıralarından karşılıklı sataşmalar"), short_akp$Speeches),]))
akp_hdp_h10 <- as.numeric(nrow(short_akp[grepl(c("hdp ve ak parti sıralarından birbirleri üzerine yürümeler" ), short_akp$Speeches),]))
akp_hdp_h11 <- as.numeric(nrow(short_akp[grepl(c("akp ve hdp sıralarından birbirleri üzerine yürümeler" ), short_akp$Speeches),]))
akp_hdp_h12 <- as.numeric(nrow(short_akp[grepl(c("hdp ve ak parti sıralarından karşılıklı konuşmalar" ), short_akp$Speeches),]))
akp_hdp_h13 <- as.numeric(nrow(short_akp[grepl(c("akp ve hdp sıralarından karşılıklı konuşmalar" ), short_akp$Speeches),]))
akp_hdp_h14 <- as.numeric(nrow(short_akp[grepl(c("hdp sıralarından kürsü önünde toplanmalar" ), short_akp$Speeches),]))

#support to mhp
mhp_mhp_s1 <- as.numeric(nrow(short_mhp[grepl(c("mhp sıralarından alkışlar"), short_mhp$Speeches),]))
mhp_mhp_s2 <- as.numeric(nrow(short_mhp[grepl(c("mhp sıralarından bravo sesleri"), short_mhp$Speeches),]))
mhp_mhp_s3 <- as.numeric(nrow(short_mhp[grepl(c("mhp sıralarından doğru"), short_mhp$Speeches),]))
mhp_mhp_s4 <- as.numeric(nrow(short_mhp[grepl(c("mhp sıralarından evet" ), short_mhp$Speeches),]))

mhp_akp_s1 <- as.numeric(nrow(short_mhp[grepl(c("ak parti sıralarından alkışlar"), short_mhp$Speeches),]))
mhp_akp_s2 <- as.numeric(nrow(short_mhp[grepl(c("ak parti sıralarından bravo sesleri"), short_mhp$Speeches),]))
mhp_akp_s3 <- as.numeric(nrow(short_mhp[grepl(c("ak parti sıralarından doğru"), short_mhp$Speeches),]))
mhp_akp_s4 <- as.numeric(nrow(short_mhp[grepl(c("ak parti sıralarından evet" ), short_mhp$Speeches),]))

mhp_chp_s1 <- as.numeric(nrow(short_mhp[grepl(c("chp sıralarından alkışlar"), short_mhp$Speeches),]))
mhp_chp_s2 <- as.numeric(nrow(short_mhp[grepl(c("chp sıralarından bravo sesleri"), short_mhp$Speeches),]))
mhp_chp_s3 <- as.numeric(nrow(short_mhp[grepl(c("chp sıralarından doğru"), short_mhp$Speeches),]))
mhp_chp_s4 <- as.numeric(nrow(short_mhp[grepl(c("chp sıralarından evet" ), short_mhp$Speeches),]))

mhp_hdp_s1 <- as.numeric(nrow(short_mhp[grepl(c("hdp sıralarından alkışlar"), short_mhp$Speeches),]))
mhp_hdp_s2 <- as.numeric(nrow(short_mhp[grepl(c("hdp sıralarından bravo sesleri"), short_mhp$Speeches),]))
mhp_hdp_s3 <- as.numeric(nrow(short_mhp[grepl(c("hdp sıralarından doğru"), short_mhp$Speeches),]))
mhp_hdp_s4 <- as.numeric(nrow(short_mhp[grepl(c("hdp sıralarından evet" ), short_mhp$Speeches),]))

#Hostility to mhp

mhp_mhp_h1 <- as.numeric(nrow(short_mhp[grepl(c("mhp sıralarından otur yerine sesleri"), short_mhp$Speeches),]))
mhp_mhp_h2 <- as.numeric(nrow(short_mhp[grepl(c("mhp sıralarından gürültüler"), short_mhp$Speeches),]))
mhp_mhp_h3 <- as.numeric(nrow(short_mhp[grepl(c("mhp sıralarından yuh"), short_mhp$Speeches),]))
mhp_mhp_h4 <- as.numeric(nrow(short_mhp[grepl(c("mhp sıralarından ne alakası var sesleri"), short_mhp$Speeches),]))
mhp_mhp_h5 <- as.numeric(nrow(short_mhp[grepl(c("mhp sıra kapaklarına vurmalar"), short_mhp$Speeches),]))
mhp_mhp_h6 <- as.numeric(nrow(short_mhp[grepl(c("mhp sıralarından kürsü önünde toplanmalar" ), short_mhp$Speeches),]))

mhp_chp_h1 <- as.numeric(nrow(short_mhp[grepl(c("chp sıralarından otur yerine sesleri"), short_mhp$Speeches),]))
mhp_chp_h2 <- as.numeric(nrow(short_mhp[grepl(c("chp sıralarından gürültüler"), short_mhp$Speeches),]))
mhp_chp_h3 <- as.numeric(nrow(short_mhp[grepl(c("chp sıralarından yuh"), short_mhp$Speeches),]))
mhp_chp_h4 <- as.numeric(nrow(short_mhp[grepl(c("chp sıralarından ne alakası var sesleri"), short_mhp$Speeches),]))
mhp_chp_h5 <- as.numeric(nrow(short_mhp[grepl(c("chp sıralarından sıra kapaklarına vurmalar"), short_mhp$Speeches),]))
mhp_chp_h6 <- as.numeric(nrow(short_mhp[grepl(c("chp ve mhp sıralarından karşılıklı laf atmalar"), short_mhp$Speeches),]))
mhp_chp_h7 <- as.numeric(nrow(short_mhp[grepl(c("mhp ve chp sıralarından karşılıklı laf atmalar"), short_mhp$Speeches),]))
mhp_chp_h8 <- as.numeric(nrow(short_mhp[grepl(c("mhp ve chp sıralarından karşılıklı sataşmalar"), short_mhp$Speeches),]))
mhp_chp_h9 <- as.numeric(nrow(short_mhp[grepl(c("chp ve mhp sıralarından karşılıklı sataşmalar"), short_mhp$Speeches),]))
mhp_chp_h10 <- as.numeric(nrow(short_mhp[grepl(c("mhp ve chp sıralarından birbirleri üzerine yürümeler" ), short_mhp$Speeches),]))
mhp_chp_h11 <- as.numeric(nrow(short_mhp[grepl(c("chp ve mhp sıralarından birbirleri üzerine yürümeler" ), short_mhp$Speeches),]))
mhp_chp_h12 <- as.numeric(nrow(short_mhp[grepl(c("mhp ve chp sıralarından karşılıklı konuşmalar" ), short_mhp$Speeches),]))
mhp_chp_h13 <- as.numeric(nrow(short_mhp[grepl(c("chp ve mhp sıralarından karşılıklı konuşmalar" ), short_mhp$Speeches),]))
mhp_chp_h14 <- as.numeric(nrow(short_mhp[grepl(c("chp sıralarından kürsü önünde toplanmalar" ), short_mhp$Speeches),]))

mhp_akp_h1 <- as.numeric(nrow(short_mhp[grepl(c("ak parti sıralarından otur yerine sesleri"), short_mhp$Speeches),]))
mhp_akp_h2 <- as.numeric(nrow(short_mhp[grepl(c("ak parti sıralarından gürültüler"), short_mhp$Speeches),]))
mhp_akp_h3 <- as.numeric(nrow(short_mhp[grepl(c("ak parti sıralarından yuh"), short_mhp$Speeches),]))
mhp_akp_h4 <- as.numeric(nrow(short_mhp[grepl(c("ak parti sıralarından ne alakası var sesleri"), short_mhp$Speeches),]))
mhp_akp_h5 <- as.numeric(nrow(short_mhp[grepl(c("ak parti sıralarından sıra kapaklarına vurmalar"), short_mhp$Speeches),]))
mhp_akp_h6 <- as.numeric(nrow(short_mhp[grepl(c("mhp ve ak parti sıralarından karşılıklı laf atmalar"), short_mhp$Speeches),]))
mhp_akp_h7 <- as.numeric(nrow(short_mhp[grepl(c("ak parti ve mhp sıralarından karşılıklı laf atmalar"), short_mhp$Speeches),]))
mhp_akp_h8 <- as.numeric(nrow(short_mhp[grepl(c("mhp ve ak parti sıralarından karşılıklı sataşmalar"), short_mhp$Speeches),]))
mhp_akp_h9 <- as.numeric(nrow(short_mhp[grepl(c("ak parti ve mhp sıralarından karşılıklı sataşmalar"), short_mhp$Speeches),]))
mhp_akp_h10 <- as.numeric(nrow(short_mhp[grepl(c("mhp ve ak parti sıralarından birbirleri üzerine yürümeler" ), short_mhp$Speeches),]))
mhp_akp_h11 <- as.numeric(nrow(short_mhp[grepl(c("ak parti ve mhp sıralarından birbirleri üzerine yürümeler" ), short_mhp$Speeches),]))
mhp_akp_h12 <- as.numeric(nrow(short_mhp[grepl(c("mhp ve ak parti sıralarından karşılıklı konuşmalar" ), short_mhp$Speeches),]))
mhp_akp_h13 <- as.numeric(nrow(short_mhp[grepl(c("ak parti ve mhp sıralarından karşılıklı konuşmalar" ), short_mhp$Speeches),]))
mhp_akp_h14 <- as.numeric(nrow(short_mhp[grepl(c("ak parti sıralarından kürsü önünde toplanmalar" ), short_mhp$Speeches),]))


mhp_hdp_h1 <- as.numeric(nrow(short_mhp[grepl(c("hdp sıralarından otur yerine sesleri"), short_mhp$Speeches),]))
mhp_hdp_h2 <- as.numeric(nrow(short_mhp[grepl(c("hdp sıralarından gürültüler"), short_mhp$Speeches),]))
mhp_hdp_h3 <- as.numeric(nrow(short_mhp[grepl(c("hdp sıralarından yuh"), short_mhp$Speeches),]))
mhp_hdp_h4 <- as.numeric(nrow(short_mhp[grepl(c("hdp sıralarından ne alakası var sesleri"), short_mhp$Speeches),]))
mhp_hdp_h5 <- as.numeric(nrow(short_mhp[grepl(c("hdp sıralarından sıra kapaklarına vurmalar"), short_mhp$Speeches),]))
mhp_hdp_h6 <- as.numeric(nrow(short_mhp[grepl(c("hdp ve nhp sıralarından karşılıklı laf atmalar"), short_mhp$Speeches),]))
mhp_hdp_h7 <- as.numeric(nrow(short_mhp[grepl(c("mhp ve hdp sıralarından karşılıklı laf atmalar"), short_mhp$Speeches),]))
mhp_hdp_h8 <- as.numeric(nrow(short_mhp[grepl(c("hdp ve mhp sıralarından karşılıklı sataşmalar"), short_mhp$Speeches),]))
mhp_hdp_h9 <- as.numeric(nrow(short_mhp[grepl(c("mhp ve hdp sıralarından karşılıklı sataşmalar"), short_mhp$Speeches),]))
mhp_hdp_h10 <- as.numeric(nrow(short_mhp[grepl(c("hdp ve mhp sıralarından birbirleri üzerine yürümeler" ), short_mhp$Speeches),]))
mhp_hdp_h11 <- as.numeric(nrow(short_mhp[grepl(c("mhp ve hdp sıralarından birbirleri üzerine yürümeler" ), short_mhp$Speeches),]))
mhp_hdp_h12 <- as.numeric(nrow(short_mhp[grepl(c("hdp ve mhp sıralarından karşılıklı konuşmalar" ), short_mhp$Speeches),]))
mhp_hdp_h13 <- as.numeric(nrow(short_mhp[grepl(c("mhp ve hdp sıralarından karşılıklı konuşmalar" ), short_mhp$Speeches),]))
mhp_hdp_h14 <- as.numeric(nrow(short_mhp[grepl(c("hdp sıralarından kürsü önünde toplanmalar" ), short_mhp$Speeches),]))

#support to hdp
hdp_hdp_s1 <- as.numeric(nrow(short_hdp[grepl(c("hdp sıralarından alkışlar"), short_hdp$Speeches),]))
hdp_hdp_s2 <- as.numeric(nrow(short_hdp[grepl(c("hdp sıralarından bravo sesleri"), short_hdp$Speeches),]))
hdp_hdp_s3 <- as.numeric(nrow(short_hdp[grepl(c("hdp sıralarından doğru"), short_hdp$Speeches),]))
hdp_hdp_s4 <- as.numeric(nrow(short_hdp[grepl(c("hdp sıralarından evet" ), short_hdp$Speeches),]))

hdp_akp_s1 <- as.numeric(nrow(short_hdp[grepl(c("ak parti sıralarından alkışlar"), short_hdp$Speeches),]))
hdp_akp_s2 <- as.numeric(nrow(short_hdp[grepl(c("ak parti sıralarından bravo sesleri"), short_hdp$Speeches),]))
hdp_akp_s3 <- as.numeric(nrow(short_hdp[grepl(c("ak parti sıralarından doğru"), short_hdp$Speeches),]))
hdp_akp_s4 <- as.numeric(nrow(short_hdp[grepl(c("ak parti sıralarından evet" ), short_hdp$Speeches),]))

hdp_chp_s1 <- as.numeric(nrow(short_hdp[grepl(c("chp sıralarından alkışlar"), short_hdp$Speeches),]))
hdp_chp_s2 <- as.numeric(nrow(short_hdp[grepl(c("chp sıralarından bravo sesleri"), short_hdp$Speeches),]))
hdp_chp_s3 <- as.numeric(nrow(short_hdp[grepl(c("chp sıralarından doğru"), short_hdp$Speeches),]))
hdp_chp_s4 <- as.numeric(nrow(short_hdp[grepl(c("chp sıralarından evet" ), short_hdp$Speeches),]))

hdp_mhp_s1 <- as.numeric(nrow(short_hdp[grepl(c("mhp sıralarından alkışlar"), short_hdp$Speeches),]))
hdp_mhp_s2 <- as.numeric(nrow(short_hdp[grepl(c("mhp sıralarından bravo sesleri"), short_hdp$Speeches),]))
hdp_mhp_s3 <- as.numeric(nrow(short_hdp[grepl(c("mhp sıralarından doğru"), short_hdp$Speeches),]))
hdp_mhp_s4 <- as.numeric(nrow(short_hdp[grepl(c("mhp sıralarından evet" ), short_hdp$Speeches),]))

#Hostility to hdp

hdp_hdp_h1 <- as.numeric(nrow(short_hdp[grepl(c("hdp sıralarından otur yerine sesleri"), short_hdp$Speeches),]))
hdp_hdp_h2 <- as.numeric(nrow(short_hdp[grepl(c("hdp sıralarından gürültüler"), short_hdp$Speeches),]))
hdp_hdp_h3 <- as.numeric(nrow(short_hdp[grepl(c("hdp sıralarından yuh"), short_hdp$Speeches),]))
hdp_hdp_h4 <- as.numeric(nrow(short_hdp[grepl(c("hdp sıralarından ne alakası var sesleri"), short_hdp$Speeches),]))
hdp_hdp_h5 <- as.numeric(nrow(short_hdp[grepl(c("hdp sıra kapaklarına vurmalar"), short_hdp$Speeches),]))
hdp_hdp_h6 <- as.numeric(nrow(short_hdp[grepl(c("hdp sıralarından kürsü önünde toplanmalar" ), short_hdp$Speeches),]))

hdp_chp_h1 <- as.numeric(nrow(short_hdp[grepl(c("chp sıralarından otur yerine sesleri"), short_hdp$Speeches),]))
hdp_chp_h2 <- as.numeric(nrow(short_hdp[grepl(c("chp sıralarından gürültüler"), short_hdp$Speeches),]))
hdp_chp_h3 <- as.numeric(nrow(short_hdp[grepl(c("chp sıralarından yuh"), short_hdp$Speeches),]))
hdp_chp_h4 <- as.numeric(nrow(short_hdp[grepl(c("chp sıralarından ne alakası var sesleri"), short_hdp$Speeches),]))
hdp_chp_h5 <- as.numeric(nrow(short_hdp[grepl(c("chp sıralarından sıra kapaklarına vurmalar"), short_hdp$Speeches),]))
hdp_chp_h6 <- as.numeric(nrow(short_hdp[grepl(c("chp ve hdp sıralarından karşılıklı laf atmalar"), short_hdp$Speeches),]))
hdp_chp_h7 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve chp sıralarından karşılıklı laf atmalar"), short_hdp$Speeches),]))
hdp_chp_h8 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve chp sıralarından karşılıklı sataşmalar"), short_hdp$Speeches),]))
hdp_chp_h9 <- as.numeric(nrow(short_hdp[grepl(c("chp ve hdp sıralarından karşılıklı sataşmalar"), short_hdp$Speeches),]))
hdp_chp_h10 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve chp sıralarından birbirleri üzerine yürümeler" ), short_hdp$Speeches),]))
hdp_chp_h11 <- as.numeric(nrow(short_hdp[grepl(c("chp ve hdp sıralarından birbirleri üzerine yürümeler" ), short_hdp$Speeches),]))
hdp_chp_h12 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve chp sıralarından karşılıklı konuşmalar" ), short_hdp$Speeches),]))
hdp_chp_h13 <- as.numeric(nrow(short_hdp[grepl(c("chp ve hdp sıralarından karşılıklı konuşmalar" ), short_hdp$Speeches),]))
hdp_chp_h14 <- as.numeric(nrow(short_hdp[grepl(c("chp sıralarından kürsü önünde toplanmalar" ), short_hdp$Speeches),]))

hdp_akp_h1 <- as.numeric(nrow(short_hdp[grepl(c("ak parti sıralarından otur yerine sesleri"), short_hdp$Speeches),]))
hdp_akp_h2 <- as.numeric(nrow(short_hdp[grepl(c("ak parti sıralarından gürültüler"), short_hdp$Speeches),]))
hdp_akp_h3 <- as.numeric(nrow(short_hdp[grepl(c("ak parti sıralarından yuh"), short_hdp$Speeches),]))
hdp_akp_h4 <- as.numeric(nrow(short_hdp[grepl(c("ak parti sıralarından ne alakası var sesleri"), short_hdp$Speeches),]))
hdp_akp_h5 <- as.numeric(nrow(short_hdp[grepl(c("ak parti sıralarından sıra kapaklarına vurmalar"), short_hdp$Speeches),]))
hdp_akp_h6 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve ak parti sıralarından karşılıklı laf atmalar"), short_hdp$Speeches),]))
hdp_akp_h7 <- as.numeric(nrow(short_hdp[grepl(c("ak parti ve hdp sıralarından karşılıklı laf atmalar"), short_hdp$Speeches),]))
hdp_akp_h8 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve ak parti sıralarından karşılıklı sataşmalar"), short_hdp$Speeches),]))
hdp_akp_h9 <- as.numeric(nrow(short_hdp[grepl(c("ak parti ve hdp sıralarından karşılıklı sataşmalar"), short_hdp$Speeches),]))
hdp_akp_h10 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve ak parti sıralarından birbirleri üzerine yürümeler" ), short_hdp$Speeches),]))
hdp_akp_h11 <- as.numeric(nrow(short_hdp[grepl(c("ak parti ve hdp sıralarından birbirleri üzerine yürümeler" ), short_hdp$Speeches),]))
hdp_akp_h12 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve ak parti sıralarından karşılıklı konuşmalar" ), short_hdp$Speeches),]))
hdp_akp_h13 <- as.numeric(nrow(short_hdp[grepl(c("ak parti ve hdp sıralarından karşılıklı konuşmalar" ), short_hdp$Speeches),]))
hdp_akp_h14 <- as.numeric(nrow(short_hdp[grepl(c("ak parti sıralarından kürsü önünde toplanmalar" ), short_hdp$Speeches),]))

hdp_mhp_h1 <- as.numeric(nrow(short_hdp[grepl(c("mhp sıralarından otur yerine sesleri"), short_hdp$Speeches),]))
hdp_mhp_h2 <- as.numeric(nrow(short_hdp[grepl(c("mhp sıralarından gürültüler"), short_hdp$Speeches),]))
hdp_mhp_h3 <- as.numeric(nrow(short_hdp[grepl(c("mhp sıralarından yuh"), short_hdp$Speeches),]))
hdp_mhp_h4 <- as.numeric(nrow(short_hdp[grepl(c("mhp sıralarından ne alakası var sesleri"), short_hdp$Speeches),]))
hdp_mhp_h5 <- as.numeric(nrow(short_hdp[grepl(c("mhp sıralarından sıra kapaklarına vurmalar"), short_hdp$Speeches),]))
hdp_mhp_h6 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve mhp sıralarından karşılıklı laf atmalar"), short_hdp$Speeches),]))
hdp_mhp_h7 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve hdp sıralarından karşılıklı laf atmalar"), short_hdp$Speeches),]))
hdp_mhp_h8 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve mhp sıralarından karşılıklı sataşmalar"), short_hdp$Speeches),]))
hdp_mhp_h9 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve hdp sıralarından karşılıklı sataşmalar"), short_hdp$Speeches),]))
hdp_mhp_h10 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve mhp sıralarından birbirleri üzerine yürümeler" ), short_hdp$Speeches),]))
hdp_mhp_h11 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve hdp sıralarından birbirleri üzerine yürümeler" ), short_hdp$Speeches),]))
hdp_mhp_h12 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve mhp sıralarından karşılıklı konuşmalar" ), short_hdp$Speeches),]))
hdp_mhp_h13 <- as.numeric(nrow(short_hdp[grepl(c("hdp ve hdp sıralarından karşılıklı konuşmalar" ), short_hdp$Speeches),]))
hdp_mhp_h14 <- as.numeric(nrow(short_hdp[grepl(c("mhp sıralarından kürsü önünde toplanmalar" ), short_hdp$Speeches),]))

akp_akp_support <- akp_akp_s1 + akp_akp_s2 + akp_akp_s3 + akp_akp_s4 
akp_chp_support <- akp_chp_s1 + akp_chp_s2 + akp_chp_s3 + akp_chp_s4 + chp_akp_s1 + chp_akp_s2 + chp_akp_s3 + chp_akp_s4 
akp_mhp_support <- akp_mhp_s1 + akp_mhp_s2 + akp_mhp_s3 + akp_mhp_s4 + mhp_akp_s1 + mhp_akp_s2 + mhp_akp_s3 + mhp_akp_s4 
akp_hdp_support <- akp_hdp_s1 + akp_hdp_s2 + akp_hdp_s3 + akp_hdp_s4 + hdp_akp_s1 + hdp_akp_s2 + hdp_akp_s3 + hdp_akp_s4 
chp_mhp_support <- mhp_chp_s1 + mhp_chp_s2 + mhp_chp_s3 + mhp_chp_s4 + chp_mhp_s1 + chp_mhp_s2 + chp_mhp_s3 + chp_mhp_s4 
chp_hdp_support <- hdp_chp_s1 + hdp_chp_s2 + hdp_chp_s3 + hdp_chp_s4 + chp_hdp_s1 + chp_hdp_s2 + chp_hdp_s3 + chp_hdp_s4 
chp_chp_support <- chp_chp_s1 + chp_chp_s2 + chp_chp_s3 + chp_chp_s4 
hdp_hdp_support <- hdp_hdp_s1 + hdp_hdp_s2 + hdp_hdp_s3 + hdp_hdp_s4 
hdp_mhp_support <- hdp_mhp_s1 + hdp_mhp_s2 + hdp_mhp_s3 + hdp_mhp_s4 + mhp_hdp_s1 + mhp_hdp_s2 + mhp_hdp_s3 + mhp_hdp_s4 
mhp_mhp_support <- mhp_mhp_s1 + mhp_mhp_s2 + mhp_mhp_s3 + mhp_mhp_s4 

akp_akp_hostility <- akp_akp_h1 + akp_akp_h2 + akp_akp_h3 + akp_akp_h4 + akp_akp_h5 + akp_akp_h6 

akp_chp_hostility <- akp_chp_h1 + akp_chp_h2 + akp_chp_h3 + akp_chp_h4 + akp_chp_h5 + akp_chp_h6 + akp_chp_h7 + akp_chp_h8 + akp_chp_h9 + akp_chp_h10 + akp_chp_h11 + akp_chp_h12 + akp_chp_h13 + akp_chp_h14
+ chp_akp_h1 + chp_akp_h2 + chp_akp_h3 + chp_akp_h4 + chp_akp_h5 + chp_akp_h6+ chp_akp_h7 + chp_akp_h8+ chp_akp_h9 + chp_akp_h10+ chp_akp_h11 + chp_akp_h12+ chp_akp_h13 + chp_akp_h14

akp_mhp_hostility <- akp_mhp_h1 + akp_mhp_h2 + akp_mhp_h3 + akp_mhp_h4 + akp_mhp_h5 + akp_mhp_h6 + akp_mhp_h7 + akp_mhp_h8 + akp_mhp_h9 + akp_mhp_h10 + akp_mhp_h11 + akp_mhp_h12 + akp_mhp_h13 + akp_mhp_h14
+ mhp_akp_h1 + mhp_akp_h2 + mhp_akp_h3 + mhp_akp_h4 + mhp_akp_h5 + mhp_akp_h6+ mhp_akp_h7 + mhp_akp_h8+ mhp_akp_h9 + mhp_akp_h10+ mhp_akp_h11 + mhp_akp_h12+ mhp_akp_h13 + mhp_akp_h14

akp_hdp_hostility <- akp_hdp_h1 + akp_hdp_h2 + akp_hdp_h3 + akp_hdp_h4 + akp_hdp_h5 + akp_hdp_h6 + akp_hdp_h7 + akp_hdp_h8 + akp_hdp_h9 + akp_hdp_h10 + akp_hdp_h11 + akp_hdp_h12 + akp_hdp_h13 + akp_hdp_h14
+ hdp_akp_h1 + hdp_akp_h2 + hdp_akp_h3 + hdp_akp_h4 + hdp_akp_h5 + hdp_akp_h6+ hdp_akp_h7 + hdp_akp_h8+ hdp_akp_h9 + hdp_akp_h10+ hdp_akp_h11 + hdp_akp_h12+ hdp_akp_h13 + hdp_akp_h14

chp_mhp_hostility <- mhp_chp_h1 + mhp_chp_h2 + mhp_chp_h3 + mhp_chp_h4 + mhp_chp_h5 + mhp_chp_h6 + mhp_chp_h7 + mhp_chp_h8 + mhp_chp_h9 + mhp_chp_h10 + mhp_chp_h11 + mhp_chp_h12 + mhp_chp_h13 + mhp_chp_h14
+ chp_mhp_h1 + chp_mhp_h2 + chp_mhp_h3 + chp_mhp_h4 + chp_mhp_h5 + chp_mhp_h6+ chp_mhp_h7 + chp_mhp_h8+ chp_mhp_h9 + chp_mhp_h10+ chp_mhp_h11 + chp_mhp_h12+ chp_mhp_h13 + chp_mhp_h14

chp_hdp_hostility <- hdp_chp_h1 + hdp_chp_h2 + hdp_chp_h3 + hdp_chp_h4 + hdp_chp_h5 + hdp_chp_h6 + hdp_chp_h7 + hdp_chp_h8 + hdp_chp_h9 + hdp_chp_h10 + hdp_chp_h11 + hdp_chp_h12 + hdp_chp_h13 + hdp_chp_h14
+ chp_hdp_h1 + chp_hdp_h2 + chp_hdp_h3 + chp_hdp_h4 + chp_hdp_h5 + chp_hdp_h6+ chp_hdp_h7 + chp_hdp_h8+ chp_hdp_h9 + chp_hdp_h10+ chp_hdp_h11 + chp_hdp_h12+ chp_hdp_h13 + chp_hdp_h14

chp_chp_hostility <- chp_chp_h1 + chp_chp_h2 + chp_chp_h3 + chp_chp_h4 + chp_chp_h5 + chp_chp_h6

hdp_hdp_hostility <- hdp_hdp_h1 + hdp_hdp_h2 + hdp_hdp_h3 + hdp_hdp_h4 + chp_chp_h5 + chp_chp_h6 

hdp_mhp_hostility <- hdp_mhp_h1 + hdp_mhp_h2 + hdp_mhp_h3 + hdp_mhp_h4 + hdp_mhp_h5 + hdp_mhp_h6 + hdp_mhp_h7 + hdp_mhp_h8 + hdp_mhp_h9 + hdp_mhp_h10 + hdp_mhp_h11 + hdp_mhp_h12 + hdp_mhp_h13 + hdp_mhp_h14
+ mhp_hdp_h1 + mhp_hdp_h2 + mhp_hdp_h3 + mhp_hdp_h4 + mhp_hdp_h5 + mhp_hdp_h6+ mhp_hdp_h7 + mhp_hdp_h8+ mhp_hdp_h9 + mhp_hdp_h10+ mhp_hdp_h11 + mhp_hdp_h12+ mhp_hdp_h13 + mhp_hdp_h14

mhp_mhp_hostility <- mhp_mhp_h1 + mhp_mhp_h2 + mhp_mhp_h3 + mhp_mhp_h4 + mhp_mhp_h5 + mhp_mhp_h6 


df_support_hostility <- data.frame(row.names= c("AKP-AKP","AKP-CHP","AKP-MHP","AKP-HDP","CHP-MHP","CHP-HDP","CHP-CHP","HDP-HDP","HDP-MHP","MHP-MHP"),
                                   Support = c(akp_akp_support,akp_chp_support,akp_mhp_support,akp_hdp_support,chp_mhp_support,chp_hdp_support,chp_chp_support,hdp_hdp_support,hdp_mhp_support,mhp_mhp_support),
                                   Hostility = c(akp_akp_hostility,akp_chp_hostility,akp_mhp_hostility,akp_hdp_support,chp_mhp_hostility,chp_hdp_hostility,chp_chp_hostility,hdp_hdp_hostility,hdp_mhp_hostility,mhp_mhp_hostility))



pca.support.hostility <- PCA(df_support_hostility, scale.unit = TRUE, ncp = 2, graph = TRUE)
ind.p <- fviz_pca_biplot(pca.support.hostility, repel = TRUE)
ind.p
ggpubr::ggpar(ind.p,
              title = "Dyadic Representation of Hostility and Support Scores",
              subtitle = "Principal Component Analysis",
              xlab = "PC1(56.6%)", ylab = "PC2(43.4%)",
              ggtheme = theme_gray(), palette = "jco")

##########################################################################
#2013-2015 and 2015-2016 periods
##########################################################################
#FOR THE FIRST PERIOD
##########################################################################
tbmm_corpus <- readRDS("/Users/osmandemirbag/Desktop/TBMM/TBMMCorpus.Rds")

# punctuation, tolower

tbmm_corpus$Year <- lubridate::as_date(tbmm_corpus$From)

period_1 <- tbmm_corpus %>% filter(between(From, as.Date('2013-06-01'), as.Date('2015-06-06')))

long_chp <- period_1 %>% filter(Speaker_party=="CHP")
long_akp <- period_1 %>% filter(Speaker_party=="AKP AK Party")
long_mhp <- period_1 %>% filter(Speaker_party=="MHP")
long_hdp <- period_1 %>% filter(Speaker_party=="HDP")

#support to chp

chp_chp_s1 <- as.numeric(nrow(long_chp[grepl(c("chp sıralarından alkışlar"), long_chp$Speeches),]))
chp_chp_s2 <- as.numeric(nrow(long_chp[grepl(c("chp sıralarından bravo sesleri"), long_chp$Speeches),]))
chp_chp_s3 <- as.numeric(nrow(long_chp[grepl(c("chp sıralarından doğru"), long_chp$Speeches),]))
chp_chp_s4 <- as.numeric(nrow(long_chp[grepl(c("chp sıralarından evet" ), long_chp$Speeches),]))

chp_akp_s1 <- as.numeric(nrow(long_chp[grepl(c("ak parti sıralarından alkışlar"), long_chp$Speeches),]))
chp_akp_s2 <- as.numeric(nrow(long_chp[grepl(c("ak parti sıralarından bravo sesleri"), long_chp$Speeches),]))
chp_akp_s3 <- as.numeric(nrow(long_chp[grepl(c("ak parti sıralarından doğru"), long_chp$Speeches),]))
chp_akp_s4 <- as.numeric(nrow(long_chp[grepl(c("ak parti sıralarından evet" ), long_chp$Speeches),]))

chp_mhp_s1 <- as.numeric(nrow(long_chp[grepl(c("mhp sıralarından alkışlar"), long_chp$Speeches),]))
chp_mhp_s2 <- as.numeric(nrow(long_chp[grepl(c("mhp sıralarından bravo sesleri"), long_chp$Speeches),]))
chp_mhp_s3 <- as.numeric(nrow(long_chp[grepl(c("mhp sıralarından doğru"), long_chp$Speeches),]))
chp_mhp_s4 <- as.numeric(nrow(long_chp[grepl(c("mhp sıralarından evet" ), long_chp$Speeches),]))

chp_hdp_s1 <- as.numeric(nrow(long_chp[grepl(c("hdp sıralarından alkışlar"), long_chp$Speeches),]))
chp_hdp_s2 <- as.numeric(nrow(long_chp[grepl(c("hdp sıralarından bravo sesleri"), long_chp$Speeches),]))
chp_hdp_s3 <- as.numeric(nrow(long_chp[grepl(c("hdp sıralarından doğru"), long_chp$Speeches),]))
chp_hdp_s4 <- as.numeric(nrow(long_chp[grepl(c("hdp sıralarından evet" ), long_chp$Speeches),]))

#Hostility to chp

chp_chp_h1 <- as.numeric(nrow(long_chp[grepl(c("chp sıralarından otur yerine sesleri"), long_chp$Speeches),]))
chp_chp_h2 <- as.numeric(nrow(long_chp[grepl(c("chp sıralarından gürültüler"), long_chp$Speeches),]))
chp_chp_h3 <- as.numeric(nrow(long_chp[grepl(c("chp sıralarından yuh"), long_chp$Speeches),]))
chp_chp_h4 <- as.numeric(nrow(long_chp[grepl(c("chp sıralarından ne alakası var sesleri"), long_chp$Speeches),]))
chp_chp_h5 <- as.numeric(nrow(long_chp[grepl(c("chp sıra kapaklarına vurmalar"), long_chp$Speeches),]))
chp_chp_h6 <- as.numeric(nrow(long_chp[grepl(c("chp sıralarından kürsü önünde toplanmalar" ), long_chp$Speeches),]))

chp_akp_h1 <- as.numeric(nrow(long_chp[grepl(c("ak parti sıralarından otur yerine sesleri"), long_chp$Speeches),]))
chp_akp_h2 <- as.numeric(nrow(long_chp[grepl(c("ak parti sıralarından gürültüler"), long_chp$Speeches),]))
chp_akp_h3 <- as.numeric(nrow(long_chp[grepl(c("ak parti sıralarından yuh"), long_chp$Speeches),]))
chp_akp_h4 <- as.numeric(nrow(long_chp[grepl(c("ak parti sıralarından ne alakası var sesleri"), long_chp$Speeches),]))
chp_akp_h5 <- as.numeric(nrow(long_chp[grepl(c("ak parti sıralarından sıra kapaklarına vurmalar"), long_chp$Speeches),]))
chp_akp_h6 <- as.numeric(nrow(long_chp[grepl(c("ak parti ve chp sıralarından karşılıklı laf atmalar"), long_chp$Speeches),]))
chp_akp_h7 <- as.numeric(nrow(long_chp[grepl(c("chp ve ak parti sıralarından karşılıklı laf atmalar"), long_chp$Speeches),]))
chp_akp_h8 <- as.numeric(nrow(long_chp[grepl(c("ak parti ve chp sıralarından karşılıklı sataşmalar"), long_chp$Speeches),]))
chp_akp_h9 <- as.numeric(nrow(long_chp[grepl(c("chp ve ak parti sıralarından karşılıklı sataşmalar"), long_chp$Speeches),]))
chp_akp_h10 <- as.numeric(nrow(long_chp[grepl(c("ak parti ve chp sıralarından birbirleri üzerine yürümeler" ), long_chp$Speeches),]))
chp_akp_h11 <- as.numeric(nrow(long_chp[grepl(c("chp ve ak parti sıralarından birbirleri üzerine yürümeler" ), long_chp$Speeches),]))
chp_akp_h12 <- as.numeric(nrow(long_chp[grepl(c("ak parti ve chp sıralarından karşılıklı konuşmalar" ), long_chp$Speeches),]))
chp_akp_h13 <- as.numeric(nrow(long_chp[grepl(c("chp ve ak parti sıralarından karşılıklı konuşmalar" ), long_chp$Speeches),]))
chp_akp_h14 <- as.numeric(nrow(long_chp[grepl(c("ak parti sıralarından kürsü önünde toplanmalar" ), long_chp$Speeches),]))

chp_mhp_h1 <- as.numeric(nrow(long_chp[grepl(c("mhp sıralarından otur yerine sesleri"), long_chp$Speeches),]))
chp_mhp_h2 <- as.numeric(nrow(long_chp[grepl(c("mhp sıralarından gürültüler"), long_chp$Speeches),]))
chp_mhp_h3 <- as.numeric(nrow(long_chp[grepl(c("mhp sıralarından yuh"), long_chp$Speeches),]))
chp_mhp_h4 <- as.numeric(nrow(long_chp[grepl(c("mhp sıralarından ne alakası var sesleri"), long_chp$Speeches),]))
chp_mhp_h5 <- as.numeric(nrow(long_chp[grepl(c("mhp sıralarından sıra kapaklarına vurmalar"), long_chp$Speeches),]))
chp_mhp_h6 <- as.numeric(nrow(long_chp[grepl(c("mhp ve chp sıralarından karşılıklı laf atmalar"), long_chp$Speeches),]))
chp_mhp_h7 <- as.numeric(nrow(long_chp[grepl(c("chp ve mhp sıralarından karşılıklı laf atmalar"), long_chp$Speeches),]))
chp_mhp_h8 <- as.numeric(nrow(long_chp[grepl(c("mhp ve chp sıralarından karşılıklı sataşmalar"), long_chp$Speeches),]))
chp_mhp_h9 <- as.numeric(nrow(long_chp[grepl(c("chp ve mhp sıralarından karşılıklı sataşmalar"), long_chp$Speeches),]))
chp_mhp_h10 <- as.numeric(nrow(long_chp[grepl(c("mhp ve chp sıralarından birbirleri üzerine yürümeler" ), long_chp$Speeches),]))
chp_mhp_h11 <- as.numeric(nrow(long_chp[grepl(c("chp ve mhp sıralarından birbirleri üzerine yürümeler" ), long_chp$Speeches),]))
chp_mhp_h12 <- as.numeric(nrow(long_chp[grepl(c("mhp ve chp sıralarından karşılıklı konuşmalar" ), long_chp$Speeches),]))
chp_mhp_h13 <- as.numeric(nrow(long_chp[grepl(c("chp ve mhp sıralarından karşılıklı konuşmalar" ), long_chp$Speeches),]))
chp_mhp_h14 <- as.numeric(nrow(long_chp[grepl(c("mhp sıralarından kürsü önünde toplanmalar" ), long_chp$Speeches),]))


chp_hdp_h1 <- as.numeric(nrow(long_chp[grepl(c("hdp sıralarından otur yerine sesleri"), long_chp$Speeches),]))
chp_hdp_h2 <- as.numeric(nrow(long_chp[grepl(c("hdp sıralarından gürültüler"), long_chp$Speeches),]))
chp_hdp_h3 <- as.numeric(nrow(long_chp[grepl(c("hdp sıralarından yuh"), long_chp$Speeches),]))
chp_hdp_h4 <- as.numeric(nrow(long_chp[grepl(c("hdp sıralarından ne alakası var sesleri"), long_chp$Speeches),]))
chp_hdp_h5 <- as.numeric(nrow(long_chp[grepl(c("hdp sıralarından sıra kapaklarına vurmalar"), long_chp$Speeches),]))
chp_hdp_h6 <- as.numeric(nrow(long_chp[grepl(c("hdp ve chp sıralarından karşılıklı laf atmalar"), long_chp$Speeches),]))
chp_hdp_h7 <- as.numeric(nrow(long_chp[grepl(c("chp ve hdp sıralarından karşılıklı laf atmalar"), long_chp$Speeches),]))
chp_hdp_h8 <- as.numeric(nrow(long_chp[grepl(c("hdp ve chp sıralarından karşılıklı sataşmalar"), long_chp$Speeches),]))
chp_hdp_h9 <- as.numeric(nrow(long_chp[grepl(c("chp ve hdp sıralarından karşılıklı sataşmalar"), long_chp$Speeches),]))
chp_hdp_h10 <- as.numeric(nrow(long_chp[grepl(c("hdp ve chp sıralarından birbirleri üzerine yürümeler" ), long_chp$Speeches),]))
chp_hdp_h11 <- as.numeric(nrow(long_chp[grepl(c("chp ve hdp sıralarından birbirleri üzerine yürümeler" ), long_chp$Speeches),]))
chp_hdp_h12 <- as.numeric(nrow(long_chp[grepl(c("hdp ve chp sıralarından karşılıklı konuşmalar" ), long_chp$Speeches),]))
chp_hdp_h13 <- as.numeric(nrow(long_chp[grepl(c("chp ve hdp sıralarından karşılıklı konuşmalar" ), long_chp$Speeches),]))
chp_hdp_h14 <- as.numeric(nrow(long_chp[grepl(c("hdp sıralarından kürsü önünde toplanmalar"), long_chp$Speeches),]))


#support to ak party

akp_chp_s1 <- as.numeric(nrow(long_akp[grepl(c("chp sıralarından alkışlar"), long_akp$Speeches),]))
akp_chp_s2 <- as.numeric(nrow(long_akp[grepl(c("chp sıralarından bravo sesleri"), long_akp$Speeches),]))
akp_chp_s3 <- as.numeric(nrow(long_akp[grepl(c("chp sıralarından doğru"), long_akp$Speeches),]))
akp_chp_s4 <- as.numeric(nrow(long_akp[grepl(c("chp sıralarından evet" ), long_akp$Speeches),]))

akp_akp_s1 <- as.numeric(nrow(long_akp[grepl(c("ak parti sıralarından alkışlar"), long_akp$Speeches),]))
akp_akp_s2 <- as.numeric(nrow(long_akp[grepl(c("ak parti sıralarından bravo sesleri"), long_akp$Speeches),]))
akp_akp_s3 <- as.numeric(nrow(long_akp[grepl(c("ak parti sıralarından doğru"), long_akp$Speeches),]))
akp_akp_s4 <- as.numeric(nrow(long_akp[grepl(c("ak parti sıralarından evet" ), long_akp$Speeches),]))

akp_mhp_s1 <- as.numeric(nrow(long_akp[grepl(c("mhp sıralarından alkışlar"), long_akp$Speeches),]))
akp_mhp_s2 <- as.numeric(nrow(long_akp[grepl(c("mhp sıralarından bravo sesleri"), long_akp$Speeches),]))
akp_mhp_s3 <- as.numeric(nrow(long_akp[grepl(c("mhp sıralarından doğru"), long_akp$Speeches),]))
akp_mhp_s4 <- as.numeric(nrow(long_akp[grepl(c("mhp sıralarından evet" ), long_akp$Speeches),]))

akp_hdp_s1 <- as.numeric(nrow(long_akp[grepl(c("hdp sıralarından alkışlar"), long_akp$Speeches),]))
akp_hdp_s2 <- as.numeric(nrow(long_akp[grepl(c("hdp sıralarından bravo sesleri"), long_akp$Speeches),]))
akp_hdp_s3 <- as.numeric(nrow(long_akp[grepl(c("hdp sıralarından doğru"), long_akp$Speeches),]))
akp_hdp_s4 <- as.numeric(nrow(long_akp[grepl(c("hdp sıralarından evet" ), long_akp$Speeches),]))

#Hostility to ak party

akp_akp_h1 <- as.numeric(nrow(long_akp[grepl(c("ak parti sıralarından otur yerine sesleri"), long_akp$Speeches),]))
akp_akp_h2 <- as.numeric(nrow(long_akp[grepl(c("ak parti sıralarından gürültüler"), long_akp$Speeches),]))
akp_akp_h3 <- as.numeric(nrow(long_akp[grepl(c("ak parti sıralarından yuh"), long_akp$Speeches),]))
akp_akp_h4 <- as.numeric(nrow(long_akp[grepl(c("ak parti sıralarından ne alakası var sesleri"), long_akp$Speeches),]))
akp_akp_h5 <- as.numeric(nrow(long_akp[grepl(c("ak parti sıra kapaklarına vurmalar"), long_akp$Speeches),]))
akp_akp_h6 <- as.numeric(nrow(long_akp[grepl(c("ak parti sıralarından kürsü önünde toplanmalar" ), long_akp$Speeches),]))

akp_chp_h1 <- as.numeric(nrow(long_akp[grepl(c("chp sıralarından otur yerine sesleri"), long_akp$Speeches),]))
akp_chp_h2 <- as.numeric(nrow(long_akp[grepl(c("chp sıralarından gürültüler"), long_akp$Speeches),]))
akp_chp_h3 <- as.numeric(nrow(long_akp[grepl(c("chp sıralarından yuh"), long_akp$Speeches),]))
akp_chp_h4 <- as.numeric(nrow(long_akp[grepl(c("chp sıralarından ne alakası var sesleri"), long_akp$Speeches),]))
akp_chp_h5 <- as.numeric(nrow(long_akp[grepl(c("chp sıralarından sıra kapaklarına vurmalar"), long_akp$Speeches),]))
akp_chp_h6 <- as.numeric(nrow(long_akp[grepl(c("chp ve ak parti sıralarından karşılıklı laf atmalar"), long_akp$Speeches),]))
akp_chp_h7 <- as.numeric(nrow(long_akp[grepl(c("ak parti ve chp sıralarından karşılıklı laf atmalar"), long_akp$Speeches),]))
akp_chp_h8 <- as.numeric(nrow(long_akp[grepl(c("ak parti ve chp sıralarından karşılıklı sataşmalar"), long_akp$Speeches),]))
akp_chp_h9 <- as.numeric(nrow(long_akp[grepl(c("chp ve ak parti sıralarından karşılıklı sataşmalar"), long_akp$Speeches),]))
akp_chp_h10 <- as.numeric(nrow(long_akp[grepl(c("ak parti ve chp sıralarından birbirleri üzerine yürümeler" ), long_akp$Speeches),]))
akp_chp_h11 <- as.numeric(nrow(long_akp[grepl(c("chp ve ak parti sıralarından birbirleri üzerine yürümeler" ), long_akp$Speeches),]))
akp_chp_h12 <- as.numeric(nrow(long_akp[grepl(c("ak parti ve chp sıralarından karşılıklı konuşmalar" ), long_akp$Speeches),]))
akp_chp_h13 <- as.numeric(nrow(long_akp[grepl(c("chp ve ak parti sıralarından karşılıklı konuşmalar" ), long_akp$Speeches),]))
akp_chp_h14 <- as.numeric(nrow(long_akp[grepl(c("chp sıralarından kürsü önünde toplanmalar" ), long_akp$Speeches),]))

akp_mhp_h1 <- as.numeric(nrow(long_akp[grepl(c("mhp sıralarından otur yerine sesleri"), long_akp$Speeches),]))
akp_mhp_h2 <- as.numeric(nrow(long_akp[grepl(c("mhp sıralarından gürültüler"), long_akp$Speeches),]))
akp_mhp_h3 <- as.numeric(nrow(long_akp[grepl(c("mhp sıralarından yuh"), long_akp$Speeches),]))
akp_mhp_h4 <- as.numeric(nrow(long_akp[grepl(c("mhp sıralarından ne alakası var sesleri"), long_akp$Speeches),]))
akp_mhp_h5 <- as.numeric(nrow(long_akp[grepl(c("mhp sıralarından sıra kapaklarına vurmalar"), long_akp$Speeches),]))
akp_mhp_h6 <- as.numeric(nrow(long_akp[grepl(c("mhp ve ak parti sıralarından karşılıklı laf atmalar"), long_akp$Speeches),]))
akp_mhp_h7 <- as.numeric(nrow(long_akp[grepl(c("ak prti ve mhp sıralarından karşılıklı laf atmalar"), long_akp$Speeches),]))
akp_mhp_h8 <- as.numeric(nrow(long_akp[grepl(c("mhp ve ak parti sıralarından karşılıklı sataşmalar"), long_akp$Speeches),]))
akp_mhp_h9 <- as.numeric(nrow(long_akp[grepl(c("ak parti ve mhp sıralarından karşılıklı sataşmalar"), long_akp$Speeches),]))
akp_mhp_h10 <- as.numeric(nrow(long_akp[grepl(c("mhp ve ak parti sıralarından birbirleri üzerine yürümeler" ), long_akp$Speeches),]))
akp_mhp_h11 <- as.numeric(nrow(long_akp[grepl(c("ak parti ve mhp sıralarından birbirleri üzerine yürümeler" ), long_akp$Speeches),]))
akp_mhp_h12 <- as.numeric(nrow(long_akp[grepl(c("mhp ve ak parti sıralarından karşılıklı konuşmalar" ), long_akp$Speeches),]))
akp_mhp_h13 <- as.numeric(nrow(long_akp[grepl(c("ak parti ve mhp sıralarından karşılıklı konuşmalar" ), long_akp$Speeches),]))
akp_mhp_h14 <- as.numeric(nrow(long_akp[grepl(c("mhp sıralarından kürsü önünde toplanmalar" ), long_akp$Speeches),]))

akp_hdp_h1 <- as.numeric(nrow(long_akp[grepl(c("hdp sıralarından otur yerine sesleri"), long_akp$Speeches),]))
akp_hdp_h2 <- as.numeric(nrow(long_akp[grepl(c("hdp sıralarından gürültüler"), long_akp$Speeches),]))
akp_hdp_h3 <- as.numeric(nrow(long_akp[grepl(c("hdp sıralarından yuh"), long_akp$Speeches),]))
akp_hdp_h4 <- as.numeric(nrow(long_akp[grepl(c("hdp sıralarından ne alakası var sesleri"), long_akp$Speeches),]))
akp_hdp_h5 <- as.numeric(nrow(long_akp[grepl(c("hdp sıralarından sıra kapaklarına vurmalar"), long_akp$Speeches),]))
akp_hdp_h6 <- as.numeric(nrow(long_akp[grepl(c("hdp ve ak parti sıralarından karşılıklı laf atmalar"), long_akp$Speeches),]))
akp_hdp_h7 <- as.numeric(nrow(long_akp[grepl(c("akp ve hdp sıralarından karşılıklı laf atmalar"), long_akp$Speeches),]))
akp_hdp_h8 <- as.numeric(nrow(long_akp[grepl(c("hdp ve ak parti sıralarından karşılıklı sataşmalar"), long_akp$Speeches),]))
akp_hdp_h9 <- as.numeric(nrow(long_akp[grepl(c("akp ve hdp sıralarından karşılıklı sataşmalar"), long_akp$Speeches),]))
akp_hdp_h10 <- as.numeric(nrow(long_akp[grepl(c("hdp ve ak parti sıralarından birbirleri üzerine yürümeler" ), long_akp$Speeches),]))
akp_hdp_h11 <- as.numeric(nrow(long_akp[grepl(c("akp ve hdp sıralarından birbirleri üzerine yürümeler" ), long_akp$Speeches),]))
akp_hdp_h12 <- as.numeric(nrow(long_akp[grepl(c("hdp ve ak parti sıralarından karşılıklı konuşmalar" ), long_akp$Speeches),]))
akp_hdp_h13 <- as.numeric(nrow(long_akp[grepl(c("akp ve hdp sıralarından karşılıklı konuşmalar" ), long_akp$Speeches),]))
akp_hdp_h14 <- as.numeric(nrow(long_akp[grepl(c("hdp sıralarından kürsü önünde toplanmalar" ), long_akp$Speeches),]))

#support to mhp
mhp_mhp_s1 <- as.numeric(nrow(long_mhp[grepl(c("mhp sıralarından alkışlar"), long_mhp$Speeches),]))
mhp_mhp_s2 <- as.numeric(nrow(long_mhp[grepl(c("mhp sıralarından bravo sesleri"), long_mhp$Speeches),]))
mhp_mhp_s3 <- as.numeric(nrow(long_mhp[grepl(c("mhp sıralarından doğru"), long_mhp$Speeches),]))
mhp_mhp_s4 <- as.numeric(nrow(long_mhp[grepl(c("mhp sıralarından evet" ), long_mhp$Speeches),]))

mhp_akp_s1 <- as.numeric(nrow(long_mhp[grepl(c("ak parti sıralarından alkışlar"), long_mhp$Speeches),]))
mhp_akp_s2 <- as.numeric(nrow(long_mhp[grepl(c("ak parti sıralarından bravo sesleri"), long_mhp$Speeches),]))
mhp_akp_s3 <- as.numeric(nrow(long_mhp[grepl(c("ak parti sıralarından doğru"), long_mhp$Speeches),]))
mhp_akp_s4 <- as.numeric(nrow(long_mhp[grepl(c("ak parti sıralarından evet" ), long_mhp$Speeches),]))

mhp_chp_s1 <- as.numeric(nrow(long_mhp[grepl(c("chp sıralarından alkışlar"), long_mhp$Speeches),]))
mhp_chp_s2 <- as.numeric(nrow(long_mhp[grepl(c("chp sıralarından bravo sesleri"), long_mhp$Speeches),]))
mhp_chp_s3 <- as.numeric(nrow(long_mhp[grepl(c("chp sıralarından doğru"), long_mhp$Speeches),]))
mhp_chp_s4 <- as.numeric(nrow(long_mhp[grepl(c("chp sıralarından evet" ), long_mhp$Speeches),]))

mhp_hdp_s1 <- as.numeric(nrow(long_mhp[grepl(c("hdp sıralarından alkışlar"), long_mhp$Speeches),]))
mhp_hdp_s2 <- as.numeric(nrow(long_mhp[grepl(c("hdp sıralarından bravo sesleri"), long_mhp$Speeches),]))
mhp_hdp_s3 <- as.numeric(nrow(long_mhp[grepl(c("hdp sıralarından doğru"), long_mhp$Speeches),]))
mhp_hdp_s4 <- as.numeric(nrow(long_mhp[grepl(c("hdp sıralarından evet" ), long_mhp$Speeches),]))

#Hostility to mhp

mhp_mhp_h1 <- as.numeric(nrow(long_mhp[grepl(c("mhp sıralarından otur yerine sesleri"), long_mhp$Speeches),]))
mhp_mhp_h2 <- as.numeric(nrow(long_mhp[grepl(c("mhp sıralarından gürültüler"), long_mhp$Speeches),]))
mhp_mhp_h3 <- as.numeric(nrow(long_mhp[grepl(c("mhp sıralarından yuh"), long_mhp$Speeches),]))
mhp_mhp_h4 <- as.numeric(nrow(long_mhp[grepl(c("mhp sıralarından ne alakası var sesleri"), long_mhp$Speeches),]))
mhp_mhp_h5 <- as.numeric(nrow(long_mhp[grepl(c("mhp sıra kapaklarına vurmalar"), long_mhp$Speeches),]))
mhp_mhp_h6 <- as.numeric(nrow(long_mhp[grepl(c("mhp sıralarından kürsü önünde toplanmalar" ), long_mhp$Speeches),]))

mhp_chp_h1 <- as.numeric(nrow(long_mhp[grepl(c("chp sıralarından otur yerine sesleri"), long_mhp$Speeches),]))
mhp_chp_h2 <- as.numeric(nrow(long_mhp[grepl(c("chp sıralarından gürültüler"), long_mhp$Speeches),]))
mhp_chp_h3 <- as.numeric(nrow(long_mhp[grepl(c("chp sıralarından yuh"), long_mhp$Speeches),]))
mhp_chp_h4 <- as.numeric(nrow(long_mhp[grepl(c("chp sıralarından ne alakası var sesleri"), long_mhp$Speeches),]))
mhp_chp_h5 <- as.numeric(nrow(long_mhp[grepl(c("chp sıralarından sıra kapaklarına vurmalar"), long_mhp$Speeches),]))
mhp_chp_h6 <- as.numeric(nrow(long_mhp[grepl(c("chp ve mhp sıralarından karşılıklı laf atmalar"), long_mhp$Speeches),]))
mhp_chp_h7 <- as.numeric(nrow(long_mhp[grepl(c("mhp ve chp sıralarından karşılıklı laf atmalar"), long_mhp$Speeches),]))
mhp_chp_h8 <- as.numeric(nrow(long_mhp[grepl(c("mhp ve chp sıralarından karşılıklı sataşmalar"), long_mhp$Speeches),]))
mhp_chp_h9 <- as.numeric(nrow(long_mhp[grepl(c("chp ve mhp sıralarından karşılıklı sataşmalar"), long_mhp$Speeches),]))
mhp_chp_h10 <- as.numeric(nrow(long_mhp[grepl(c("mhp ve chp sıralarından birbirleri üzerine yürümeler" ), long_mhp$Speeches),]))
mhp_chp_h11 <- as.numeric(nrow(long_mhp[grepl(c("chp ve mhp sıralarından birbirleri üzerine yürümeler" ), long_mhp$Speeches),]))
mhp_chp_h12 <- as.numeric(nrow(long_mhp[grepl(c("mhp ve chp sıralarından karşılıklı konuşmalar" ), long_mhp$Speeches),]))
mhp_chp_h13 <- as.numeric(nrow(long_mhp[grepl(c("chp ve mhp sıralarından karşılıklı konuşmalar" ), long_mhp$Speeches),]))
mhp_chp_h14 <- as.numeric(nrow(long_mhp[grepl(c("chp sıralarından kürsü önünde toplanmalar" ), long_mhp$Speeches),]))

mhp_akp_h1 <- as.numeric(nrow(long_mhp[grepl(c("ak parti sıralarından otur yerine sesleri"), long_mhp$Speeches),]))
mhp_akp_h2 <- as.numeric(nrow(long_mhp[grepl(c("ak parti sıralarından gürültüler"), long_mhp$Speeches),]))
mhp_akp_h3 <- as.numeric(nrow(long_mhp[grepl(c("ak parti sıralarından yuh"), long_mhp$Speeches),]))
mhp_akp_h4 <- as.numeric(nrow(long_mhp[grepl(c("ak parti sıralarından ne alakası var sesleri"), long_mhp$Speeches),]))
mhp_akp_h5 <- as.numeric(nrow(long_mhp[grepl(c("ak parti sıralarından sıra kapaklarına vurmalar"), long_mhp$Speeches),]))
mhp_akp_h6 <- as.numeric(nrow(long_mhp[grepl(c("mhp ve ak parti sıralarından karşılıklı laf atmalar"), long_mhp$Speeches),]))
mhp_akp_h7 <- as.numeric(nrow(long_mhp[grepl(c("ak parti ve mhp sıralarından karşılıklı laf atmalar"), long_mhp$Speeches),]))
mhp_akp_h8 <- as.numeric(nrow(long_mhp[grepl(c("mhp ve ak parti sıralarından karşılıklı sataşmalar"), long_mhp$Speeches),]))
mhp_akp_h9 <- as.numeric(nrow(long_mhp[grepl(c("ak parti ve mhp sıralarından karşılıklı sataşmalar"), long_mhp$Speeches),]))
mhp_akp_h10 <- as.numeric(nrow(long_mhp[grepl(c("mhp ve ak parti sıralarından birbirleri üzerine yürümeler" ), long_mhp$Speeches),]))
mhp_akp_h11 <- as.numeric(nrow(long_mhp[grepl(c("ak parti ve mhp sıralarından birbirleri üzerine yürümeler" ), long_mhp$Speeches),]))
mhp_akp_h12 <- as.numeric(nrow(long_mhp[grepl(c("mhp ve ak parti sıralarından karşılıklı konuşmalar" ), long_mhp$Speeches),]))
mhp_akp_h13 <- as.numeric(nrow(long_mhp[grepl(c("ak parti ve mhp sıralarından karşılıklı konuşmalar" ), long_mhp$Speeches),]))
mhp_akp_h14 <- as.numeric(nrow(long_mhp[grepl(c("ak parti sıralarından kürsü önünde toplanmalar" ), long_mhp$Speeches),]))


mhp_hdp_h1 <- as.numeric(nrow(long_mhp[grepl(c("hdp sıralarından otur yerine sesleri"), long_mhp$Speeches),]))
mhp_hdp_h2 <- as.numeric(nrow(long_mhp[grepl(c("hdp sıralarından gürültüler"), long_mhp$Speeches),]))
mhp_hdp_h3 <- as.numeric(nrow(long_mhp[grepl(c("hdp sıralarından yuh"), long_mhp$Speeches),]))
mhp_hdp_h4 <- as.numeric(nrow(long_mhp[grepl(c("hdp sıralarından ne alakası var sesleri"), long_mhp$Speeches),]))
mhp_hdp_h5 <- as.numeric(nrow(long_mhp[grepl(c("hdp sıralarından sıra kapaklarına vurmalar"), long_mhp$Speeches),]))
mhp_hdp_h6 <- as.numeric(nrow(long_mhp[grepl(c("hdp ve nhp sıralarından karşılıklı laf atmalar"), long_mhp$Speeches),]))
mhp_hdp_h7 <- as.numeric(nrow(long_mhp[grepl(c("mhp ve hdp sıralarından karşılıklı laf atmalar"), long_mhp$Speeches),]))
mhp_hdp_h8 <- as.numeric(nrow(long_mhp[grepl(c("hdp ve mhp sıralarından karşılıklı sataşmalar"), long_mhp$Speeches),]))
mhp_hdp_h9 <- as.numeric(nrow(long_mhp[grepl(c("mhp ve hdp sıralarından karşılıklı sataşmalar"), long_mhp$Speeches),]))
mhp_hdp_h10 <- as.numeric(nrow(long_mhp[grepl(c("hdp ve mhp sıralarından birbirleri üzerine yürümeler" ), long_mhp$Speeches),]))
mhp_hdp_h11 <- as.numeric(nrow(long_mhp[grepl(c("mhp ve hdp sıralarından birbirleri üzerine yürümeler" ), long_mhp$Speeches),]))
mhp_hdp_h12 <- as.numeric(nrow(long_mhp[grepl(c("hdp ve mhp sıralarından karşılıklı konuşmalar" ), long_mhp$Speeches),]))
mhp_hdp_h13 <- as.numeric(nrow(long_mhp[grepl(c("mhp ve hdp sıralarından karşılıklı konuşmalar" ), long_mhp$Speeches),]))
mhp_hdp_h14 <- as.numeric(nrow(long_mhp[grepl(c("hdp sıralarından kürsü önünde toplanmalar" ), long_mhp$Speeches),]))

#support to hdp
hdp_hdp_s1 <- as.numeric(nrow(long_hdp[grepl(c("hdp sıralarından alkışlar"), long_hdp$Speeches),]))
hdp_hdp_s2 <- as.numeric(nrow(long_hdp[grepl(c("hdp sıralarından bravo sesleri"), long_hdp$Speeches),]))
hdp_hdp_s3 <- as.numeric(nrow(long_hdp[grepl(c("hdp sıralarından doğru"), long_hdp$Speeches),]))
hdp_hdp_s4 <- as.numeric(nrow(long_hdp[grepl(c("hdp sıralarından evet" ), long_hdp$Speeches),]))

hdp_akp_s1 <- as.numeric(nrow(long_hdp[grepl(c("ak parti sıralarından alkışlar"), long_hdp$Speeches),]))
hdp_akp_s2 <- as.numeric(nrow(long_hdp[grepl(c("ak parti sıralarından bravo sesleri"), long_hdp$Speeches),]))
hdp_akp_s3 <- as.numeric(nrow(long_hdp[grepl(c("ak parti sıralarından doğru"), long_hdp$Speeches),]))
hdp_akp_s4 <- as.numeric(nrow(long_hdp[grepl(c("ak parti sıralarından evet" ), long_hdp$Speeches),]))

hdp_chp_s1 <- as.numeric(nrow(long_hdp[grepl(c("chp sıralarından alkışlar"), long_hdp$Speeches),]))
hdp_chp_s2 <- as.numeric(nrow(long_hdp[grepl(c("chp sıralarından bravo sesleri"), long_hdp$Speeches),]))
hdp_chp_s3 <- as.numeric(nrow(long_hdp[grepl(c("chp sıralarından doğru"), long_hdp$Speeches),]))
hdp_chp_s4 <- as.numeric(nrow(long_hdp[grepl(c("chp sıralarından evet" ), long_hdp$Speeches),]))

hdp_mhp_s1 <- as.numeric(nrow(long_hdp[grepl(c("mhp sıralarından alkışlar"), long_hdp$Speeches),]))
hdp_mhp_s2 <- as.numeric(nrow(long_hdp[grepl(c("mhp sıralarından bravo sesleri"), long_hdp$Speeches),]))
hdp_mhp_s3 <- as.numeric(nrow(long_hdp[grepl(c("mhp sıralarından doğru"), long_hdp$Speeches),]))
hdp_mhp_s4 <- as.numeric(nrow(long_hdp[grepl(c("mhp sıralarından evet" ), long_hdp$Speeches),]))

#Hostility to hdp

hdp_hdp_h1 <- as.numeric(nrow(long_hdp[grepl(c("hdp sıralarından otur yerine sesleri"), long_hdp$Speeches),]))
hdp_hdp_h2 <- as.numeric(nrow(long_hdp[grepl(c("hdp sıralarından gürültüler"), long_hdp$Speeches),]))
hdp_hdp_h3 <- as.numeric(nrow(long_hdp[grepl(c("hdp sıralarından yuh"), long_hdp$Speeches),]))
hdp_hdp_h4 <- as.numeric(nrow(long_hdp[grepl(c("hdp sıralarından ne alakası var sesleri"), long_hdp$Speeches),]))
hdp_hdp_h5 <- as.numeric(nrow(long_hdp[grepl(c("hdp sıra kapaklarına vurmalar"), long_hdp$Speeches),]))
hdp_hdp_h6 <- as.numeric(nrow(long_hdp[grepl(c("hdp sıralarından kürsü önünde toplanmalar" ), long_hdp$Speeches),]))

hdp_chp_h1 <- as.numeric(nrow(long_hdp[grepl(c("chp sıralarından otur yerine sesleri"), long_hdp$Speeches),]))
hdp_chp_h2 <- as.numeric(nrow(long_hdp[grepl(c("chp sıralarından gürültüler"), long_hdp$Speeches),]))
hdp_chp_h3 <- as.numeric(nrow(long_hdp[grepl(c("chp sıralarından yuh"), long_hdp$Speeches),]))
hdp_chp_h4 <- as.numeric(nrow(long_hdp[grepl(c("chp sıralarından ne alakası var sesleri"), long_hdp$Speeches),]))
hdp_chp_h5 <- as.numeric(nrow(long_hdp[grepl(c("chp sıralarından sıra kapaklarına vurmalar"), long_hdp$Speeches),]))
hdp_chp_h6 <- as.numeric(nrow(long_hdp[grepl(c("chp ve hdp sıralarından karşılıklı laf atmalar"), long_hdp$Speeches),]))
hdp_chp_h7 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve chp sıralarından karşılıklı laf atmalar"), long_hdp$Speeches),]))
hdp_chp_h8 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve chp sıralarından karşılıklı sataşmalar"), long_hdp$Speeches),]))
hdp_chp_h9 <- as.numeric(nrow(long_hdp[grepl(c("chp ve hdp sıralarından karşılıklı sataşmalar"), long_hdp$Speeches),]))
hdp_chp_h10 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve chp sıralarından birbirleri üzerine yürümeler" ), long_hdp$Speeches),]))
hdp_chp_h11 <- as.numeric(nrow(long_hdp[grepl(c("chp ve hdp sıralarından birbirleri üzerine yürümeler" ), long_hdp$Speeches),]))
hdp_chp_h12 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve chp sıralarından karşılıklı konuşmalar" ), long_hdp$Speeches),]))
hdp_chp_h13 <- as.numeric(nrow(long_hdp[grepl(c("chp ve hdp sıralarından karşılıklı konuşmalar" ), long_hdp$Speeches),]))
hdp_chp_h14 <- as.numeric(nrow(long_hdp[grepl(c("chp sıralarından kürsü önünde toplanmalar" ), long_hdp$Speeches),]))

hdp_akp_h1 <- as.numeric(nrow(long_hdp[grepl(c("ak parti sıralarından otur yerine sesleri"), long_hdp$Speeches),]))
hdp_akp_h2 <- as.numeric(nrow(long_hdp[grepl(c("ak parti sıralarından gürültüler"), long_hdp$Speeches),]))
hdp_akp_h3 <- as.numeric(nrow(long_hdp[grepl(c("ak parti sıralarından yuh"), long_hdp$Speeches),]))
hdp_akp_h4 <- as.numeric(nrow(long_hdp[grepl(c("ak parti sıralarından ne alakası var sesleri"), long_hdp$Speeches),]))
hdp_akp_h5 <- as.numeric(nrow(long_hdp[grepl(c("ak parti sıralarından sıra kapaklarına vurmalar"), long_hdp$Speeches),]))
hdp_akp_h6 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve ak parti sıralarından karşılıklı laf atmalar"), long_hdp$Speeches),]))
hdp_akp_h7 <- as.numeric(nrow(long_hdp[grepl(c("ak parti ve hdp sıralarından karşılıklı laf atmalar"), long_hdp$Speeches),]))
hdp_akp_h8 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve ak parti sıralarından karşılıklı sataşmalar"), long_hdp$Speeches),]))
hdp_akp_h9 <- as.numeric(nrow(long_hdp[grepl(c("ak parti ve hdp sıralarından karşılıklı sataşmalar"), long_hdp$Speeches),]))
hdp_akp_h10 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve ak parti sıralarından birbirleri üzerine yürümeler" ), long_hdp$Speeches),]))
hdp_akp_h11 <- as.numeric(nrow(long_hdp[grepl(c("ak parti ve hdp sıralarından birbirleri üzerine yürümeler" ), long_hdp$Speeches),]))
hdp_akp_h12 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve ak parti sıralarından karşılıklı konuşmalar" ), long_hdp$Speeches),]))
hdp_akp_h13 <- as.numeric(nrow(long_hdp[grepl(c("ak parti ve hdp sıralarından karşılıklı konuşmalar" ), long_hdp$Speeches),]))
hdp_akp_h14 <- as.numeric(nrow(long_hdp[grepl(c("ak parti sıralarından kürsü önünde toplanmalar" ), long_hdp$Speeches),]))

hdp_mhp_h1 <- as.numeric(nrow(long_hdp[grepl(c("mhp sıralarından otur yerine sesleri"), long_hdp$Speeches),]))
hdp_mhp_h2 <- as.numeric(nrow(long_hdp[grepl(c("mhp sıralarından gürültüler"), long_hdp$Speeches),]))
hdp_mhp_h3 <- as.numeric(nrow(long_hdp[grepl(c("mhp sıralarından yuh"), long_hdp$Speeches),]))
hdp_mhp_h4 <- as.numeric(nrow(long_hdp[grepl(c("mhp sıralarından ne alakası var sesleri"), long_hdp$Speeches),]))
hdp_mhp_h5 <- as.numeric(nrow(long_hdp[grepl(c("mhp sıralarından sıra kapaklarına vurmalar"), long_hdp$Speeches),]))
hdp_mhp_h6 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve mhp sıralarından karşılıklı laf atmalar"), long_hdp$Speeches),]))
hdp_mhp_h7 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve hdp sıralarından karşılıklı laf atmalar"), long_hdp$Speeches),]))
hdp_mhp_h8 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve mhp sıralarından karşılıklı sataşmalar"), long_hdp$Speeches),]))
hdp_mhp_h9 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve hdp sıralarından karşılıklı sataşmalar"), long_hdp$Speeches),]))
hdp_mhp_h10 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve mhp sıralarından birbirleri üzerine yürümeler" ), long_hdp$Speeches),]))
hdp_mhp_h11 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve hdp sıralarından birbirleri üzerine yürümeler" ), long_hdp$Speeches),]))
hdp_mhp_h12 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve mhp sıralarından karşılıklı konuşmalar" ), long_hdp$Speeches),]))
hdp_mhp_h13 <- as.numeric(nrow(long_hdp[grepl(c("hdp ve hdp sıralarından karşılıklı konuşmalar" ), long_hdp$Speeches),]))
hdp_mhp_h14 <- as.numeric(nrow(long_hdp[grepl(c("mhp sıralarından kürsü önünde toplanmalar" ), long_hdp$Speeches),]))

akp_akp_support <- akp_akp_s1 + akp_akp_s2 + akp_akp_s3 + akp_akp_s4 
akp_chp_support <- akp_chp_s1 + akp_chp_s2 + akp_chp_s3 + akp_chp_s4 + chp_akp_s1 + chp_akp_s2 + chp_akp_s3 + chp_akp_s4 
akp_mhp_support <- akp_mhp_s1 + akp_mhp_s2 + akp_mhp_s3 + akp_mhp_s4 + mhp_akp_s1 + mhp_akp_s2 + mhp_akp_s3 + mhp_akp_s4 
akp_hdp_support <- akp_hdp_s1 + akp_hdp_s2 + akp_hdp_s3 + akp_hdp_s4 + hdp_akp_s1 + hdp_akp_s2 + hdp_akp_s3 + hdp_akp_s4 
chp_mhp_support <- mhp_chp_s1 + mhp_chp_s2 + mhp_chp_s3 + mhp_chp_s4 + chp_mhp_s1 + chp_mhp_s2 + chp_mhp_s3 + chp_mhp_s4 
chp_hdp_support <- hdp_chp_s1 + hdp_chp_s2 + hdp_chp_s3 + hdp_chp_s4 + chp_hdp_s1 + chp_hdp_s2 + chp_hdp_s3 + chp_hdp_s4 
chp_chp_support <- chp_chp_s1 + chp_chp_s2 + chp_chp_s3 + chp_chp_s4 
hdp_hdp_support <- hdp_hdp_s1 + hdp_hdp_s2 + hdp_hdp_s3 + hdp_hdp_s4 
hdp_mhp_support <- hdp_mhp_s1 + hdp_mhp_s2 + hdp_mhp_s3 + hdp_mhp_s4 + mhp_hdp_s1 + mhp_hdp_s2 + mhp_hdp_s3 + mhp_hdp_s4 
mhp_mhp_support <- mhp_mhp_s1 + mhp_mhp_s2 + mhp_mhp_s3 + mhp_mhp_s4 

akp_akp_hostility <- akp_akp_h1 + akp_akp_h2 + akp_akp_h3 + akp_akp_h4 + akp_akp_h5 + akp_akp_h6 

akp_chp_hostility <- akp_chp_h1 + akp_chp_h2 + akp_chp_h3 + akp_chp_h4 + akp_chp_h5 + akp_chp_h6 + akp_chp_h7 + akp_chp_h8 + akp_chp_h9 + akp_chp_h10 + akp_chp_h11 + akp_chp_h12 + akp_chp_h13 + akp_chp_h14
+ chp_akp_h1 + chp_akp_h2 + chp_akp_h3 + chp_akp_h4 + chp_akp_h5 + chp_akp_h6+ chp_akp_h7 + chp_akp_h8+ chp_akp_h9 + chp_akp_h10+ chp_akp_h11 + chp_akp_h12+ chp_akp_h13 + chp_akp_h14

akp_mhp_hostility <- akp_mhp_h1 + akp_mhp_h2 + akp_mhp_h3 + akp_mhp_h4 + akp_mhp_h5 + akp_mhp_h6 + akp_mhp_h7 + akp_mhp_h8 + akp_mhp_h9 + akp_mhp_h10 + akp_mhp_h11 + akp_mhp_h12 + akp_mhp_h13 + akp_mhp_h14
+ mhp_akp_h1 + mhp_akp_h2 + mhp_akp_h3 + mhp_akp_h4 + mhp_akp_h5 + mhp_akp_h6+ mhp_akp_h7 + mhp_akp_h8+ mhp_akp_h9 + mhp_akp_h10+ mhp_akp_h11 + mhp_akp_h12+ mhp_akp_h13 + mhp_akp_h14

akp_hdp_hostility <- akp_hdp_h1 + akp_hdp_h2 + akp_hdp_h3 + akp_hdp_h4 + akp_hdp_h5 + akp_hdp_h6 + akp_hdp_h7 + akp_hdp_h8 + akp_hdp_h9 + akp_hdp_h10 + akp_hdp_h11 + akp_hdp_h12 + akp_hdp_h13 + akp_hdp_h14
+ hdp_akp_h1 + hdp_akp_h2 + hdp_akp_h3 + hdp_akp_h4 + hdp_akp_h5 + hdp_akp_h6+ hdp_akp_h7 + hdp_akp_h8+ hdp_akp_h9 + hdp_akp_h10+ hdp_akp_h11 + hdp_akp_h12+ hdp_akp_h13 + hdp_akp_h14

chp_mhp_hostility <- mhp_chp_h1 + mhp_chp_h2 + mhp_chp_h3 + mhp_chp_h4 + mhp_chp_h5 + mhp_chp_h6 + mhp_chp_h7 + mhp_chp_h8 + mhp_chp_h9 + mhp_chp_h10 + mhp_chp_h11 + mhp_chp_h12 + mhp_chp_h13 + mhp_chp_h14
+ chp_mhp_h1 + chp_mhp_h2 + chp_mhp_h3 + chp_mhp_h4 + chp_mhp_h5 + chp_mhp_h6+ chp_mhp_h7 + chp_mhp_h8+ chp_mhp_h9 + chp_mhp_h10+ chp_mhp_h11 + chp_mhp_h12+ chp_mhp_h13 + chp_mhp_h14

chp_hdp_hostility <- hdp_chp_h1 + hdp_chp_h2 + hdp_chp_h3 + hdp_chp_h4 + hdp_chp_h5 + hdp_chp_h6 + hdp_chp_h7 + hdp_chp_h8 + hdp_chp_h9 + hdp_chp_h10 + hdp_chp_h11 + hdp_chp_h12 + hdp_chp_h13 + hdp_chp_h14
+ chp_hdp_h1 + chp_hdp_h2 + chp_hdp_h3 + chp_hdp_h4 + chp_hdp_h5 + chp_hdp_h6+ chp_hdp_h7 + chp_hdp_h8+ chp_hdp_h9 + chp_hdp_h10+ chp_hdp_h11 + chp_hdp_h12+ chp_hdp_h13 + chp_hdp_h14

chp_chp_hostility <- chp_chp_h1 + chp_chp_h2 + chp_chp_h3 + chp_chp_h4 + chp_chp_h5 + chp_chp_h6

hdp_hdp_hostility <- hdp_hdp_h1 + hdp_hdp_h2 + hdp_hdp_h3 + hdp_hdp_h4 + chp_chp_h5 + chp_chp_h6 

hdp_mhp_hostility <- hdp_mhp_h1 + hdp_mhp_h2 + hdp_mhp_h3 + hdp_mhp_h4 + hdp_mhp_h5 + hdp_mhp_h6 + hdp_mhp_h7 + hdp_mhp_h8 + hdp_mhp_h9 + hdp_mhp_h10 + hdp_mhp_h11 + hdp_mhp_h12 + hdp_mhp_h13 + hdp_mhp_h14
+ mhp_hdp_h1 + mhp_hdp_h2 + mhp_hdp_h3 + mhp_hdp_h4 + mhp_hdp_h5 + mhp_hdp_h6+ mhp_hdp_h7 + mhp_hdp_h8+ mhp_hdp_h9 + mhp_hdp_h10+ mhp_hdp_h11 + mhp_hdp_h12+ mhp_hdp_h13 + mhp_hdp_h14

mhp_mhp_hostility <- mhp_mhp_h1 + mhp_mhp_h2 + mhp_mhp_h3 + mhp_mhp_h4 + mhp_mhp_h5 + mhp_mhp_h6 


df_support_hostility <- data.frame(row.names= c("AKP-AKP","AKP-CHP","AKP-MHP","AKP-HDP","CHP-MHP","CHP-HDP","CHP-CHP","HDP-HDP","HDP-MHP","MHP-MHP"),
                                   Support = c(akp_akp_support,akp_chp_support,akp_mhp_support,akp_hdp_support,chp_mhp_support,chp_hdp_support,chp_chp_support,hdp_hdp_support,hdp_mhp_support,mhp_mhp_support),
                                   Hostility = c(akp_akp_hostility,akp_chp_hostility,akp_mhp_hostility,akp_hdp_support,chp_mhp_hostility,chp_hdp_hostility,chp_chp_hostility,hdp_hdp_hostility,hdp_mhp_hostility,mhp_mhp_hostility))


pca.support.hostility <- PCA(df_support_hostility, scale.unit = TRUE, ncp = 2, graph = TRUE)
ind.p <- fviz_pca_biplot(pca.support.hostility, repel = TRUE)
ind.p

ggpubr::ggpar(ind.p,
              title = "Dyadic Representation of Hostility and Support Scores between 2013 June-2015 June",
              subtitle = "Principal Component Analysis",
              xlab = "PC1(55.3%)", ylab = "PC2(44.7%)",
              ggtheme = theme_gray(), palette = "jco")


################################################################################
################################################################################
#FOR THE SECOND PERIOD
################################################################################
################################################################################

period_2 <- tbmm_corpus %>% filter(between(From, as.Date('2015-06-06'), as.Date('2016-10-06')))

long_2chp <- period_2 %>% filter(Speaker_party=="CHP")
long_2akp <- period_2 %>% filter(Speaker_party=="AKP AK Party")
long_2mhp <- period_2 %>% filter(Speaker_party=="MHP")
long_2hdp <- period_2 %>% filter(Speaker_party=="HDP")


#support to chp

chp_chp_s1 <- as.numeric(nrow(long_2chp[grepl(c("chp sıralarından alkışlar"), long_2chp$Speeches),]))
chp_chp_s2 <- as.numeric(nrow(long_2chp[grepl(c("chp sıralarından bravo sesleri"), long_2chp$Speeches),]))
chp_chp_s3 <- as.numeric(nrow(long_2chp[grepl(c("chp sıralarından doğru"), long_2chp$Speeches),]))
chp_chp_s4 <- as.numeric(nrow(long_2chp[grepl(c("chp sıralarından evet" ), long_2chp$Speeches),]))

chp_akp_s1 <- as.numeric(nrow(long_2chp[grepl(c("ak parti sıralarından alkışlar"), long_2chp$Speeches),]))
chp_akp_s2 <- as.numeric(nrow(long_2chp[grepl(c("ak parti sıralarından bravo sesleri"), long_2chp$Speeches),]))
chp_akp_s3 <- as.numeric(nrow(long_2chp[grepl(c("ak parti sıralarından doğru"), long_2chp$Speeches),]))
chp_akp_s4 <- as.numeric(nrow(long_2chp[grepl(c("ak parti sıralarından evet" ), long_2chp$Speeches),]))

chp_mhp_s1 <- as.numeric(nrow(long_2chp[grepl(c("mhp sıralarından alkışlar"), long_2chp$Speeches),]))
chp_mhp_s2 <- as.numeric(nrow(long_2chp[grepl(c("mhp sıralarından bravo sesleri"), long_2chp$Speeches),]))
chp_mhp_s3 <- as.numeric(nrow(long_2chp[grepl(c("mhp sıralarından doğru"), long_2chp$Speeches),]))
chp_mhp_s4 <- as.numeric(nrow(long_2chp[grepl(c("mhp sıralarından evet" ), long_2chp$Speeches),]))

chp_hdp_s1 <- as.numeric(nrow(long_2chp[grepl(c("hdp sıralarından alkışlar"), long_2chp$Speeches),]))
chp_hdp_s2 <- as.numeric(nrow(long_2chp[grepl(c("hdp sıralarından bravo sesleri"), long_2chp$Speeches),]))
chp_hdp_s3 <- as.numeric(nrow(long_2chp[grepl(c("hdp sıralarından doğru"), long_2chp$Speeches),]))
chp_hdp_s4 <- as.numeric(nrow(long_2chp[grepl(c("hdp sıralarından evet" ), long_2chp$Speeches),]))

#Hostility to chp

chp_chp_h1 <- as.numeric(nrow(long_2chp[grepl(c("chp sıralarından otur yerine sesleri"), long_2chp$Speeches),]))
chp_chp_h2 <- as.numeric(nrow(long_2chp[grepl(c("chp sıralarından gürültüler"), long_2chp$Speeches),]))
chp_chp_h3 <- as.numeric(nrow(long_2chp[grepl(c("chp sıralarından yuh"), long_2chp$Speeches),]))
chp_chp_h4 <- as.numeric(nrow(long_2chp[grepl(c("chp sıralarından ne alakası var sesleri"), long_2chp$Speeches),]))
chp_chp_h5 <- as.numeric(nrow(long_2chp[grepl(c("chp sıra kapaklarına vurmalar"), long_2chp$Speeches),]))
chp_chp_h6 <- as.numeric(nrow(long_2chp[grepl(c("chp sıralarından kürsü önünde toplanmalar" ), long_2chp$Speeches),]))

chp_akp_h1 <- as.numeric(nrow(long_2chp[grepl(c("ak parti sıralarından otur yerine sesleri"), long_2chp$Speeches),]))
chp_akp_h2 <- as.numeric(nrow(long_2chp[grepl(c("ak parti sıralarından gürültüler"), long_2chp$Speeches),]))
chp_akp_h3 <- as.numeric(nrow(long_2chp[grepl(c("ak parti sıralarından yuh"), long_2chp$Speeches),]))
chp_akp_h4 <- as.numeric(nrow(long_2chp[grepl(c("ak parti sıralarından ne alakası var sesleri"), long_2chp$Speeches),]))
chp_akp_h5 <- as.numeric(nrow(long_2chp[grepl(c("ak parti sıralarından sıra kapaklarına vurmalar"), long_2chp$Speeches),]))
chp_akp_h6 <- as.numeric(nrow(long_2chp[grepl(c("ak parti ve chp sıralarından karşılıklı laf atmalar"), long_2chp$Speeches),]))
chp_akp_h7 <- as.numeric(nrow(long_2chp[grepl(c("chp ve ak parti sıralarından karşılıklı laf atmalar"), long_2chp$Speeches),]))
chp_akp_h8 <- as.numeric(nrow(long_2chp[grepl(c("ak parti ve chp sıralarından karşılıklı sataşmalar"), long_2chp$Speeches),]))
chp_akp_h9 <- as.numeric(nrow(long_2chp[grepl(c("chp ve ak parti sıralarından karşılıklı sataşmalar"), long_2chp$Speeches),]))
chp_akp_h10 <- as.numeric(nrow(long_2chp[grepl(c("ak parti ve chp sıralarından birbirleri üzerine yürümeler" ), long_2chp$Speeches),]))
chp_akp_h11 <- as.numeric(nrow(long_2chp[grepl(c("chp ve ak parti sıralarından birbirleri üzerine yürümeler" ), long_2chp$Speeches),]))
chp_akp_h12 <- as.numeric(nrow(long_2chp[grepl(c("ak parti ve chp sıralarından karşılıklı konuşmalar" ), long_2chp$Speeches),]))
chp_akp_h13 <- as.numeric(nrow(long_2chp[grepl(c("chp ve ak parti sıralarından karşılıklı konuşmalar" ), long_2chp$Speeches),]))
chp_akp_h14 <- as.numeric(nrow(long_2chp[grepl(c("ak parti sıralarından kürsü önünde toplanmalar" ), long_2chp$Speeches),]))

chp_mhp_h1 <- as.numeric(nrow(long_2chp[grepl(c("mhp sıralarından otur yerine sesleri"), long_2chp$Speeches),]))
chp_mhp_h2 <- as.numeric(nrow(long_2chp[grepl(c("mhp sıralarından gürültüler"), long_2chp$Speeches),]))
chp_mhp_h3 <- as.numeric(nrow(long_2chp[grepl(c("mhp sıralarından yuh"), long_2chp$Speeches),]))
chp_mhp_h4 <- as.numeric(nrow(long_2chp[grepl(c("mhp sıralarından ne alakası var sesleri"), long_2chp$Speeches),]))
chp_mhp_h5 <- as.numeric(nrow(long_2chp[grepl(c("mhp sıralarından sıra kapaklarına vurmalar"), long_2chp$Speeches),]))
chp_mhp_h6 <- as.numeric(nrow(long_2chp[grepl(c("mhp ve chp sıralarından karşılıklı laf atmalar"), long_2chp$Speeches),]))
chp_mhp_h7 <- as.numeric(nrow(long_2chp[grepl(c("chp ve mhp sıralarından karşılıklı laf atmalar"), long_2chp$Speeches),]))
chp_mhp_h8 <- as.numeric(nrow(long_2chp[grepl(c("mhp ve chp sıralarından karşılıklı sataşmalar"), long_2chp$Speeches),]))
chp_mhp_h9 <- as.numeric(nrow(long_2chp[grepl(c("chp ve mhp sıralarından karşılıklı sataşmalar"), long_2chp$Speeches),]))
chp_mhp_h10 <- as.numeric(nrow(long_2chp[grepl(c("mhp ve chp sıralarından birbirleri üzerine yürümeler" ), long_2chp$Speeches),]))
chp_mhp_h11 <- as.numeric(nrow(long_2chp[grepl(c("chp ve mhp sıralarından birbirleri üzerine yürümeler" ), long_2chp$Speeches),]))
chp_mhp_h12 <- as.numeric(nrow(long_2chp[grepl(c("mhp ve chp sıralarından karşılıklı konuşmalar" ), long_2chp$Speeches),]))
chp_mhp_h13 <- as.numeric(nrow(long_2chp[grepl(c("chp ve mhp sıralarından karşılıklı konuşmalar" ), long_2chp$Speeches),]))
chp_mhp_h14 <- as.numeric(nrow(long_2chp[grepl(c("mhp sıralarından kürsü önünde toplanmalar" ), long_2chp$Speeches),]))


chp_hdp_h1 <- as.numeric(nrow(long_2chp[grepl(c("hdp sıralarından otur yerine sesleri"), long_2chp$Speeches),]))
chp_hdp_h2 <- as.numeric(nrow(long_2chp[grepl(c("hdp sıralarından gürültüler"), long_2chp$Speeches),]))
chp_hdp_h3 <- as.numeric(nrow(long_2chp[grepl(c("hdp sıralarından yuh"), long_2chp$Speeches),]))
chp_hdp_h4 <- as.numeric(nrow(long_2chp[grepl(c("hdp sıralarından ne alakası var sesleri"), long_2chp$Speeches),]))
chp_hdp_h5 <- as.numeric(nrow(long_2chp[grepl(c("hdp sıralarından sıra kapaklarına vurmalar"), long_2chp$Speeches),]))
chp_hdp_h6 <- as.numeric(nrow(long_2chp[grepl(c("hdp ve chp sıralarından karşılıklı laf atmalar"), long_2chp$Speeches),]))
chp_hdp_h7 <- as.numeric(nrow(long_2chp[grepl(c("chp ve hdp sıralarından karşılıklı laf atmalar"), long_2chp$Speeches),]))
chp_hdp_h8 <- as.numeric(nrow(long_2chp[grepl(c("hdp ve chp sıralarından karşılıklı sataşmalar"), long_2chp$Speeches),]))
chp_hdp_h9 <- as.numeric(nrow(long_2chp[grepl(c("chp ve hdp sıralarından karşılıklı sataşmalar"), long_2chp$Speeches),]))
chp_hdp_h10 <- as.numeric(nrow(long_2chp[grepl(c("hdp ve chp sıralarından birbirleri üzerine yürümeler" ), long_2chp$Speeches),]))
chp_hdp_h11 <- as.numeric(nrow(long_2chp[grepl(c("chp ve hdp sıralarından birbirleri üzerine yürümeler" ), long_2chp$Speeches),]))
chp_hdp_h12 <- as.numeric(nrow(long_2chp[grepl(c("hdp ve chp sıralarından karşılıklı konuşmalar" ), long_2chp$Speeches),]))
chp_hdp_h13 <- as.numeric(nrow(long_2chp[grepl(c("chp ve hdp sıralarından karşılıklı konuşmalar" ), long_2chp$Speeches),]))
chp_hdp_h14 <- as.numeric(nrow(long_2chp[grepl(c("hdp sıralarından kürsü önünde toplanmalar"), long_2chp$Speeches),]))


#support to ak party

akp_chp_s1 <- as.numeric(nrow(long_2akp[grepl(c("chp sıralarından alkışlar"), long_2akp$Speeches),]))
akp_chp_s2 <- as.numeric(nrow(long_2akp[grepl(c("chp sıralarından bravo sesleri"), long_2akp$Speeches),]))
akp_chp_s3 <- as.numeric(nrow(long_2akp[grepl(c("chp sıralarından doğru"), long_2akp$Speeches),]))
akp_chp_s4 <- as.numeric(nrow(long_2akp[grepl(c("chp sıralarından evet" ), long_2akp$Speeches),]))

akp_akp_s1 <- as.numeric(nrow(long_2akp[grepl(c("ak parti sıralarından alkışlar"), long_2akp$Speeches),]))
akp_akp_s2 <- as.numeric(nrow(long_2akp[grepl(c("ak parti sıralarından bravo sesleri"), long_2akp$Speeches),]))
akp_akp_s3 <- as.numeric(nrow(long_2akp[grepl(c("ak parti sıralarından doğru"), long_2akp$Speeches),]))
akp_akp_s4 <- as.numeric(nrow(long_2akp[grepl(c("ak parti sıralarından evet" ), long_2akp$Speeches),]))

akp_mhp_s1 <- as.numeric(nrow(long_2akp[grepl(c("mhp sıralarından alkışlar"), long_2akp$Speeches),]))
akp_mhp_s2 <- as.numeric(nrow(long_2akp[grepl(c("mhp sıralarından bravo sesleri"), long_2akp$Speeches),]))
akp_mhp_s3 <- as.numeric(nrow(long_2akp[grepl(c("mhp sıralarından doğru"), long_2akp$Speeches),]))
akp_mhp_s4 <- as.numeric(nrow(long_2akp[grepl(c("mhp sıralarından evet" ), long_2akp$Speeches),]))

akp_hdp_s1 <- as.numeric(nrow(long_2akp[grepl(c("hdp sıralarından alkışlar"), long_2akp$Speeches),]))
akp_hdp_s2 <- as.numeric(nrow(long_2akp[grepl(c("hdp sıralarından bravo sesleri"), long_2akp$Speeches),]))
akp_hdp_s3 <- as.numeric(nrow(long_2akp[grepl(c("hdp sıralarından doğru"), long_2akp$Speeches),]))
akp_hdp_s4 <- as.numeric(nrow(long_2akp[grepl(c("hdp sıralarından evet" ), long_2akp$Speeches),]))

#Hostility to ak party

akp_akp_h1 <- as.numeric(nrow(long_2akp[grepl(c("ak parti sıralarından otur yerine sesleri"), long_2akp$Speeches),]))
akp_akp_h2 <- as.numeric(nrow(long_2akp[grepl(c("ak parti sıralarından gürültüler"), long_2akp$Speeches),]))
akp_akp_h3 <- as.numeric(nrow(long_2akp[grepl(c("ak parti sıralarından yuh"), long_2akp$Speeches),]))
akp_akp_h4 <- as.numeric(nrow(long_2akp[grepl(c("ak parti sıralarından ne alakası var sesleri"), long_2akp$Speeches),]))
akp_akp_h5 <- as.numeric(nrow(long_2akp[grepl(c("ak parti sıra kapaklarına vurmalar"), long_2akp$Speeches),]))
akp_akp_h6 <- as.numeric(nrow(long_2akp[grepl(c("ak parti sıralarından kürsü önünde toplanmalar" ), long_2akp$Speeches),]))

akp_chp_h1 <- as.numeric(nrow(long_2akp[grepl(c("chp sıralarından otur yerine sesleri"), long_2akp$Speeches),]))
akp_chp_h2 <- as.numeric(nrow(long_2akp[grepl(c("chp sıralarından gürültüler"), long_2akp$Speeches),]))
akp_chp_h3 <- as.numeric(nrow(long_2akp[grepl(c("chp sıralarından yuh"), long_2akp$Speeches),]))
akp_chp_h4 <- as.numeric(nrow(long_2akp[grepl(c("chp sıralarından ne alakası var sesleri"), long_2akp$Speeches),]))
akp_chp_h5 <- as.numeric(nrow(long_2akp[grepl(c("chp sıralarından sıra kapaklarına vurmalar"), long_2akp$Speeches),]))
akp_chp_h6 <- as.numeric(nrow(long_2akp[grepl(c("chp ve ak parti sıralarından karşılıklı laf atmalar"), long_2akp$Speeches),]))
akp_chp_h7 <- as.numeric(nrow(long_2akp[grepl(c("ak parti ve chp sıralarından karşılıklı laf atmalar"), long_2akp$Speeches),]))
akp_chp_h8 <- as.numeric(nrow(long_2akp[grepl(c("ak parti ve chp sıralarından karşılıklı sataşmalar"), long_2akp$Speeches),]))
akp_chp_h9 <- as.numeric(nrow(long_2akp[grepl(c("chp ve ak parti sıralarından karşılıklı sataşmalar"), long_2akp$Speeches),]))
akp_chp_h10 <- as.numeric(nrow(long_2akp[grepl(c("ak parti ve chp sıralarından birbirleri üzerine yürümeler" ), long_2akp$Speeches),]))
akp_chp_h11 <- as.numeric(nrow(long_2akp[grepl(c("chp ve ak parti sıralarından birbirleri üzerine yürümeler" ), long_2akp$Speeches),]))
akp_chp_h12 <- as.numeric(nrow(long_2akp[grepl(c("ak parti ve chp sıralarından karşılıklı konuşmalar" ), long_2akp$Speeches),]))
akp_chp_h13 <- as.numeric(nrow(long_2akp[grepl(c("chp ve ak parti sıralarından karşılıklı konuşmalar" ), long_2akp$Speeches),]))
akp_chp_h14 <- as.numeric(nrow(long_2akp[grepl(c("chp sıralarından kürsü önünde toplanmalar" ), long_2akp$Speeches),]))

akp_mhp_h1 <- as.numeric(nrow(long_2akp[grepl(c("mhp sıralarından otur yerine sesleri"), long_2akp$Speeches),]))
akp_mhp_h2 <- as.numeric(nrow(long_2akp[grepl(c("mhp sıralarından gürültüler"), long_2akp$Speeches),]))
akp_mhp_h3 <- as.numeric(nrow(long_2akp[grepl(c("mhp sıralarından yuh"), long_2akp$Speeches),]))
akp_mhp_h4 <- as.numeric(nrow(long_2akp[grepl(c("mhp sıralarından ne alakası var sesleri"), long_2akp$Speeches),]))
akp_mhp_h5 <- as.numeric(nrow(long_2akp[grepl(c("mhp sıralarından sıra kapaklarına vurmalar"), long_2akp$Speeches),]))
akp_mhp_h6 <- as.numeric(nrow(long_2akp[grepl(c("mhp ve ak parti sıralarından karşılıklı laf atmalar"), long_2akp$Speeches),]))
akp_mhp_h7 <- as.numeric(nrow(long_2akp[grepl(c("ak prti ve mhp sıralarından karşılıklı laf atmalar"), long_2akp$Speeches),]))
akp_mhp_h8 <- as.numeric(nrow(long_2akp[grepl(c("mhp ve ak parti sıralarından karşılıklı sataşmalar"), long_2akp$Speeches),]))
akp_mhp_h9 <- as.numeric(nrow(long_2akp[grepl(c("ak parti ve mhp sıralarından karşılıklı sataşmalar"), long_2akp$Speeches),]))
akp_mhp_h10 <- as.numeric(nrow(long_2akp[grepl(c("mhp ve ak parti sıralarından birbirleri üzerine yürümeler" ), long_2akp$Speeches),]))
akp_mhp_h11 <- as.numeric(nrow(long_2akp[grepl(c("ak parti ve mhp sıralarından birbirleri üzerine yürümeler" ), long_2akp$Speeches),]))
akp_mhp_h12 <- as.numeric(nrow(long_2akp[grepl(c("mhp ve ak parti sıralarından karşılıklı konuşmalar" ), long_2akp$Speeches),]))
akp_mhp_h13 <- as.numeric(nrow(long_2akp[grepl(c("ak parti ve mhp sıralarından karşılıklı konuşmalar" ), long_2akp$Speeches),]))
akp_mhp_h14 <- as.numeric(nrow(long_2akp[grepl(c("mhp sıralarından kürsü önünde toplanmalar" ), long_2akp$Speeches),]))

akp_hdp_h1 <- as.numeric(nrow(long_2akp[grepl(c("hdp sıralarından otur yerine sesleri"), long_2akp$Speeches),]))
akp_hdp_h2 <- as.numeric(nrow(long_2akp[grepl(c("hdp sıralarından gürültüler"), long_2akp$Speeches),]))
akp_hdp_h3 <- as.numeric(nrow(long_2akp[grepl(c("hdp sıralarından yuh"), long_2akp$Speeches),]))
akp_hdp_h4 <- as.numeric(nrow(long_2akp[grepl(c("hdp sıralarından ne alakası var sesleri"), long_2akp$Speeches),]))
akp_hdp_h5 <- as.numeric(nrow(long_2akp[grepl(c("hdp sıralarından sıra kapaklarına vurmalar"), long_2akp$Speeches),]))
akp_hdp_h6 <- as.numeric(nrow(long_2akp[grepl(c("hdp ve ak parti sıralarından karşılıklı laf atmalar"), long_2akp$Speeches),]))
akp_hdp_h7 <- as.numeric(nrow(long_2akp[grepl(c("akp ve hdp sıralarından karşılıklı laf atmalar"), long_2akp$Speeches),]))
akp_hdp_h8 <- as.numeric(nrow(long_2akp[grepl(c("hdp ve ak parti sıralarından karşılıklı sataşmalar"), long_2akp$Speeches),]))
akp_hdp_h9 <- as.numeric(nrow(long_2akp[grepl(c("akp ve hdp sıralarından karşılıklı sataşmalar"), long_2akp$Speeches),]))
akp_hdp_h10 <- as.numeric(nrow(long_2akp[grepl(c("hdp ve ak parti sıralarından birbirleri üzerine yürümeler" ), long_2akp$Speeches),]))
akp_hdp_h11 <- as.numeric(nrow(long_2akp[grepl(c("akp ve hdp sıralarından birbirleri üzerine yürümeler" ), long_2akp$Speeches),]))
akp_hdp_h12 <- as.numeric(nrow(long_2akp[grepl(c("hdp ve ak parti sıralarından karşılıklı konuşmalar" ), long_2akp$Speeches),]))
akp_hdp_h13 <- as.numeric(nrow(long_2akp[grepl(c("akp ve hdp sıralarından karşılıklı konuşmalar" ), long_2akp$Speeches),]))
akp_hdp_h14 <- as.numeric(nrow(long_2akp[grepl(c("hdp sıralarından kürsü önünde toplanmalar" ), long_2akp$Speeches),]))

#support to mhp
mhp_mhp_s1 <- as.numeric(nrow(long_2mhp[grepl(c("mhp sıralarından alkışlar"), long_2mhp$Speeches),]))
mhp_mhp_s2 <- as.numeric(nrow(long_2mhp[grepl(c("mhp sıralarından bravo sesleri"), long_2mhp$Speeches),]))
mhp_mhp_s3 <- as.numeric(nrow(long_2mhp[grepl(c("mhp sıralarından doğru"), long_2mhp$Speeches),]))
mhp_mhp_s4 <- as.numeric(nrow(long_2mhp[grepl(c("mhp sıralarından evet" ), long_2mhp$Speeches),]))

mhp_akp_s1 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti sıralarından alkışlar"), long_2mhp$Speeches),]))
mhp_akp_s2 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti sıralarından bravo sesleri"), long_2mhp$Speeches),]))
mhp_akp_s3 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti sıralarından doğru"), long_2mhp$Speeches),]))
mhp_akp_s4 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti sıralarından evet" ), long_2mhp$Speeches),]))

mhp_chp_s1 <- as.numeric(nrow(long_2mhp[grepl(c("chp sıralarından alkışlar"), long_2mhp$Speeches),]))
mhp_chp_s2 <- as.numeric(nrow(long_2mhp[grepl(c("chp sıralarından bravo sesleri"), long_2mhp$Speeches),]))
mhp_chp_s3 <- as.numeric(nrow(long_2mhp[grepl(c("chp sıralarından doğru"), long_2mhp$Speeches),]))
mhp_chp_s4 <- as.numeric(nrow(long_2mhp[grepl(c("chp sıralarından evet" ), long_2mhp$Speeches),]))

mhp_hdp_s1 <- as.numeric(nrow(long_2mhp[grepl(c("hdp sıralarından alkışlar"), long_2mhp$Speeches),]))
mhp_hdp_s2 <- as.numeric(nrow(long_2mhp[grepl(c("hdp sıralarından bravo sesleri"), long_2mhp$Speeches),]))
mhp_hdp_s3 <- as.numeric(nrow(long_2mhp[grepl(c("hdp sıralarından doğru"), long_2mhp$Speeches),]))
mhp_hdp_s4 <- as.numeric(nrow(long_2mhp[grepl(c("hdp sıralarından evet" ), long_2mhp$Speeches),]))

#Hostility to mhp

mhp_mhp_h1 <- as.numeric(nrow(long_2mhp[grepl(c("mhp sıralarından otur yerine sesleri"), long_2mhp$Speeches),]))
mhp_mhp_h2 <- as.numeric(nrow(long_2mhp[grepl(c("mhp sıralarından gürültüler"), long_2mhp$Speeches),]))
mhp_mhp_h3 <- as.numeric(nrow(long_2mhp[grepl(c("mhp sıralarından yuh"), long_2mhp$Speeches),]))
mhp_mhp_h4 <- as.numeric(nrow(long_2mhp[grepl(c("mhp sıralarından ne alakası var sesleri"), long_2mhp$Speeches),]))
mhp_mhp_h5 <- as.numeric(nrow(long_2mhp[grepl(c("mhp sıra kapaklarına vurmalar"), long_2mhp$Speeches),]))
mhp_mhp_h6 <- as.numeric(nrow(long_2mhp[grepl(c("mhp sıralarından kürsü önünde toplanmalar" ), long_2mhp$Speeches),]))

mhp_chp_h1 <- as.numeric(nrow(long_2mhp[grepl(c("chp sıralarından otur yerine sesleri"), long_2mhp$Speeches),]))
mhp_chp_h2 <- as.numeric(nrow(long_2mhp[grepl(c("chp sıralarından gürültüler"), long_2mhp$Speeches),]))
mhp_chp_h3 <- as.numeric(nrow(long_2mhp[grepl(c("chp sıralarından yuh"), long_2mhp$Speeches),]))
mhp_chp_h4 <- as.numeric(nrow(long_2mhp[grepl(c("chp sıralarından ne alakası var sesleri"), long_2mhp$Speeches),]))
mhp_chp_h5 <- as.numeric(nrow(long_2mhp[grepl(c("chp sıralarından sıra kapaklarına vurmalar"), long_2mhp$Speeches),]))
mhp_chp_h6 <- as.numeric(nrow(long_2mhp[grepl(c("chp ve mhp sıralarından karşılıklı laf atmalar"), long_2mhp$Speeches),]))
mhp_chp_h7 <- as.numeric(nrow(long_2mhp[grepl(c("mhp ve chp sıralarından karşılıklı laf atmalar"), long_2mhp$Speeches),]))
mhp_chp_h8 <- as.numeric(nrow(long_2mhp[grepl(c("mhp ve chp sıralarından karşılıklı sataşmalar"), long_2mhp$Speeches),]))
mhp_chp_h9 <- as.numeric(nrow(long_2mhp[grepl(c("chp ve mhp sıralarından karşılıklı sataşmalar"), long_2mhp$Speeches),]))
mhp_chp_h10 <- as.numeric(nrow(long_2mhp[grepl(c("mhp ve chp sıralarından birbirleri üzerine yürümeler" ), long_2mhp$Speeches),]))
mhp_chp_h11 <- as.numeric(nrow(long_2mhp[grepl(c("chp ve mhp sıralarından birbirleri üzerine yürümeler" ), long_2mhp$Speeches),]))
mhp_chp_h12 <- as.numeric(nrow(long_2mhp[grepl(c("mhp ve chp sıralarından karşılıklı konuşmalar" ), long_2mhp$Speeches),]))
mhp_chp_h13 <- as.numeric(nrow(long_2mhp[grepl(c("chp ve mhp sıralarından karşılıklı konuşmalar" ), long_2mhp$Speeches),]))
mhp_chp_h14 <- as.numeric(nrow(long_2mhp[grepl(c("chp sıralarından kürsü önünde toplanmalar" ), long_2mhp$Speeches),]))

mhp_akp_h1 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti sıralarından otur yerine sesleri"), long_2mhp$Speeches),]))
mhp_akp_h2 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti sıralarından gürültüler"), long_2mhp$Speeches),]))
mhp_akp_h3 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti sıralarından yuh"), long_2mhp$Speeches),]))
mhp_akp_h4 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti sıralarından ne alakası var sesleri"), long_2mhp$Speeches),]))
mhp_akp_h5 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti sıralarından sıra kapaklarına vurmalar"), long_2mhp$Speeches),]))
mhp_akp_h6 <- as.numeric(nrow(long_2mhp[grepl(c("mhp ve ak parti sıralarından karşılıklı laf atmalar"), long_2mhp$Speeches),]))
mhp_akp_h7 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti ve mhp sıralarından karşılıklı laf atmalar"), long_2mhp$Speeches),]))
mhp_akp_h8 <- as.numeric(nrow(long_2mhp[grepl(c("mhp ve ak parti sıralarından karşılıklı sataşmalar"), long_2mhp$Speeches),]))
mhp_akp_h9 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti ve mhp sıralarından karşılıklı sataşmalar"), long_2mhp$Speeches),]))
mhp_akp_h10 <- as.numeric(nrow(long_2mhp[grepl(c("mhp ve ak parti sıralarından birbirleri üzerine yürümeler" ), long_2mhp$Speeches),]))
mhp_akp_h11 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti ve mhp sıralarından birbirleri üzerine yürümeler" ), long_2mhp$Speeches),]))
mhp_akp_h12 <- as.numeric(nrow(long_2mhp[grepl(c("mhp ve ak parti sıralarından karşılıklı konuşmalar" ), long_2mhp$Speeches),]))
mhp_akp_h13 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti ve mhp sıralarından karşılıklı konuşmalar" ), long_2mhp$Speeches),]))
mhp_akp_h14 <- as.numeric(nrow(long_2mhp[grepl(c("ak parti sıralarından kürsü önünde toplanmalar" ), long_2mhp$Speeches),]))


mhp_hdp_h1 <- as.numeric(nrow(long_2mhp[grepl(c("hdp sıralarından otur yerine sesleri"), long_2mhp$Speeches),]))
mhp_hdp_h2 <- as.numeric(nrow(long_2mhp[grepl(c("hdp sıralarından gürültüler"), long_2mhp$Speeches),]))
mhp_hdp_h3 <- as.numeric(nrow(long_2mhp[grepl(c("hdp sıralarından yuh"), long_2mhp$Speeches),]))
mhp_hdp_h4 <- as.numeric(nrow(long_2mhp[grepl(c("hdp sıralarından ne alakası var sesleri"), long_2mhp$Speeches),]))
mhp_hdp_h5 <- as.numeric(nrow(long_2mhp[grepl(c("hdp sıralarından sıra kapaklarına vurmalar"), long_2mhp$Speeches),]))
mhp_hdp_h6 <- as.numeric(nrow(long_2mhp[grepl(c("hdp ve nhp sıralarından karşılıklı laf atmalar"), long_2mhp$Speeches),]))
mhp_hdp_h7 <- as.numeric(nrow(long_2mhp[grepl(c("mhp ve hdp sıralarından karşılıklı laf atmalar"), long_2mhp$Speeches),]))
mhp_hdp_h8 <- as.numeric(nrow(long_2mhp[grepl(c("hdp ve mhp sıralarından karşılıklı sataşmalar"), long_2mhp$Speeches),]))
mhp_hdp_h9 <- as.numeric(nrow(long_2mhp[grepl(c("mhp ve hdp sıralarından karşılıklı sataşmalar"), long_2mhp$Speeches),]))
mhp_hdp_h10 <- as.numeric(nrow(long_2mhp[grepl(c("hdp ve mhp sıralarından birbirleri üzerine yürümeler" ), long_2mhp$Speeches),]))
mhp_hdp_h11 <- as.numeric(nrow(long_2mhp[grepl(c("mhp ve hdp sıralarından birbirleri üzerine yürümeler" ), long_2mhp$Speeches),]))
mhp_hdp_h12 <- as.numeric(nrow(long_2mhp[grepl(c("hdp ve mhp sıralarından karşılıklı konuşmalar" ), long_2mhp$Speeches),]))
mhp_hdp_h13 <- as.numeric(nrow(long_2mhp[grepl(c("mhp ve hdp sıralarından karşılıklı konuşmalar" ), long_2mhp$Speeches),]))
mhp_hdp_h14 <- as.numeric(nrow(long_2mhp[grepl(c("hdp sıralarından kürsü önünde toplanmalar" ), long_2mhp$Speeches),]))

#support to hdp
hdp_hdp_s1 <- as.numeric(nrow(long_2hdp[grepl(c("hdp sıralarından alkışlar"), long_2hdp$Speeches),]))
hdp_hdp_s2 <- as.numeric(nrow(long_2hdp[grepl(c("hdp sıralarından bravo sesleri"), long_2hdp$Speeches),]))
hdp_hdp_s3 <- as.numeric(nrow(long_2hdp[grepl(c("hdp sıralarından doğru"), long_2hdp$Speeches),]))
hdp_hdp_s4 <- as.numeric(nrow(long_2hdp[grepl(c("hdp sıralarından evet" ), long_2hdp$Speeches),]))

hdp_akp_s1 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti sıralarından alkışlar"), long_2hdp$Speeches),]))
hdp_akp_s2 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti sıralarından bravo sesleri"), long_2hdp$Speeches),]))
hdp_akp_s3 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti sıralarından doğru"), long_2hdp$Speeches),]))
hdp_akp_s4 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti sıralarından evet" ), long_2hdp$Speeches),]))

hdp_chp_s1 <- as.numeric(nrow(long_2hdp[grepl(c("chp sıralarından alkışlar"), long_2hdp$Speeches),]))
hdp_chp_s2 <- as.numeric(nrow(long_2hdp[grepl(c("chp sıralarından bravo sesleri"), long_2hdp$Speeches),]))
hdp_chp_s3 <- as.numeric(nrow(long_2hdp[grepl(c("chp sıralarından doğru"), long_2hdp$Speeches),]))
hdp_chp_s4 <- as.numeric(nrow(long_2hdp[grepl(c("chp sıralarından evet" ), long_2hdp$Speeches),]))

hdp_mhp_s1 <- as.numeric(nrow(long_2hdp[grepl(c("mhp sıralarından alkışlar"), long_2hdp$Speeches),]))
hdp_mhp_s2 <- as.numeric(nrow(long_2hdp[grepl(c("mhp sıralarından bravo sesleri"), long_2hdp$Speeches),]))
hdp_mhp_s3 <- as.numeric(nrow(long_2hdp[grepl(c("mhp sıralarından doğru"), long_2hdp$Speeches),]))
hdp_mhp_s4 <- as.numeric(nrow(long_2hdp[grepl(c("mhp sıralarından evet" ), long_2hdp$Speeches),]))

#Hostility to hdp

hdp_hdp_h1 <- as.numeric(nrow(long_2hdp[grepl(c("hdp sıralarından otur yerine sesleri"), long_2hdp$Speeches),]))
hdp_hdp_h2 <- as.numeric(nrow(long_2hdp[grepl(c("hdp sıralarından gürültüler"), long_2hdp$Speeches),]))
hdp_hdp_h3 <- as.numeric(nrow(long_2hdp[grepl(c("hdp sıralarından yuh"), long_2hdp$Speeches),]))
hdp_hdp_h4 <- as.numeric(nrow(long_2hdp[grepl(c("hdp sıralarından ne alakası var sesleri"), long_2hdp$Speeches),]))
hdp_hdp_h5 <- as.numeric(nrow(long_2hdp[grepl(c("hdp sıra kapaklarına vurmalar"), long_2hdp$Speeches),]))
hdp_hdp_h6 <- as.numeric(nrow(long_2hdp[grepl(c("hdp sıralarından kürsü önünde toplanmalar" ), long_2hdp$Speeches),]))

hdp_chp_h1 <- as.numeric(nrow(long_2hdp[grepl(c("chp sıralarından otur yerine sesleri"), long_2hdp$Speeches),]))
hdp_chp_h2 <- as.numeric(nrow(long_2hdp[grepl(c("chp sıralarından gürültüler"), long_2hdp$Speeches),]))
hdp_chp_h3 <- as.numeric(nrow(long_2hdp[grepl(c("chp sıralarından yuh"), long_2hdp$Speeches),]))
hdp_chp_h4 <- as.numeric(nrow(long_2hdp[grepl(c("chp sıralarından ne alakası var sesleri"), long_2hdp$Speeches),]))
hdp_chp_h5 <- as.numeric(nrow(long_2hdp[grepl(c("chp sıralarından sıra kapaklarına vurmalar"), long_2hdp$Speeches),]))
hdp_chp_h6 <- as.numeric(nrow(long_2hdp[grepl(c("chp ve hdp sıralarından karşılıklı laf atmalar"), long_2hdp$Speeches),]))
hdp_chp_h7 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve chp sıralarından karşılıklı laf atmalar"), long_2hdp$Speeches),]))
hdp_chp_h8 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve chp sıralarından karşılıklı sataşmalar"), long_2hdp$Speeches),]))
hdp_chp_h9 <- as.numeric(nrow(long_2hdp[grepl(c("chp ve hdp sıralarından karşılıklı sataşmalar"), long_2hdp$Speeches),]))
hdp_chp_h10 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve chp sıralarından birbirleri üzerine yürümeler" ), long_2hdp$Speeches),]))
hdp_chp_h11 <- as.numeric(nrow(long_2hdp[grepl(c("chp ve hdp sıralarından birbirleri üzerine yürümeler" ), long_2hdp$Speeches),]))
hdp_chp_h12 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve chp sıralarından karşılıklı konuşmalar" ), long_2hdp$Speeches),]))
hdp_chp_h13 <- as.numeric(nrow(long_2hdp[grepl(c("chp ve hdp sıralarından karşılıklı konuşmalar" ), long_2hdp$Speeches),]))
hdp_chp_h14 <- as.numeric(nrow(long_2hdp[grepl(c("chp sıralarından kürsü önünde toplanmalar" ), long_2hdp$Speeches),]))

hdp_akp_h1 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti sıralarından otur yerine sesleri"), long_2hdp$Speeches),]))
hdp_akp_h2 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti sıralarından gürültüler"), long_2hdp$Speeches),]))
hdp_akp_h3 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti sıralarından yuh"), long_2hdp$Speeches),]))
hdp_akp_h4 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti sıralarından ne alakası var sesleri"), long_2hdp$Speeches),]))
hdp_akp_h5 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti sıralarından sıra kapaklarına vurmalar"), long_2hdp$Speeches),]))
hdp_akp_h6 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve ak parti sıralarından karşılıklı laf atmalar"), long_2hdp$Speeches),]))
hdp_akp_h7 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti ve hdp sıralarından karşılıklı laf atmalar"), long_2hdp$Speeches),]))
hdp_akp_h8 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve ak parti sıralarından karşılıklı sataşmalar"), long_2hdp$Speeches),]))
hdp_akp_h9 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti ve hdp sıralarından karşılıklı sataşmalar"), long_2hdp$Speeches),]))
hdp_akp_h10 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve ak parti sıralarından birbirleri üzerine yürümeler" ), long_2hdp$Speeches),]))
hdp_akp_h11 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti ve hdp sıralarından birbirleri üzerine yürümeler" ), long_2hdp$Speeches),]))
hdp_akp_h12 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve ak parti sıralarından karşılıklı konuşmalar" ), long_2hdp$Speeches),]))
hdp_akp_h13 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti ve hdp sıralarından karşılıklı konuşmalar" ), long_2hdp$Speeches),]))
hdp_akp_h14 <- as.numeric(nrow(long_2hdp[grepl(c("ak parti sıralarından kürsü önünde toplanmalar" ), long_2hdp$Speeches),]))

hdp_mhp_h1 <- as.numeric(nrow(long_2hdp[grepl(c("mhp sıralarından otur yerine sesleri"), long_2hdp$Speeches),]))
hdp_mhp_h2 <- as.numeric(nrow(long_2hdp[grepl(c("mhp sıralarından gürültüler"), long_2hdp$Speeches),]))
hdp_mhp_h3 <- as.numeric(nrow(long_2hdp[grepl(c("mhp sıralarından yuh"), long_2hdp$Speeches),]))
hdp_mhp_h4 <- as.numeric(nrow(long_2hdp[grepl(c("mhp sıralarından ne alakası var sesleri"), long_2hdp$Speeches),]))
hdp_mhp_h5 <- as.numeric(nrow(long_2hdp[grepl(c("mhp sıralarından sıra kapaklarına vurmalar"), long_2hdp$Speeches),]))
hdp_mhp_h6 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve mhp sıralarından karşılıklı laf atmalar"), long_2hdp$Speeches),]))
hdp_mhp_h7 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve hdp sıralarından karşılıklı laf atmalar"), long_2hdp$Speeches),]))
hdp_mhp_h8 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve mhp sıralarından karşılıklı sataşmalar"), long_2hdp$Speeches),]))
hdp_mhp_h9 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve hdp sıralarından karşılıklı sataşmalar"), long_2hdp$Speeches),]))
hdp_mhp_h10 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve mhp sıralarından birbirleri üzerine yürümeler" ), long_2hdp$Speeches),]))
hdp_mhp_h11 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve hdp sıralarından birbirleri üzerine yürümeler" ), long_2hdp$Speeches),]))
hdp_mhp_h12 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve mhp sıralarından karşılıklı konuşmalar" ), long_2hdp$Speeches),]))
hdp_mhp_h13 <- as.numeric(nrow(long_2hdp[grepl(c("hdp ve hdp sıralarından karşılıklı konuşmalar" ), long_2hdp$Speeches),]))
hdp_mhp_h14 <- as.numeric(nrow(long_2hdp[grepl(c("mhp sıralarından kürsü önünde toplanmalar" ), long_2hdp$Speeches),]))

akp_akp_support <- akp_akp_s1 + akp_akp_s2 + akp_akp_s3 + akp_akp_s4 
akp_chp_support <- akp_chp_s1 + akp_chp_s2 + akp_chp_s3 + akp_chp_s4 + chp_akp_s1 + chp_akp_s2 + chp_akp_s3 + chp_akp_s4 
akp_mhp_support <- akp_mhp_s1 + akp_mhp_s2 + akp_mhp_s3 + akp_mhp_s4 + mhp_akp_s1 + mhp_akp_s2 + mhp_akp_s3 + mhp_akp_s4 
akp_hdp_support <- akp_hdp_s1 + akp_hdp_s2 + akp_hdp_s3 + akp_hdp_s4 + hdp_akp_s1 + hdp_akp_s2 + hdp_akp_s3 + hdp_akp_s4 
chp_mhp_support <- mhp_chp_s1 + mhp_chp_s2 + mhp_chp_s3 + mhp_chp_s4 + chp_mhp_s1 + chp_mhp_s2 + chp_mhp_s3 + chp_mhp_s4 
chp_hdp_support <- hdp_chp_s1 + hdp_chp_s2 + hdp_chp_s3 + hdp_chp_s4 + chp_hdp_s1 + chp_hdp_s2 + chp_hdp_s3 + chp_hdp_s4 
chp_chp_support <- chp_chp_s1 + chp_chp_s2 + chp_chp_s3 + chp_chp_s4 
hdp_hdp_support <- hdp_hdp_s1 + hdp_hdp_s2 + hdp_hdp_s3 + hdp_hdp_s4 
hdp_mhp_support <- hdp_mhp_s1 + hdp_mhp_s2 + hdp_mhp_s3 + hdp_mhp_s4 + mhp_hdp_s1 + mhp_hdp_s2 + mhp_hdp_s3 + mhp_hdp_s4 
mhp_mhp_support <- mhp_mhp_s1 + mhp_mhp_s2 + mhp_mhp_s3 + mhp_mhp_s4 

akp_akp_hostility <- akp_akp_h1 + akp_akp_h2 + akp_akp_h3 + akp_akp_h4 + akp_akp_h5 + akp_akp_h6 

akp_chp_hostility <- akp_chp_h1 + akp_chp_h2 + akp_chp_h3 + akp_chp_h4 + akp_chp_h5 + akp_chp_h6 + akp_chp_h7 + akp_chp_h8 + akp_chp_h9 + akp_chp_h10 + akp_chp_h11 + akp_chp_h12 + akp_chp_h13 + akp_chp_h14
+ chp_akp_h1 + chp_akp_h2 + chp_akp_h3 + chp_akp_h4 + chp_akp_h5 + chp_akp_h6+ chp_akp_h7 + chp_akp_h8+ chp_akp_h9 + chp_akp_h10+ chp_akp_h11 + chp_akp_h12+ chp_akp_h13 + chp_akp_h14

akp_mhp_hostility <- akp_mhp_h1 + akp_mhp_h2 + akp_mhp_h3 + akp_mhp_h4 + akp_mhp_h5 + akp_mhp_h6 + akp_mhp_h7 + akp_mhp_h8 + akp_mhp_h9 + akp_mhp_h10 + akp_mhp_h11 + akp_mhp_h12 + akp_mhp_h13 + akp_mhp_h14
+ mhp_akp_h1 + mhp_akp_h2 + mhp_akp_h3 + mhp_akp_h4 + mhp_akp_h5 + mhp_akp_h6+ mhp_akp_h7 + mhp_akp_h8+ mhp_akp_h9 + mhp_akp_h10+ mhp_akp_h11 + mhp_akp_h12+ mhp_akp_h13 + mhp_akp_h14

akp_hdp_hostility <- akp_hdp_h1 + akp_hdp_h2 + akp_hdp_h3 + akp_hdp_h4 + akp_hdp_h5 + akp_hdp_h6 + akp_hdp_h7 + akp_hdp_h8 + akp_hdp_h9 + akp_hdp_h10 + akp_hdp_h11 + akp_hdp_h12 + akp_hdp_h13 + akp_hdp_h14
+ hdp_akp_h1 + hdp_akp_h2 + hdp_akp_h3 + hdp_akp_h4 + hdp_akp_h5 + hdp_akp_h6+ hdp_akp_h7 + hdp_akp_h8+ hdp_akp_h9 + hdp_akp_h10+ hdp_akp_h11 + hdp_akp_h12+ hdp_akp_h13 + hdp_akp_h14

chp_mhp_hostility <- mhp_chp_h1 + mhp_chp_h2 + mhp_chp_h3 + mhp_chp_h4 + mhp_chp_h5 + mhp_chp_h6 + mhp_chp_h7 + mhp_chp_h8 + mhp_chp_h9 + mhp_chp_h10 + mhp_chp_h11 + mhp_chp_h12 + mhp_chp_h13 + mhp_chp_h14
+ chp_mhp_h1 + chp_mhp_h2 + chp_mhp_h3 + chp_mhp_h4 + chp_mhp_h5 + chp_mhp_h6+ chp_mhp_h7 + chp_mhp_h8+ chp_mhp_h9 + chp_mhp_h10+ chp_mhp_h11 + chp_mhp_h12+ chp_mhp_h13 + chp_mhp_h14

chp_hdp_hostility <- hdp_chp_h1 + hdp_chp_h2 + hdp_chp_h3 + hdp_chp_h4 + hdp_chp_h5 + hdp_chp_h6 + hdp_chp_h7 + hdp_chp_h8 + hdp_chp_h9 + hdp_chp_h10 + hdp_chp_h11 + hdp_chp_h12 + hdp_chp_h13 + hdp_chp_h14
+ chp_hdp_h1 + chp_hdp_h2 + chp_hdp_h3 + chp_hdp_h4 + chp_hdp_h5 + chp_hdp_h6+ chp_hdp_h7 + chp_hdp_h8+ chp_hdp_h9 + chp_hdp_h10+ chp_hdp_h11 + chp_hdp_h12+ chp_hdp_h13 + chp_hdp_h14

chp_chp_hostility <- chp_chp_h1 + chp_chp_h2 + chp_chp_h3 + chp_chp_h4 + chp_chp_h5 + chp_chp_h6

hdp_hdp_hostility <- hdp_hdp_h1 + hdp_hdp_h2 + hdp_hdp_h3 + hdp_hdp_h4 + chp_chp_h5 + chp_chp_h6 

hdp_mhp_hostility <- hdp_mhp_h1 + hdp_mhp_h2 + hdp_mhp_h3 + hdp_mhp_h4 + hdp_mhp_h5 + hdp_mhp_h6 + hdp_mhp_h7 + hdp_mhp_h8 + hdp_mhp_h9 + hdp_mhp_h10 + hdp_mhp_h11 + hdp_mhp_h12 + hdp_mhp_h13 + hdp_mhp_h14
+ mhp_hdp_h1 + mhp_hdp_h2 + mhp_hdp_h3 + mhp_hdp_h4 + mhp_hdp_h5 + mhp_hdp_h6+ mhp_hdp_h7 + mhp_hdp_h8+ mhp_hdp_h9 + mhp_hdp_h10+ mhp_hdp_h11 + mhp_hdp_h12+ mhp_hdp_h13 + mhp_hdp_h14

mhp_mhp_hostility <- mhp_mhp_h1 + mhp_mhp_h2 + mhp_mhp_h3 + mhp_mhp_h4 + mhp_mhp_h5 + mhp_mhp_h6 


df_support_hostility <- data.frame(row.names= c("AKP-AKP","AKP-CHP","AKP-MHP","AKP-HDP","CHP-MHP","CHP-HDP","CHP-CHP","HDP-HDP","HDP-MHP","MHP-MHP"),
                                   Support = c(akp_akp_support,akp_chp_support,akp_mhp_support,akp_hdp_support,chp_mhp_support,chp_hdp_support,chp_chp_support,hdp_hdp_support,hdp_mhp_support,mhp_mhp_support),
                                   Hostility = c(akp_akp_hostility,akp_chp_hostility,akp_mhp_hostility,akp_hdp_support,chp_mhp_hostility,chp_hdp_hostility,chp_chp_hostility,hdp_hdp_hostility,hdp_mhp_hostility,mhp_mhp_hostility))

pca.support.hostility <- PCA(df_support_hostility, scale.unit = TRUE, ncp = 2, graph = TRUE)
ind.p <- fviz_pca_biplot(pca.support.hostility, repel = TRUE)
ind.p

ggpubr::ggpar(ind.p,
              title = "Dyadic Representation of Hostility and Support Scores between 2015 June and 2016 October",
              subtitle = "Principal Component Analysis",
              xlab = "PC1(60.1%)", ylab = "PC2(39.9%)",
              ggtheme = theme_gray(), palette = "jco")





































