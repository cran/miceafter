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

  library(mice)
  library(miceafter)
  
  imp <- mice(lbp_orig, m=5, maxit=5, printFlag = FALSE) 
 
  dat_imp <- mids2milist(imp)
  
  ra <- with(dat_imp, expr = glm(Chronic ~ factor(Carrying) + Gender + Smoking + 
                      Function + JobControl + JobDemands + SocialSupport, 
                      family = binomial))
  
  poolm <- pool_glm(ra, method="D1")
  poolm$pmodel
  poolm$pmultiparm
 

## -----------------------------------------------------------------------------

  library(mice)
  library(miceafter)
  
  imp <- mice(lbp_orig, m=5, maxit=5, printFlag = FALSE) 
 
  dat_imp <- mids2milist(imp)
  
  ra <- with(dat_imp, expr = glm(Pain ~ factor(Carrying) + Gender + Smoking + 
                      Function + JobControl + JobDemands + SocialSupport))
  
  poolm <- pool_glm(ra, method="D1")
  poolm$pmodel
  poolm$pmultiparm
 

## -----------------------------------------------------------------------------

  library(mice)
  library(miceafter)
  
  imp <- mice(lbp_orig, m=5, maxit=5, printFlag = FALSE) 
 
  dat_imp <- mids2milist(imp)
  
  ra <- with(dat_imp, expr = glm(Chronic ~ factor(Carrying) + Gender + Smoking + 
                      Function + JobControl + JobDemands + SocialSupport, 
                      family = binomial))
  
  poolm <- pool_glm(ra, method="D1", p.crit = 0.15, direction = "BW")
  poolm$pmodel
  poolm$pmultiparm
 

## -----------------------------------------------------------------------------

  library(mice)
  library(miceafter)
  
  imp <- mice(lbp_orig, m=5, maxit=5, printFlag = FALSE) 
 
  dat_imp <- mids2milist(imp)
  
  ra <- with(dat_imp, expr = glm(Pain ~ factor(Carrying) + Gender + Smoking + 
                      Function + JobControl + JobDemands + SocialSupport))
  
  poolm <- pool_glm(ra, method="D1", p.crit = 0.15, direction = "BW")
  poolm$pmodel
  poolm$pmultiparm
  

