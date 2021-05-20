###############################################################
## ÜBERSCHRIFT 1
###############################################################

## import

mydata <- iris %>%
            mutate(mean_width = rowMeans(data.frame(Sepal.Width, Petal.Width))) %>%
            group_by(Species) %>%
            summarize(mean_width_summ = mean(mean_width),
                      sd_width = sd(mean_width))


mydata_joined <- left_join(iris, mydata, by="Species")


## Aufgabe 1: 
# 1. hwy & cty mitteln
# 2. je manufacturer einen Mittelwert berechnen

## Aufgabe 2:
# verbinde den neuen Datensatz mit dem "alten Datensatz" anhand von left_join()
# und speichere das Ergebnis in einem neuen Objekt

######################


ggplot(data = iris, mapping = aes(x=Petal.Length, fill = Species)) +
  geom_density(alpha = .5) +
  theme_light()
