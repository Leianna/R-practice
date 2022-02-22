#Lei Chen
#November 1, 2018
#Lab4b Exercise

#--------------------------------------
#Notes
#(tidyverse)(moderndive)
sample_means10 <- 
  ames %>% 
  rep_sample_n(size = 10, reps = 5000) %>% 
  group_by(replicate) %>% 
  summarize(meanLivArea = mean(LivArea))

sample_means50 <- 
  ames %>% 
  rep_sample_n(size = 50, reps = 5000) %>% 
  group_by(replicate) %>% 
  summarize(meanLivArea = mean(LivArea))

sample_means100 <- 
  ames %>% 
  rep_sample_n(size = 100, reps = 5000) %>% 
  group_by(replicate) %>% 
  summarize(meanLivArea = mean(LivArea))
#A---
sample_means10 %>% 
  ggplot(aes(x = meanLivArea))+
  geom_histogram()
#B---
sample_means50 %>% 
  ggplot(aes(x = meanLivArea))+
  geom_histogram()
#C---
sample_means100 %>% 
  ggplot(aes(x = meanLivArea))+
  geom_histogram()

#--------------------------------------
#standard deviations
#entire population
ames %>% 
  summarize(sd.LivArea = sd(LivArea))

#--------------------------------------
#standard deviations
#sample 10 population
sample_means10 %>% 
  summarize(sd.meanLivArea = sd(meanLivArea))

#--------------------------------------
#standard deviations
#sample 50 population
sample_means50 %>% 
  summarize(sd.meanLivArea = sd(meanLivArea))

#--------------------------------------
#standard deviations
#sample 100 population
sample_means100 %>% 
  summarize(sd.meanLivArea = sd(meanLivArea))
