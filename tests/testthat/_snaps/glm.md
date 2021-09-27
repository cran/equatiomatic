# colorizing works

    $$
    \begin{aligned}
    \log\left[ \frac { P( {\color{#0073ff}{\operatorname{SEX}}} = {\color{#0073ff}{\operatorname{male}}} ) }{ 1 - P( {\color{#0073ff}{\operatorname{SEX}}} = {\color{#0073ff}{\operatorname{male}}} ) } \right] &= {\color{#1B9E77}{\alpha}} + {\color{#D95F02}{\beta}}_{{\color{blue}{1}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Chinstrap}}}}) + {\color{#7570B3}{\beta}}_{{\color{blue}{2}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Gentoo}}}}) + {\color{#E7298A}{\beta}}_{{\color{blue}{3}}}(\operatorname{bill\_length\_mm})\ + \\
    &\quad {\color{#66A61E}{\beta}}_{{\color{blue}{4}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Chinstrap}}}} \times \operatorname{bill\_length\_mm}) + {\color{#E6AB02}{\beta}}_{{\color{blue}{5}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Gentoo}}}} \times \operatorname{bill\_length\_mm})
    \end{aligned}
    $$

---

    $$
    \begin{aligned}
    {\color{#0073ff}{\operatorname{SEX}}} &\sim Bernoulli\left(\operatorname{prob}_{{\color{#0073ff}{\operatorname{SEX}}} = {\color{#0073ff}{\operatorname{male}}}}= \hat{P}\right) \\
     \log\left[ \frac { \hat{P} }{ 1 - \hat{P} } \right] 
     &= {\color{#1B9E77}{\alpha}} + {\color{#D95F02}{\beta}}_{{\color{blue}{1}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Chinstrap}}}}) + {\color{#7570B3}{\beta}}_{{\color{blue}{2}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Gentoo}}}}) + {\color{#E7298A}{\beta}}_{{\color{blue}{3}}}(\operatorname{bill\_length\_mm})\ + \\
    &\quad {\color{#66A61E}{\beta}}_{{\color{blue}{4}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Chinstrap}}}} \times \operatorname{bill\_length\_mm}) + {\color{#E6AB02}{\beta}}_{{\color{blue}{5}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Gentoo}}}} \times \operatorname{bill\_length\_mm})
    \end{aligned}
    $$

---

    $$
    \begin{aligned}
    P( {\color{#0073ff}{\operatorname{SEX}}} = {\color{#0073ff}{\operatorname{male}}} ) &= \Phi[{\color{#1B9E77}{\alpha}} + {\color{#D95F02}{\beta}}_{{\color{blue}{1}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Chinstrap}}}}) + {\color{#7570B3}{\beta}}_{{\color{blue}{2}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Gentoo}}}}) + {\color{#E7298A}{\beta}}_{{\color{blue}{3}}}(\operatorname{bill\_length\_mm})\ + \\
    &\qquad\ {\color{#66A61E}{\beta}}_{{\color{blue}{4}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Chinstrap}}}} \times \operatorname{bill\_length\_mm}) + {\color{#E6AB02}{\beta}}_{{\color{blue}{5}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Gentoo}}}} \times \operatorname{bill\_length\_mm})]
    \end{aligned}
    $$

---

    $$
    \begin{aligned}
    {\color{#0073ff}{\operatorname{SEX}}} &\sim Bernoulli\left(\operatorname{prob}_{{\color{#0073ff}{\operatorname{SEX}}} = {\color{#0073ff}{\operatorname{male}}}}= \hat{P}\right) \\
     \hat{P} 
     &= \Phi[{\color{#1B9E77}{\alpha}} + {\color{#D95F02}{\beta}}_{{\color{blue}{1}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Chinstrap}}}}) + {\color{#7570B3}{\beta}}_{{\color{blue}{2}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Gentoo}}}}) + {\color{#E7298A}{\beta}}_{{\color{blue}{3}}}(\operatorname{bill\_length\_mm})\ + \\
    &\qquad\ {\color{#66A61E}{\beta}}_{{\color{blue}{4}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Chinstrap}}}} \times \operatorname{bill\_length\_mm}) + {\color{#E6AB02}{\beta}}_{{\color{blue}{5}}}({\color{green}{\operatorname{species}}}{\color{orange}{_{\operatorname{Gentoo}}}} \times \operatorname{bill\_length\_mm})]
    \end{aligned}
    $$

# Renaming Variables works

    $$
    \begin{aligned}
    \log\left[ \frac { P( \operatorname{outcome} = \operatorname{1} ) }{ 1 - P( \operatorname{outcome} = \operatorname{1} ) } \right] &= \alpha + \beta_{1}(\operatorname{cat}_{\operatorname{b}})\ + \\
    &\quad \beta_{2}(\operatorname{cat}_{\operatorname{c}}) + \beta_{3}(\operatorname{cat}_{\operatorname{dddd}})\ + \\
    &\quad \beta_{4}(\operatorname{cat}_{\operatorname{e}}) + \beta_{5}(\operatorname{Continuous\ Variable\ [1]})\ + \\
    &\quad \beta_{6}(\operatorname{continuous\_2}) + \beta_{7}(\operatorname{cat}_{\operatorname{b}} \times \operatorname{Continuous\ Variable\ [1]})\ + \\
    &\quad \beta_{8}(\operatorname{cat}_{\operatorname{c}} \times \operatorname{Continuous\ Variable\ [1]}) + \beta_{9}(\operatorname{cat}_{\operatorname{dddd}} \times \operatorname{Continuous\ Variable\ [1]})\ + \\
    &\quad \beta_{10}(\operatorname{cat}_{\operatorname{e}} \times \operatorname{Continuous\ Variable\ [1]}) + \beta_{11}(\operatorname{cat}_{\operatorname{b}} \times \operatorname{continuous\_2})\ + \\
    &\quad \beta_{12}(\operatorname{cat}_{\operatorname{c}} \times \operatorname{continuous\_2}) + \beta_{13}(\operatorname{cat}_{\operatorname{dddd}} \times \operatorname{continuous\_2})\ + \\
    &\quad \beta_{14}(\operatorname{cat}_{\operatorname{e}} \times \operatorname{continuous\_2}) + \beta_{15}(\operatorname{Continuous\ Variable\ [1]} \times \operatorname{continuous\_2})\ + \\
    &\quad \beta_{16}(\operatorname{cat}_{\operatorname{b}} \times \operatorname{Continuous\ Variable\ [1]} \times \operatorname{continuous\_2}) + \beta_{17}(\operatorname{cat}_{\operatorname{c}} \times \operatorname{Continuous\ Variable\ [1]} \times \operatorname{continuous\_2})\ + \\
    &\quad \beta_{18}(\operatorname{cat}_{\operatorname{dddd}} \times \operatorname{Continuous\ Variable\ [1]} \times \operatorname{continuous\_2}) + \beta_{19}(\operatorname{cat}_{\operatorname{e}} \times \operatorname{Continuous\ Variable\ [1]} \times \operatorname{continuous\_2})
    \end{aligned}
    $$

# Math extraction works

    $$
    \log\left[ \frac { P( \operatorname{outcome} = \operatorname{1} ) }{ 1 - P( \operatorname{outcome} = \operatorname{1} ) } \right] = \alpha + \beta_{1}(\operatorname{\log(continuous\_1)}) + \beta_{2}(\operatorname{\exp(continuous\_2)}) + \beta_{3}(\operatorname{continuous\_2}) + \beta_{4}(\operatorname{continuous\_2^2}) + \beta_{5}(\operatorname{continuous\_2^3})
    $$

---

    $$
    P( \operatorname{outcome} = \operatorname{1} ) = \Phi[\alpha + \beta_{1}(\operatorname{\log(continuous\_1)}) + \beta_{2}(\operatorname{\exp(continuous\_2)}) + \beta_{3}(\operatorname{continuous\_2}) + \beta_{4}(\operatorname{continuous\_2^2}) + \beta_{5}(\operatorname{continuous\_2^3})]
    $$

# Collapsing glm factors works

    Code
      extract_eq(model_logit)
    Output
      $$
      \log\left[ \frac { P( \operatorname{outcome} = \operatorname{1} ) }{ 1 - P( \operatorname{outcome} = \operatorname{1} ) } \right] = \alpha + \beta_{1}(\operatorname{categorical}_{\operatorname{b}}) + \beta_{2}(\operatorname{categorical}_{\operatorname{c}}) + \beta_{3}(\operatorname{categorical}_{\operatorname{d}}) + \beta_{4}(\operatorname{categorical}_{\operatorname{e}}) + \beta_{5}(\operatorname{continuous\_1}) + \beta_{6}(\operatorname{continuous\_2}) + \beta_{7}(\operatorname{categorical}_{\operatorname{b}} \times \operatorname{continuous\_1}) + \beta_{8}(\operatorname{categorical}_{\operatorname{c}} \times \operatorname{continuous\_1}) + \beta_{9}(\operatorname{categorical}_{\operatorname{d}} \times \operatorname{continuous\_1}) + \beta_{10}(\operatorname{categorical}_{\operatorname{e}} \times \operatorname{continuous\_1}) + \beta_{11}(\operatorname{categorical}_{\operatorname{b}} \times \operatorname{continuous\_2}) + \beta_{12}(\operatorname{categorical}_{\operatorname{c}} \times \operatorname{continuous\_2}) + \beta_{13}(\operatorname{categorical}_{\operatorname{d}} \times \operatorname{continuous\_2}) + \beta_{14}(\operatorname{categorical}_{\operatorname{e}} \times \operatorname{continuous\_2}) + \beta_{15}(\operatorname{continuous\_1} \times \operatorname{continuous\_2}) + \beta_{16}(\operatorname{categorical}_{\operatorname{b}} \times \operatorname{continuous\_1} \times \operatorname{continuous\_2}) + \beta_{17}(\operatorname{categorical}_{\operatorname{c}} \times \operatorname{continuous\_1} \times \operatorname{continuous\_2}) + \beta_{18}(\operatorname{categorical}_{\operatorname{d}} \times \operatorname{continuous\_1} \times \operatorname{continuous\_2}) + \beta_{19}(\operatorname{categorical}_{\operatorname{e}} \times \operatorname{continuous\_1} \times \operatorname{continuous\_2})
      $$

---

    Code
      extract_eq(model_probit)
    Output
      $$
      P( \operatorname{outcome} = \operatorname{1} ) = \Phi[\alpha + \beta_{1}(\operatorname{categorical}_{\operatorname{b}}) + \beta_{2}(\operatorname{categorical}_{\operatorname{c}}) + \beta_{3}(\operatorname{categorical}_{\operatorname{d}}) + \beta_{4}(\operatorname{categorical}_{\operatorname{e}}) + \beta_{5}(\operatorname{continuous\_1}) + \beta_{6}(\operatorname{continuous\_2}) + \beta_{7}(\operatorname{categorical}_{\operatorname{b}} \times \operatorname{continuous\_1}) + \beta_{8}(\operatorname{categorical}_{\operatorname{c}} \times \operatorname{continuous\_1}) + \beta_{9}(\operatorname{categorical}_{\operatorname{d}} \times \operatorname{continuous\_1}) + \beta_{10}(\operatorname{categorical}_{\operatorname{e}} \times \operatorname{continuous\_1}) + \beta_{11}(\operatorname{categorical}_{\operatorname{b}} \times \operatorname{continuous\_2}) + \beta_{12}(\operatorname{categorical}_{\operatorname{c}} \times \operatorname{continuous\_2}) + \beta_{13}(\operatorname{categorical}_{\operatorname{d}} \times \operatorname{continuous\_2}) + \beta_{14}(\operatorname{categorical}_{\operatorname{e}} \times \operatorname{continuous\_2}) + \beta_{15}(\operatorname{continuous\_1} \times \operatorname{continuous\_2}) + \beta_{16}(\operatorname{categorical}_{\operatorname{b}} \times \operatorname{continuous\_1} \times \operatorname{continuous\_2}) + \beta_{17}(\operatorname{categorical}_{\operatorname{c}} \times \operatorname{continuous\_1} \times \operatorname{continuous\_2}) + \beta_{18}(\operatorname{categorical}_{\operatorname{d}} \times \operatorname{continuous\_1} \times \operatorname{continuous\_2}) + \beta_{19}(\operatorname{categorical}_{\operatorname{e}} \times \operatorname{continuous\_1} \times \operatorname{continuous\_2})]
      $$

---

    Code
      extract_eq(model_logit, index_factors = TRUE)
    Output
      $$
      \log\left[ \frac { P( \operatorname{outcome} = \operatorname{1} ) }{ 1 - P( \operatorname{outcome} = \operatorname{1} ) } \right] = \alpha + \operatorname{categorical}_{\operatorname{i}} + \operatorname{continuous\_1} + \operatorname{continuous\_2} + \left(\operatorname{categorical}_{\operatorname{i}} \times \operatorname{continuous\_1}\right) + \left(\operatorname{categorical}_{\operatorname{i}} \times \operatorname{continuous\_2}\right) + \left(\operatorname{continuous\_1} \times \operatorname{continuous\_2}\right) + \left(\operatorname{categorical}_{\operatorname{i}} \times \operatorname{continuous\_1} \times \operatorname{continuous\_2}\right)
      $$

---

    Code
      extract_eq(model_probit, index_factors = TRUE)
    Output
      $$
      P( \operatorname{outcome} = \operatorname{1} ) = \Phi[\alpha + \operatorname{categorical}_{\operatorname{i}} + \operatorname{continuous\_1} + \operatorname{continuous\_2} + \left(\operatorname{categorical}_{\operatorname{i}} \times \operatorname{continuous\_1}\right) + \left(\operatorname{categorical}_{\operatorname{i}} \times \operatorname{continuous\_2}\right) + \left(\operatorname{continuous\_1} \times \operatorname{continuous\_2}\right) + \left(\operatorname{categorical}_{\operatorname{i}} \times \operatorname{continuous\_1} \times \operatorname{continuous\_2}\right)]
      $$

# Logistic regression works

    $$
    \log\left[ \frac { P( \operatorname{outcome} = \operatorname{1} ) }{ 1 - P( \operatorname{outcome} = \operatorname{1} ) } \right] = \alpha + \beta_{1}(\operatorname{categorical}_{\operatorname{b}}) + \beta_{2}(\operatorname{categorical}_{\operatorname{c}}) + \beta_{3}(\operatorname{continuous\_1}) + \beta_{4}(\operatorname{continuous\_2})
    $$

# Probit regression works

    $$
    P( \operatorname{outcome} = \operatorname{1} ) = \Phi[\alpha + \beta_{1}(\operatorname{categorical}_{\operatorname{b}}) + \beta_{2}(\operatorname{categorical}_{\operatorname{c}}) + \beta_{3}(\operatorname{continuous\_1}) + \beta_{4}(\operatorname{continuous\_2})]
    $$

---

    $$
    E( \operatorname{mpg} ) = \alpha + \beta_{1}(\operatorname{cyl}) + \beta_{2}(\operatorname{disp})
    $$

# Distribution-based equations work

    $$
    \begin{aligned}
    \operatorname{outcome} &\sim Bernoulli\left(\operatorname{prob}_{\operatorname{outcome} = \operatorname{1}}= \hat{P}\right) \\
     \log\left[ \frac { \hat{P} }{ 1 - \hat{P} } \right] 
     &= \alpha + \beta_{1}(\operatorname{categorical}_{\operatorname{b}}) + \beta_{2}(\operatorname{categorical}_{\operatorname{c}}) + \beta_{3}(\operatorname{continuous\_1}) + \beta_{4}(\operatorname{continuous\_2})
    \end{aligned}
    $$

---

    $$
    \begin{aligned}
    \operatorname{outcome} &\sim Bernoulli\left(\operatorname{prob}_{\operatorname{outcome} = \operatorname{1}}= \hat{P}\right) \\
     \hat{P} 
     &= \Phi[\alpha + \beta_{1}(\operatorname{categorical}_{\operatorname{b}}) + \beta_{2}(\operatorname{categorical}_{\operatorname{c}}) + \beta_{3}(\operatorname{continuous\_1}) + \beta_{4}(\operatorname{continuous\_2})]
    \end{aligned}
    $$

---

    $$
    \begin{aligned}
    E( \operatorname{mpg} ) &= \alpha + \beta_{1}(\operatorname{cyl}) + \beta_{2}(\operatorname{disp})
    \end{aligned}
    $$

# non-binomial regression works

    $$
    \log ({ E( \operatorname{outcome} ) })  = \alpha + \beta_{1}(\operatorname{categorical}_{\operatorname{b}}) + \beta_{2}(\operatorname{categorical}_{\operatorname{c}}) + \beta_{3}(\operatorname{continuous\_1}) + \beta_{4}(\operatorname{continuous\_2})
    $$

---

    $$
    \log ({ E( \operatorname{outcome} ) })  = \alpha + \beta_{1}(\operatorname{categorical}_{\operatorname{b}}) + \beta_{2}(\operatorname{categorical}_{\operatorname{c}}) + \beta_{3}(\operatorname{continuous\_1}) + \beta_{4}(\operatorname{continuous\_2})
    $$

---

    $$
    \log ({ E( \operatorname{outcome} ) })  = \alpha + \beta_{1}(\operatorname{categorical}_{\operatorname{b}}) + \beta_{2}(\operatorname{categorical}_{\operatorname{c}}) + \beta_{3}(\operatorname{continuous\_1}) + \beta_{4}(\operatorname{continuous\_2}) + \operatorname{offset(rep(1, 300))}
    $$

