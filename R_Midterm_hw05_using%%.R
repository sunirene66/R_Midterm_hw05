# HW05: Using %>% to simply the Program
# this_year <- as.numeric(format(Sys.Date(), '%Y'))
# birth_year <- this_year - straw_hat_df$age
# birth_date_chr <- paste(birth_year, straw_hat_df$birthday, sep = "-")
# straw_hat_df$birth_date <- as.Date(birth_date_chr)

library(magrittr)
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))

straw_hat_df$birth_date <- Sys.Date() %>%
  format(. , '%Y') %>%
  as.numeric(.) %>% 
  `-` (straw_hat_df$age) %>%
  paste(. , straw_hat_df$birthday, sep = "-") %>%
  as.Date(.)

View(straw_hat_df)

