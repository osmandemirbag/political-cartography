##########################################################################
#Get centroids of 4 different meanings of democracy
##########################################################################

marx_sc <- get_centroid(marx$words, my.wv)
weber_sc <- get_centroid(weber$words, my.wv)
durkheim_sc <- get_centroid(durkheim$words, my.wv)
citizenship_sc <- get_centroid(citizenship$words, my.wv)
cd <- rbind(marx_sc,weber_sc,durkheim_sc,citizenship_sc)
##########################################################################
CMDdemokrasi <- readRDS("/Users/osmandemirbag/Desktop/TBMM/CMDdemokrasi.Rds")

CMD_short <- CMDdemokrasi[CMDdemokrasi$cmd > 1, ]
CMD_short <- CMD_short[!duplicated(CMD_short[,-2]),]
df_short = subset(CMD_short, select = -c(1)) #drop first IDs
it <- itoken(df_short$Speeches, tokenizer = word_tokenizer)
v <- create_vocabulary(it)
vectorizer <- vocab_vectorizer(v)
my.dtm <- create_dtm(it, vectorizer)

centroids.CMD <- CMDist(dtm=my.dtm, 
                        cv = cd,
                        wv = my.wv, 
                        scale = TRUE)

colnames(centroids.CMD) <- c("ID", "cmd.marx","cmd.weber",
                             "cmd.durkheim", 
                             "cmd.citizenship")
#saveRDS(centroids.CMD, "/Users/osmandemirbag/Desktop/TBMM/centroids.CMD.Rds")
centroids.CMD <- readRDS("/Users/osmandemirbag/Desktop/TBMM/centroids.CMD.Rds")
df.centroids          <- cbind(centroids.CMD, df_short, by = "ID")
colnames(df.centroids)[10] <- c("date")
df.centroids = subset(df.centroids, select = -c(1)) #drop first IDs
df.centroids <- df.centroids[order(df.centroids$date),]
df.centroids$date <- as.Date(df.centroids$date, "%Y-%m-%d")
df.centroids$month.yr <- ceiling_date(as.Date(df.centroids$date), "month")

monthly_summary <- function(df.centroids) summarise(df.centroids, date = format(max(date), "%Y-%m-%d"), 
                                                    marx = sum(cmd.marx),
                                                    weber = sum(cmd.weber),
                                                    durkheim = sum(cmd.durkheim),
                                                    citizenship = sum(cmd.citizenship))

all.corpus <- slide_period_dfr(df.centroids, df.centroids$date, "month", monthly_summary)
all.corpus$date <- as.Date(all.corpus$date,"%Y-%m-%d")

figure2a <- ggplot(data = all.corpus,)+ 
  geom_line(aes(x = date, y = marx, colour = "Battle for Democracy"))+
  geom_line(aes(x = date, y = weber, colour = "Leadership Democracy"))+
  geom_line(aes(x = date, y = durkheim, colour = "Social Solidarity in a Nation"))+
  geom_line(aes(x = date, y = citizenship, colour = "Citizenship and Human Rights"))+
  labs(x = "Time", y = "Mean Scores")+
  ggtitle("Monthly Means of 4 Different Meanings of Democracy in All Corpus")+
  scale_x_date(date_breaks = "3 month", date_labels = "%b - %Y", 
               limits = c(as.Date("2013-06-06"), as.Date("2016-10-06")))
short_chp <- df.centroids %>% filter(Speaker_party=="CHP")
short_akp <- df.centroids %>% filter(Speaker_party=="AKP AK Party")
short_mhp <- df.centroids %>% filter(Speaker_party=="MHP")
short_hdp <- df.centroids %>% filter(Speaker_party=="HDP")

chp.mean <-  slide_period_dfr(short_chp, short_chp$date, "month", monthly_summary)
chp.mean$date <- as.Date(chp.mean$date,"%Y-%m-%d")

figure2b <- ggplot(data = chp.mean,)+ 
  geom_line(aes(x = date, y = marx, colour = "Battle for Democracy"))+
  geom_line(aes(x = date, y = weber, colour = "Leadership Democracy"))+
  geom_line(aes(x = date, y = durkheim, colour = "Social Solidarity in a Nation"))+
  geom_line(aes(x = date, y = citizenship, colour = "Citizenship and Human Rights"))+
  labs(x = "Time", y = "Mean Scores")+
  ggtitle("Monthly Means of 4 Different Meanings of Democracy in CHP Subset")+
  scale_x_date(date_breaks = "3 month", date_labels = "%b - %Y", 
               limits = c(as.Date("2013-06-06"), as.Date("2016-10-06")))


akp.mean <-  slide_period_dfr(short_akp, short_akp$date, "month", monthly_summary)
akp.mean$date <- as.Date(akp.mean$date,"%Y-%m-%d")

figure2c <- ggplot(data = akp.mean,)+ 
  geom_line(aes(x = date, y = marx, colour = "Battle for Democracy"))+
  geom_line(aes(x = date, y = weber, colour = "Leadership Democracy"))+
  geom_line(aes(x = date, y = durkheim, colour = "Social Solidarity in a Nation"))+
  geom_line(aes(x = date, y = citizenship, colour = "Citizenship and Human Rights"))+
  labs(x = "Time", y = "Mean Scores")+
  ggtitle("Monthly Means of 4 Different Meanings of Democracy in AKP Subset")+
  scale_x_date(date_breaks = "3 month", date_labels = "%b - %Y", 
               limits = c(as.Date("2013-06-06"), as.Date("2016-10-06")))


mhp.mean <-  slide_period_dfr(short_mhp, short_mhp$date, "month", monthly_summary)
mhp.mean$date <- as.Date(mhp.mean$date,"%Y-%m-%d")

figure2d <- ggplot(data = mhp.mean,)+ 
  geom_line(aes(x = date, y = marx, colour = "Battle for Democracy"))+
  geom_line(aes(x = date, y = weber, colour = "Leadership Democracy"))+
  geom_line(aes(x = date, y = durkheim, colour = "Social Solidarity in a Nation"))+
  geom_line(aes(x = date, y = citizenship, colour = "Citizenship and Human Rights"))+
  labs(x = "Time", y = "Mean Scores")+
  ggtitle("Monthly Means of 4 Different Meanings of Democracy in MHP Subset")+
  scale_x_date(date_breaks = "3 month", date_labels = "%b - %Y", 
               limits = c(as.Date("2013-06-06"), as.Date("2016-10-06")))

hdp.mean <-  slide_period_dfr(short_hdp, short_hdp$date, "month", monthly_summary)
hdp.mean$date <- as.Date(hdp.mean$date,"%Y-%m-%d")

figure2e <- ggplot(data = hdp.mean,)+ 
  geom_line(aes(x = date, y = marx, colour = "Battle for Democracy"))+
  geom_line(aes(x = date, y = weber, colour = "Leadership Democracy"))+
  geom_line(aes(x = date, y = durkheim, colour = "Social Solidarity in a Nation"))+
  geom_line(aes(x = date, y = citizenship, colour = "Citizenship and Human Rights"))+
  labs(x = "Time", y = "Mean Scores")+
  ggtitle("Monthly Means of 4 Different Meanings of Democracy in HDP Subset")+
  scale_x_date(date_breaks = "3 month", date_labels = "%b - %Y", 
               limits = c(as.Date("2013-06-06"), as.Date("2016-10-06")))
figure2a
figure2b
figure2c
figure2d
figure2e
