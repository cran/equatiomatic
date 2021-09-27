## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

colorize_text <- function(x, color) {
  if (knitr::is_latex_output()) {
    sprintf("\\textcolor{%s}{%s}", color, x)
  } else if (knitr::is_html_output()) {
    sprintf("<span style='color: %s;'>%s</span>", color,
      x)
  } else x
}

## -----------------------------------------------------------------------------
library(equatiomatic)
slr <- lm(bill_length_mm ~ body_mass_g, data = penguins)

## -----------------------------------------------------------------------------
extract_eq(
  model = slr, 
  var_colors = c(
    bill_length_mm = "cornflowerblue",
    body_mass_g = "firebrick"
  )
)

## -----------------------------------------------------------------------------
extract_eq(
  model = slr, 
  var_colors = c(
    bill_length_mm = "cornflowerblue",
    body_mass_g = "firebrick"
  ),
  greek_colors = c(
    "#3bd100", rep("black", 2)
  )
)

## -----------------------------------------------------------------------------
greek_col <- c("#1b9e77", "#d95f02", "#7570b3")

extract_eq(
  model = slr, 
  var_colors = c(
    bill_length_mm = "cornflowerblue",
    body_mass_g = "firebrick"
  ),
  greek_colors = greek_col
)

## -----------------------------------------------------------------------------
m_interaction <- lm(bill_length_mm ~ body_mass_g * flipper_length_mm, 
                    data = penguins)

extract_eq(
  m_interaction,
  var_colors = c(
    body_mass_g = "#ffa91f",
    flipper_length_mm = "#00d1ab"
  ),
  greek_colors = c(
    "black", "#3A21B3", "#58A1D9", "#FF7582", "black"
  ),
  wrap = TRUE,
  terms_per_line = 3
)

## -----------------------------------------------------------------------------
extract_eq(
  m_interaction,
  var_colors = c(
    body_mass_g = "#ffa91f",
    flipper_length_mm = "#00d1ab"
  ),
  greek_colors = c(
    "black", "#3A21B3", "#58A1D9", "#FF7582", "black"
  ),
  subscript_colors = c(
     NA_character_, "#3A21B3", "#58A1D9", "#FF7582", NA_character_
  ),
  wrap = TRUE,
  terms_per_line = 3
)

## -----------------------------------------------------------------------------
m_categorical <- lm(bill_length_mm ~ species + island, data = penguins)

extract_eq(
  model = m_categorical,
  var_colors = c(
    species = "#FB2C4B",
    island = "#643B77"
  ),
  var_subscript_colors = c(
    species = "#0274B2",
    island = "#FBA640"
  )
)

## -----------------------------------------------------------------------------
extract_eq(
  model = m_interaction,
  swap_var_names = c(
    "bill_length_mm" = "Bill Length (MM)",
    "body_mass_g" = "Body Mass (grams)",
    "flipper_length_mm" = "Flipper Length (MM)"
  ),
  var_colors = c(
    flipper_length_mm = "firebrick",
    body_mass_g = "cornflowerblue"
  ),
  wrap = TRUE,
  terms_per_line = 3
)

## -----------------------------------------------------------------------------
extract_eq(
  model = m_categorical,
  swap_var_names = c(
    "bill_length_mm" = "Bill Length (MM)",
    "species" = "Species",
    "island" = "Island"
  ),
  swap_subscript_names = c(
    Chinstrap = "little buddy",
    Gentoo = "happy feet"
  ),
  var_colors = c(
    species = "#FB2C4B",
    island = "#643B77"
  ),
  var_subscript_colors = c(
    species = "#0274B2",
    island = "#FBA640"
  ),
  wrap = TRUE,
  terms_per_line = 3
)

## ----eval = FALSE-------------------------------------------------------------
#  create_eq(m_categorical) %>%
#    swap_var_names(
#      "bill_length_mm" = "Bill Length (MM)",
#      "species" = "Species",
#      "island" = "Island"
#    ) %>%
#    swap_subscript_names(
#      Chinstrap = "little buddy",
#      Gentoo = "happy feet"
#    ) %>%
#    colorize_variables(
#      species = "#FB2C4B",
#      island = "#643B77"
#    ) %>%
#    colorize_variable_subscripts(
#      species = "#0274B2",
#      island = "#FBA640"
#    ) %>%
#    wrap(terms_per_line = 3)

