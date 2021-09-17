#시각화에 쓰일 패키지 불러오기
install.packages('rworldmap')
library(rworldmap)
library(dplyr)
#데이터 전처리 - 국가별 성별에 따른 기대수명 평균차이 (Male-Female)
df_undata<-read.csv("UNdata.csv")
worldage<-df_undata %>%
  group_by(Country.or.Area, Subgroup) %>%
  summarise(mean_value=mean(Value))
View(worldage)
world<-worldage %>% 
  mutate(agefactor = mean_value-lag(mean_value)) %>% 
  filter(!is.na(agefactor))
View(world)
#만든 Data와 rworldmap 패키지 연결
worldtotal<-joinCountryData2Map(world,
                                joinCode = 'NAME',
                                nameJoinColumn = 'Country.or.Area',
                                verbose=TRUE)
#세계지도로 표현
mapCountryData(worldtotal, nameColumnToPlot = 'agefactor')
