#Lei Chen
#November 1, 2018
#Lab4b Own Your Own

#--------------------------------------
#On Your Own Q1

#Sample1
sample1_100 <- 
  ames %>% 
  rep_sample_n(size = 50, reps = 100) %>% 
  group_by(replicate) %>% 
  summarize(meanLivArea = mean(LivArea))
#Histogram of example 1
sample1_100 %>% 
  ggplot(aes(x = meanLivArea))+
  geom_histogram()
#summarize mean of example 1
sample1_100 %>% 
  summarize(avg.meanLivArea = mean(meanLivArea))
#standard deviations of example 1
sample1_100 %>% 
  summarize(sd.meanLivArea = sd(meanLivArea))

#Example2
sample2_5000 <- 
  ames %>% 
  rep_sample_n(size = 50, reps = 5000) %>% 
  group_by(replicate) %>% 
  summarize(meanLivArea = mean(LivArea))
#Histogram of example 2
sample2_5000 %>% 
  ggplot(aes(x = meanLivArea))+
  geom_histogram()
#summarize mean of example 2
sample2_5000 %>% 
  summarize(avg.meanLivArea = mean(meanLivArea))
#standard deviations of example 2
sample2_5000 %>% 
  summarize(sd.meanLivArea = sd(meanLivArea))

#Sample3
sample3_100000 <- 
  ames %>% 
  rep_sample_n(size = 50, reps = 100000) %>% 
  group_by(replicate) %>% 
  summarize(meanLivArea = mean(LivArea))
#Histogram of example 3
sample3_100000 %>% 
  ggplot(aes(x = meanLivArea))+
  geom_histogram()
#summarize mean of example 3
sample3_100000 %>% 
  summarize(avg.meanLivArea = mean(meanLivArea))
#standard deviations of example 3
sample3_100000 %>% 
  summarize(sd.meanLivArea = sd(meanLivArea))