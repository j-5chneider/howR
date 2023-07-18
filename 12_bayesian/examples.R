library(tidyverse)
library(skimr)
library(BFpack)
library(BayesFactor)

neps_data <- rio::import(file = "data/NEPS_IB_data.csv")

View(neps_data)
glimpse(neps_data)
skim(neps_data)

### t-Test #############################
# lehrkraft: gruppenvariable für t-Test
# AV: innovation

t_fit <- t_test(as.numeric(innovation) ~ Lehrkraft,
                alternative = "greater",
                data=neps_data)
BF(t_fit)

neps_data_tmp <- neps_data %>%
  mutate(innovation = as.numeric(innovation)) %>%
  dplyr::filter(!is.na(innovation) & !is.na(Lehrkraft))

ttestBF(y=as.numeric(neps_data_tmp$innovation), 
        x=neps_data_tmp$Lehrkraft,
        paired = F)


### Regression #########################
# offenheit (), risk aversion (raw09), autonomy
# AV: innovation

neps_data$opennessW03 <- as.numeric(neps_data$opennessW03)


