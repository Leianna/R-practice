#Lab4a
#Lei Chen
#Oct 25,2018

#------------------------------------------
# find Min,Max,Q1,Q3,med fir living area and sale price
ames %>% 
  select(LivArea, SalePrice) %>% 
  summary()

#-----------------------------------------------
#create Living area histogram graph
ames %>% 
  ggplot(aes(x = LivArea))+ 
  geom_histogram()+
  labs(x = "Area", title="Ground living area\n (square feet)")

#-----------------------------------------------
#random choose 50sample,
#go to 'Envirement'->'Data'->select samp1 
samp1 <- sample_n(ames,50)

#-----------------------------------------------
#summary form samp1(living Area and sale price)
samp1 %>% 
  +     select(LivArea, SalePrice) %>% 
  +     summary()

#-----------------------------------------------
#create a sample 2
samp2 <- sample_n(ames,50)

#-----------------------------------------------
#summary form samp1(living Area)
samp2 %>% 
  +     select(LivArea, SalePrice) %>% 
  +     summary()

#-----------------------------------------------
#summary form samp1(living Area)
sample_means50 <- 
  ames %>% 
  rep_sample_n(size = 50, reps = 5000) %>% 
  group_by(replicate) %>% 
  summarize(meanLivArea = mean(LivArea))
#-----------------------------------------------
#Find the mean of living Area
#should download package(dplyr)(ggplot2)(moderndive)
sample_means50 <- 
  ames %>% 
  rep_sample_n(size = 50, reps = 5000) %>% 
  group_by(replicate) %>% 
  summarize(meanLivArea = mean(LivArea))
#-----------------------------------------------
#see plots
#Find the mean of living Area
sample_means50 %>% 
  ggplot(aes(x = meanLivArea))+
  geom_histogram()+
  labs(x = "Sample Mean", y = "Frequency", title = "Histogram of sample means of size 50")
#-----------------------------------------------
#control the number of bins by changing the bins argument.
sample_means50 %>% 
  ggplot(aes(x = meanLivArea))+
  geom_histogram(bins=10)+
  labs(x = "Sample Mean", y = "Frequency", title = "Histogram of sample means of size 50")
#-----------------------------------------------
#standard deviations.
ames %>% 
  summarize(sd.LiveArea = sd(LivArea), sd.SalePrice=sd(SalePrice))
#-----------------------------------------------
#On Your Own Q1
#create a sample
sample1 <- sample_n(ames,50)
sample1 %>% 
  summarize(meanSalePrice = mean(SalePrice))
#-----------------------------------------------
#(statsr)(shiny)(devtools)
#On Your Own Q2
#create a sample
sample_means50 <- 
  sample1 %>% 
  rep_sample_n(size = 50, reps = 5000,replace = TRUE) %>% 
  group_by(replicate) %>% 
  summarize(meanSalePrice = mean(SalePrice))

sample_means50 %>% 
  ggplot(aes(x=meanSalePrice))+geom_histogram(bins=10)+
  labs(x = "Sample Mean", y = "Frequency", title = "Histogram of sample means of size 50")

#-----------------------------------------------
#(statsr)(shiny)(devtools)
#On Your Own Q3
#create a sample
sample_means150 <- 
  sample1 %>% 
  rep_sample_n(size = 150, reps = 5000,replace = TRUE) %>% 
  group_by(replicate) %>% 
  summarize(meanSalePrice = mean(SalePrice))

sample_means150 %>% 
  ggplot(aes(x=meanSalePrice))+geom_histogram(bins=10)+
  labs(x = "Sample Mean", y = "Frequency", title = "Histogram of sample means of size 50")
