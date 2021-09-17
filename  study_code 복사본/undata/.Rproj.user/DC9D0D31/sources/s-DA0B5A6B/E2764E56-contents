df_undata<-read.csv("UNdata.csv")
df_undata
View(df_undata)
install.packages("ggplot2")
library("ggplot2")
summary(df_undata)
ggplot(df_undata, aes(x=df_undata$Subgroup,y=df_undata$Value))+
  geom_boxplot()
ggplot(df_undata, aes(x=df_undata$Country.or.Area,y=df_undata$Value))+
  geom_point()
library(dplyr)
Af_value<- df_undata %>% filter(Country.or.Area=="Afghanistan")
class2005
View(Af_value)
ggplot(data=df_undata, aes(x=Value, y=Country.or.Area))+
  geom_point(aes(color=Year, shape=Subgroup))+
  theme(axis.text.y=element_text(size=1))+
  ggtitle("Ages")
plot(df_undata)
library(dplyr)
distinct(df_undata,df_undata$Country.or.Area)
random_grouped<-group_by(distinct(df_undata,df_undata$Country.or.Area))
random_grouped
View(random_grouped)
ggplot(data=random_grouped, aes(x=Value, y=Year))+
  geom_point(aes(color=df_undata$Country.or.Area, shape=Subgroup))+
  ggtitle("Ages")
sample_data<-sample_frac(df_undata, 0.5) %>% 
  plot()
ggplot(data=sample_n(df_undata,50), aes(x=Country.or.Area, y=Value))+
  geom_point(aes(color=Year, shape=Subgroup))+
  ggtitle("Ages")
