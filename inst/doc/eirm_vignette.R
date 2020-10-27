## ----setup, echo = TRUE, eval = TRUE, include=FALSE---------------------------
knitr::opts_chunk$set(echo = TRUE, eval = TRUE, message = FALSE, warning = FALSE)

## ---- echo=FALSE--------------------------------------------------------------
library("eirm")

## -----------------------------------------------------------------------------
data("VerbAgg")
head(VerbAgg)

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  mod1 <- eirm(formula = "r2 ~ -1 + item + (1|id)", data = VerbAgg)
#  print(mod1)

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  print(mod1, difficulty = TRUE)

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  theta <- ranef(mod1$model)$id
#  head(theta)

## ---- echo = TRUE, eval = TRUE------------------------------------------------
mod2a <- eirm(formula = "r2 ~ -1 + situ + btype + mode + (1|id)", data = VerbAgg)

print(mod2a)

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  plot(mod2a)

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  plot(mod2a, difficulty = TRUE, main = "Verbal Aggression Example", latdim = "Verbal Aggression")

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  mod2b <- eirm(formula = "r2 ~ -1 + situ + btype + (1|id)", data = VerbAgg)
#  
#  anova(mod2a$model, mod2b$model)

## ---- echo = TRUE, eval = TRUE------------------------------------------------
VerbAgg2 <- polyreformat(data=VerbAgg, id.var = "id", long.format = FALSE, 
                         var.name = "item", val.name = "resp")

head(VerbAgg2)

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  mod3 <- eirm(formula = "polyresponse ~ -1 + situ + btype + mode + (1|id)",
#               data = VerbAgg2)

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  mod4 <- eirm(formula = "polyresponse ~ -1 + btype + situ + mode +
#               polycategory + polycategory:btype + (1|id)", data = VerbAgg2)

