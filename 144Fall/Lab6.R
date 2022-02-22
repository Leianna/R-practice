#----------------------
#ClassNotes
samp1 <- sample_n(ames,60)

samp1 %>% 
  select(LivArea, SalePrice) %>% 
  summary()

samp1 %>% 
  ggplot(aes(x = LivArea))+
  geom_histogram()+
  labs(x = "Area", title="Ground living area\n (square feet)")


#----------------------
samp1 %>% 
  summarize(meanLivArea = mean(LivArea), sdLivArea = sd(LivArea))

n <- 60
tstar <- qt(0.90, df = n-1)
se <- samp1 %>% summarize(sd.LivArea = sd(LivArea)) / sqrt(n)
lower <- samp1 %>% summarize(avg.LivArea = mean(LivArea)) - tstar * se
upper <- samp1 %>% summarize(avg.LivArea = mean(LivArea)) + tstar * se
c(lower, upper)

#----------------------
#On your own
#Q1
samp2 <- sample_n(ames,60)

#Q2
samp2 %>% 
  summarize(meanSalePrice = mean(SalePrice), sdSalePrice = sd(SalePrice))

n <- 60
tstar <- qt(0.90, df = n-1)
se <- samp2 %>% summarize(sd.SalePrice = sd(SalePrice)) / sqrt(n)
lower <- samp2 %>% summarize(avg.SalePrice = mean(SalePrice)) - tstar * se
upper <- samp2 %>% summarize(avg.SalePrice = mean(SalePrice)) + tstar * se
c(lower, upper)

