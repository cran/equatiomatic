## ---- include = FALSE---------------------------------------------------------
library(equatiomatic)
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- warning = FALSE, results = 'markup'-------------------------------------
lm(bill_length_mm ~ bill_depth_mm, penguins)

## ---- echo = FALSE------------------------------------------------------------
library(equatiomatic)
extract_eq(lm(bill_length_mm ~ bill_depth_mm, penguins))

## ----fit-m1-------------------------------------------------------------------
library(equatiomatic)

# fit a basic multiple linear regression model
m <- lm(bill_length_mm ~ bill_depth_mm + flipper_length_mm, penguins)

## ----extract_eq1--------------------------------------------------------------
extract_eq(m)

## ----extract_eq1-no-echo, echo = FALSE----------------------------------------
extract_eq(m)

## ----eq2----------------------------------------------------------------------
m2 <- lm(bill_length_mm ~ bill_depth_mm * island, penguins)
extract_eq(m2)

## ----eq2-wrap-----------------------------------------------------------------
extract_eq(m2, wrap = TRUE) # default terms_per_line = 4
extract_eq(m2, wrap = TRUE, terms_per_line = 2)

## ----eq2-intercept-beta-------------------------------------------------------
extract_eq(m2, wrap = TRUE, intercept = "beta")

## ----eq2-ital-vars------------------------------------------------------------
extract_eq(m2, wrap = TRUE, ital_vars = TRUE)

## ----raw-tex------------------------------------------------------------------
extract_eq(m2,
  wrap = TRUE,
  intercept = "\\hat{\\phi}",
  greek = "\\hat{\\gamma}",
  raw_tex = TRUE
)

## ----use_coefs----------------------------------------------------------------
extract_eq(m2, wrap = TRUE, use_coefs = TRUE)

## ----echo = FALSE-------------------------------------------------------------
supported <- data.frame(
  model = c(
    "linear regression",
    "logistic regression",
    "probit regression",
    "ordinal logistic regression",
    "ordinal probit regression",
    "auto-regressive integrated moving average",
    "regression with auto-regressive integrated moving average errors"
  ),
  packages = c(
    "`stats::lm`",
    "`stats::glm(family = binomial(link = 'logit'))`",
    "`stats::glm(family = binomial(link = 'probit'))`",
    "`MASS::polr(method = 'logistic')`; `ordinal::clm(link = 'logit')`",
    "`MASS::polr(method = 'probit')`; `ordinal::clm(link = 'probit')`",
    "`forecast::Arima`",
    "`forecast::Arima`"
  )
)

knitr::kable(supported, col.names = c("Model", "Packages/Functions"))

## ----log-reg1-----------------------------------------------------------------
lr <- glm(sex ~ species * bill_length_mm,
  data = penguins,
  family = binomial(link = "logit")
)

extract_eq(lr, wrap = TRUE)

## ----log-reg2-----------------------------------------------------------------
extract_eq(lr, wrap = TRUE, show_distribution = TRUE)

## ----prob-reg1----------------------------------------------------------------
pr <- glm(sex ~ species * bill_length_mm,
  data = penguins,
  family = binomial(link = "probit")
)

extract_eq(pr, wrap = TRUE)

## ----prob-reg2----------------------------------------------------------------
extract_eq(pr, wrap = TRUE, show_distribution = TRUE)

## ----install-ordinal, eval = FALSE--------------------------------------------
#  install.packages("ordinal")

## ----wine-data, echo = FALSE--------------------------------------------------
knitr::kable(head(ordinal::wine), align = "l")

## ----mass-ologit--------------------------------------------------------------
mass_ologit <- MASS::polr(rating ~ temp * contact,
  data = ordinal::wine
)

extract_eq(mass_ologit, wrap = TRUE, terms_per_line = 2)

## ----mass-oprobit-------------------------------------------------------------
mass_oprobit <- MASS::polr(rating ~ temp * contact,
  data = ordinal::wine,
  method = "probit"
)

extract_eq(mass_oprobit, wrap = TRUE, terms_per_line = 2)

## ----ordinal-ologit-----------------------------------------------------------
ordinal_ologit <- ordinal::clm(rating ~ temp * contact,
  data = ordinal::wine,
  link = "logit"
)

extract_eq(ordinal_ologit, wrap = TRUE, terms_per_line = 2)

## ----ordinal-oprobit----------------------------------------------------------
ordinal_probit <- ordinal::clm(rating ~ temp * contact,
  data = ordinal::wine,
  link = "probit"
)

extract_eq(ordinal_probit, wrap = TRUE, terms_per_line = 2)

