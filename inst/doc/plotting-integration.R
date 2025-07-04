## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  message = FALSE,
  warning = FALSE,
  error = FALSE
)

## ----libraries----------------------------------------------------------------
library(ggplot2)
library(latex2exp)
library(equatiomatic)

## ----model_setup--------------------------------------------------------------
data("penguins", package = "equatiomatic")
# Fit an lm model
m <- lm(body_mass_g ~ bill_length_mm, penguins)

## ----equation_from_equatiomatic-----------------------------------------------
extract_eq(m, use_coefs = TRUE)

## -----------------------------------------------------------------------------
ggplot(penguins, aes(x = bill_length_mm, y = body_mass_g)) +
  geom_point() +
  geom_smooth(method = "lm")

## -----------------------------------------------------------------------------
# extract equation with `ital_vars = TRUE` to avoid the use of `\operatorname`
m_eq <- extract_eq(m, use_coef = TRUE, ital_vars = TRUE)

# swap escaped underscores for dashes
prep_eq <- gsub("\\\\_", "-", m_eq)

# swap display-style $$ with inline-style $
prep_eq <- paste("$", as.character(prep_eq), "$", sep = "")

## -----------------------------------------------------------------------------
ggplot(penguins, aes(x = bill_length_mm, y = body_mass_g)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(
    title = "Relation between bill length and body mass",
    subtitle = TeX(prep_eq)
  )

## -----------------------------------------------------------------------------
ggplot(penguins, aes(x = bill_length_mm, y = body_mass_g)) +
  geom_point() +
  geom_smooth(method = "lm", color = "#ab00fa") +
  annotate("text",
    label = as.character(TeX(prep_eq)), x = 35, y = 2500, hjust = 0,
    color = "#ab00fa", parse = TRUE
  ) +
  labs(title = "Relation between bill length and body mass") +
  ylim(2000, 6500)

## ----base_graphics------------------------------------------------------------
plot(penguins$bill_length_mm, penguins$body_mass_g,
  pch = 20,
  col = "gray80",
  xlab = "Bill length",
  ylab = "Body Mass",
  main = "Relation between bill length and body mass",
  sub = TeX(prep_eq)
)
lines(na.omit(penguins$bill_length_mm), predict(m),
  col = "#ab00fa"
)

## -----------------------------------------------------------------------------
plot(penguins$bill_length_mm, penguins$body_mass_g,
  pch = 20,
  col = "gray80",
  xlab = "Bill length",
  ylab = "Body Mass",
  main = "Relation between bill length and body mass"
)
lines(na.omit(penguins$bill_length_mm), predict(m),
  col = "#ab00fa"
)
text(x = 40, y = 6000, TeX(prep_eq))

