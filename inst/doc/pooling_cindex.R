## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(miceafter)
library(mice)
library(magrittr)
library(dplyr)
library(survival)

## -----------------------------------------------------------------------------

  lbp_orig %>%
      mice(m=5, seed=3025, printFlag = FALSE) %>%
        mids2milist() %>% 
          with(expr = cindex(glm(Chronic ~ Gender + Radiation, family=binomial))) %>% 
            pool_cindex()


## -----------------------------------------------------------------------------

  imp_data <- df2milist(lbpmilr, impvar = "Impnr") 

  ra <- with(data=imp_data,
   expr = cindex(glm(Chronic ~ Gender + Radiation, family=binomial)))

  res <- pool_cindex(ra)
  res


## -----------------------------------------------------------------------------

  library(survival)
  lbpmicox %>% 
    df2milist(impvar = "Impnr") %>%
      with(expr = cindex(coxph(Surv(Time, Status) ~ Radiation + Age))) %>%
        pool_cindex()


