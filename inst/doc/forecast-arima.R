## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  message = FALSE,
  warning = FALSE,
  error = FALSE
)

## ----setup_arima--------------------------------------------------------------
library(equatiomatic)
library(forecast)

# Build Arima (no regression)
simple_ts_mod <- Arima(simple_ts,
  order = c(1, 1, 1),
  seasonal = c(1, 0, 1),
  include.constant = TRUE
)

## ----extract_arima------------------------------------------------------------
extract_eq(simple_ts_mod)

## ----setup_arima_errors-------------------------------------------------------
# Build Exogenous Regressors
xregs <- as.matrix(data.frame(
  x1 = ts_reg_list$x1 + 5,
  x2 = ts_reg_list$x2 * 5
))

# Build Regression Model
ts_reg_mod <- Arima(ts(ts_reg_list$ts_rnorm, freq = 4),
  order = c(1, 1, 1),
  seasonal = c(1, 0, 1),
  xreg = xregs,
  include.constant = TRUE
)

## ----extract_arima_errors-----------------------------------------------------
extract_eq(ts_reg_mod)

