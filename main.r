library(ggplot2)
dinamic <- read_excel("D:/dinamic.xlsx")
ggplot(data=dinamic, aes(x=Year, y=Count_of_people, group=Country, color=Country)) +
geom_line(aes(linetype=Country)) +
geom_point(size=1) +
theme(legend.title = element_blank(), legend.position="bottom", legend.spacing.x = unit(0.5, "lines")) +
ggtitle('Динамика населения в ряде стран за 2005-2011 года')+
xlab('Года') +
ylab('Население, млн ч.') 
ggplot(data=dinamic, mapping = aes(x=Year, y=Count_of_people, group=Country, color=Country)) +
geom_col(position = 'dodge') +
theme(legend.title = element_blank(), legend.position="bottom", legend.spacing.x = unit(0.5, "lines")) +
ggtitle('Динамика населения в ряде стран за 2005-2011 года')+
xlab('Года') +
ylab('Население, млн ч.')