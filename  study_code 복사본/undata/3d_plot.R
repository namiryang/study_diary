df_undata
summary(df_undata)
install.packages("scatterplot3d")
library(scatterplot3d)
x<-df_undata$Country.or.Area
y<-df_undata$Value
z<-df_undata$Year
colors <- c("#99999","#234533","#56B4E9")
colors <-colors[as.numeric(df_undata$Subgroup)]
agepointer<-scatterplot3d(x,y,z,
                          main="UN data",
                          xlim=200,
                          ylim=100,
                          zlim=6,
                          type="p",
                          angle= 50,
                          color= colors,
                          pch=16,
                          )

