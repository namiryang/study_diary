install.packages("rworldmap")
library(rworldmap)
world2005<-df_undata %>% filter(df_undata$Year=="2000-2005"&df_undata$Subgroup=="Male")
world2000<-df_undata %>% filter(df_undata$Year=="1995-2000"&df_undata$Subgroup=="Male")
world1995<-df_undata %>% filter(df_undata$Year=="1990-1995"&df_undata$Subgroup=="Male")
world1990<-df_undata %>% filter(df_undata$Year=="1985-1990"&df_undata$Subgroup=="Male")
worldmap2005<-joinCountryData2Map(world2005,
                    joinCode = 'NAME',
                    nameJoinColumn = 'Country.or.Area',
                    verbose=TRUE,
                    )
worldmap2000<-joinCountryData2Map(world2000,
                              joinCode = 'NAME',
                              nameJoinColumn = 'Country.or.Area',
                              verbose=TRUE,
                              )
worldmap1995<-joinCountryData2Map(world1995,
                              joinCode = 'NAME',
                              nameJoinColumn = 'Country.or.Area',
                              verbose=TRUE)
worldmap1990<-joinCountryData2Map(world1990,
                              joinCode = 'NAME',
                              nameJoinColumn = 'Country.or.Area',
                              verbose=TRUE,)

worldmap     
View(worldmap)
mapCountryData(worldmap2005, nameColumnToPlot = 'Value',)
mapCountryData(worldmap2000, nameColumnToPlot = 'Value')
mapCountryData(worldmap1995, nameColumnToPlot = 'Value')
mapCountryData(worldmap1990, nameColumnToPlot = 'Value')
  mapBubbles(worldmap,
           nameZsize="Value",
           nameZColour = 'Subgroup',
           colourPate='heat',
           oceanCol = 'lightblue',
           landCol = 'wheat')
