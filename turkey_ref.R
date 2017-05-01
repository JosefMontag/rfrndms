library(tidyverse)
options(tibble.width = Inf)

d <- read_csv2('data/16_Nisan_Ssps_final.csv')

d.1 <- with(d, substr(secmen_sayisi, nchar(secmen_sayisi), nchar(secmen_sayisi)))
d.1 <- with(d, substr(hercelsiz_oy, nchar(secmen_sayisi), nchar(secmen_sayisi)))

hist(d$secmen_sayisi)
mean(d$secmen_sayisi)
sd(d$secmen_sayisi)

barplot(table(d.1))
