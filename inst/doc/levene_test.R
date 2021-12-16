## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(miceafter)
library(mice)
library(magrittr)
library(dplyr)

## -----------------------------------------------------------------------------

  imp_data <- mice(lbp_orig, m=5, seed=3025, printFlag = FALSE) 

  imp_list <- mids2milist(imp_data)
  
  ra <- with(data=imp_list,
   expr = levene_test(Pain ~ factor(Satisfaction)))

  res <- pool_levenetest(ra, method = "D1")
  res


## -----------------------------------------------------------------------------

  lbp_orig %>% 
    mice(m=5, seed=3025, printFlag = FALSE) %>%
      mids2milist() %>%
        with(expr = levene_test(Pain ~ factor(Satisfaction))) %>%
          pool_levenetest(method = "D1")


## -----------------------------------------------------------------------------

  lbpmilr %>%
    df2milist(impvar = "Impnr") %>%
      with(expr = levene_test(Pain ~ factor(Satisfaction))) %>%
        pool_levenetest(method = "D1")


