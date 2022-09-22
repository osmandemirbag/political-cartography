### POLITICAL CARTOGRAPHY: A QUANTITATIVE TEXT ANALYSIS APPROACH ###

#Figure1
##################--------------------------------------------------------
## Load Packages ## 
pacman::p_load(rvest,tidyverse,text2map, stringr, 
               textclean, text2vec,lyric2vec, 
               fasttextM, ggplot2, knitr, 
               tidyverse, genius, geniusr,
               scales, tidytext, chorrrds,
               lubridate, ggrepel,slider, 
               magrittr, tm, Matrix,
               testit, plyr, SnowballC,
               stm, quanteda, textstem, stringi,
               qdapDictionaries, udpipe,
               quanteda.textmodels, compareDF, 
               rtf, slam, corpustools,textnets,
               quanteda.textplots , quanteda.textstats,
               igraph , data.table, ggraph,
               tidygraph,FactoMineR,factoextra,
               ggpubr,gridExtra,tidyquant,
               corclass, reshape2,ltm,
               qgraph, RCA,spdep,readxl)

##library(remotes)
##install_gitlab("culturalcartography/text2map")
##------------------------------------------------------------------------
# Load Data

tbmm_corpus <- readRDS("/Users/osmandemirbag/Desktop/TBMM/TBMMCorpus.Rds")
my.wv <- readRDS("/Users/osmandemirbag/Desktop/TBMM/ft.cc.tr.300D.2M.Rds")

##########################################################################
## Cleaning
##########################################################################
# remove NAs
tbmm_corpus$Speeches <- gsub("NA", "", tbmm_corpus$Speeches) %>%
  gsub("\\s+"," ", .) %>% 
  trimws(., "left")

# punctuation, tolower
tbmm_corpus$Speeches <- gsub('[[:punct:] ]+',' ', tbmm_corpus$Speeches) %>% tolower()

##########################################################################
# CMD Analysis
##########################################################################
# Create DTM based on corpus
it <- itoken(tbmm_corpus$Speeches, tokenizer = word_tokenizer)
v <- create_vocabulary(it)
vectorizer <- vocab_vectorizer(v)
my.dtm <- create_dtm(it, vectorizer)

# Closeness of documents to the concept of "demokrasi"
doc.closeness <- CMDist(dtm = my.dtm, 
                        cw = "demokrasi", 
                        wv = my.wv, scale = T)
colnames(doc.closeness)[1] <- c("ID")
CMDdemokrasi          <- cbind(doc.closeness, tbmm_corpus, by = "ID")
colnames(CMDdemokrasi)[2] <- "cmd"
CMDdemokrasi$cmd <- as.double(CMDdemokrasi$cmd)
CMDdemokrasi          <- CMDdemokrasi[order(CMDdemokrasi$cmd, decreasing = TRUE),]
CMDdemokrasi$by       <- NULL

#saveRDS(CMDdemokrasi, "/Users/osmandemirbag/Desktop/TBMM/CMDdemokrasi.Rds")
##########################################################################
# Loading Short Data
##########################################################################

CMDdemokrasi <- readRDS("/Users/osmandemirbag/Desktop/TBMM/CMDdemokrasi.Rds")

##########################################################################
# 100 words from smaller dataset (CMD with ideal "demokrasi" scores)
##########################################################################

# Prepare data for socio-semantic network analysis (lemmatization,stopwords,cooc)
CMD_short <- CMDdemokrasi[CMDdemokrasi$cmd > 1, ]
CMD_short <- CMD_short[!duplicated(CMD_short[,-2]),]
df_short = subset(CMD_short, select = -c(1)) #drop first IDs

udmodel <- udpipe_download_model(language = "turkish")
udmodel <- udpipe_load_model(file = udmodel$file_model)

everyword_lemmatized <- udpipe::udpipe_annotate(udmodel,x = df_short$Speeches,tagger = "default", parser = "default",doc_id = df_short$ID)
everyword_lemmatized <- as.data.frame(everyword_lemmatized)
#saveRDS(everyword_lemmatized,"/Users/osmandemirbag/Desktop/TBMM/lemmatized_short.Rds")

lemmatized_short <- readRDS("/Users/osmandemirbag/Desktop/TBMM/lemmatized_short.Rds")
cooc <- cooccurrence(lemmatized_short, group = "doc_id", term = "lemma")
x <- as.matrix(cooc)
x <- quanteda::as.fcm(x)

my_stopwords <- readLines("/Users/osmandemirbag/Desktop/TBMM/stopwords_tr.txt",  encoding="UTF-8")
fcmat_stop <- fcm_select(x, pattern = my_stopwords, selection = "remove") # removing customized stopwords

# 2.3 create sub-matrix of 100x100 with "demokrasi"
words <- names(topfeatures(fcmat_stop["demokrasi",], n = 100)) 
words
fcm_sub <- fcm_select(fcmat_stop, pattern = words, selection = "keep") #creating sub-matrix
#saveRDS(fcm_sub, "/Users/osmandemirbag/Desktop/TBMM/fcm_sub.Rds")

fcm_matrix <- as.matrix(fcm_sub)
graph <- graph.adjacency(fcm_matrix,
                         weighted=TRUE,
                         mode="undirected",
                         diag=FALSE)

#2.4 community detection and plot 
louvain  <- cluster_louvain(graph,resolution=1)
louvain
coords = layout_with_fr(graph)
plot(louvain, graph, layout=coords,force=T)
#louvain <- readRDS("/Users/osmandemirbag/Desktop/TBMM/louvain.Rds")
weber <- as.data.frame(louvain[[1]])
marx <- as.data.frame(louvain[[2]])
citizenship <- as.data.frame(louvain[[3]])
durkheim <- as.data.frame(louvain[[4]])

weber$memberships <- "Leadership Democracy"
marx$memberships <-"Battle for Democracy"
citizenship$memberships <- "Citizenship and Human Rights"
durkheim$memberships <-"Social Solidarity in a Nation"

weber$words <- weber$`louvain[[1]]` 
weber = subset(weber, select = -c(1)) #drop first IDs

marx$words <- marx$`louvain[[2]]` 
marx = subset(marx, select = -c(1)) #drop first louvain to merge

citizenship$words <- citizenship$`louvain[[3]]` 
citizenship = subset(citizenship, select = -c(1)) #drop first IDs

durkheim$words <- durkheim$`louvain[[4]]` 
durkheim = subset(durkheim, select = -c(1)) #drop first IDs

a <- rbind(marx,weber)
b <- rbind(citizenship,durkheim)
df_words <- rbind(a,b)










