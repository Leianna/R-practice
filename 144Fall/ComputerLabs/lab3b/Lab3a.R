#Lei Chen
#Due:Oct 11
#Lab3b
cdc %>% 
  ggplot(aes(x=height))

cdc %>% 
  ggplot(aes(x=height))+
  geom_histogram()

cdc %>% 
  ggplot(aes(x=age))+
  geom_histogram()

cdc %>% 
  ggplot(aes(x=height, y = weight))+
  geom_point()

cdc %>% 
  ggplot(aes(y=weight))+
  geom_boxplot()

cdc %>% 
  ggplot(aes(x = gender, y=weight))+
  geom_boxplot()

cdc %>% 
  ggplot(aes(y=height))+
  geom_boxplot()

cdc %>% 
  ggplot(aes(x = gender, y=height))+
  geom_boxplot()

cdc %>% 
  ggplot(aes(x = height, y = weight, color=gender))+
  geom_point()

cdc %>% 
  ggplot(aes(x=height, fill=gender))+
  geom_histogram()

cdc %>% 
  ggplot(aes(x=height, fill=gender))+
  geom_histogram(position='dodge')

cdc %>% 
  ggplot(aes(x=wtdesire, fill=gender))+
  geom_histogram()

#1 Make a horizontally oriented box and whisker plot of age using genhlth as a grouping variable.
cdc %>% 
  ggplot(aes(x = age, y=genhlth))+
  geom_boxplot()

#2 Make a scatterplot of a different pair of numerical variables using genhlth a grouping variable for color.
cdc %>% 
  ggplot(aes(x = gender, y = genhlth))+
  geom_point()

#3 Consider the following code:
#base on the code, I can see it is histogram for height and age

cdc %>% 
  ggplot(aes(x=height, fill=age))+
  geom_histogram(position='dodge')

)

