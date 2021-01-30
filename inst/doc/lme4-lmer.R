## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(equatiomatic)
library(lme4)

## ----unconditional1-----------------------------------------------------------
um_hsb <- lmer(math ~ 1 + (1|sch.id), data = hsb)
extract_eq(um_hsb)

## ----unconditional2-----------------------------------------------------------
um_long3 <- lmer(score ~ 1 + (1|sid) + (1|school) + (1|district), 
                data = sim_longitudinal)
extract_eq(um_long3)

## ----l1-preds-----------------------------------------------------------------
lev1_hsb <- lmer(math ~ female + ses + minority + (1|sch.id), hsb)
extract_eq(lev1_hsb)

## ----mean_separate------------------------------------------------------------
extract_eq(lev1_hsb, mean_separate = FALSE)

## ----wrapping-----------------------------------------------------------------
extract_eq(lev1_hsb, wrap = TRUE, terms_per_line = 2)

## ----l1-preds2----------------------------------------------------------------
lev1_long <- lmer(score ~ wave + (1|sid) + (1|school) + (1|district),
                  data = sim_longitudinal)
extract_eq(lev1_long)

## ----unstructured-vcv1--------------------------------------------------------
hsb1 <- lmer(math ~ female + ses + minority + (minority|sch.id),
               hsb)
extract_eq(hsb1)

## ----unstructured-vcv2--------------------------------------------------------
hsb2 <- lmer(math ~ female + ses + minority + (female + ses|sch.id),
               hsb)
extract_eq(hsb2)

## ----unstructured-vcv3--------------------------------------------------------
hsb3 <- lmer(math ~ female * ses + minority + 
                 (ses * female + minority|sch.id),
             hsb)
extract_eq(hsb3)

## ----group-level-preds-prep---------------------------------------------------
# calculate district means
dist_mean <- tapply(sim_longitudinal$score,
                      sim_longitudinal$district,
                      mean)

# put them in a df to merge
dist_mean <- data.frame(district = names(dist_mean),
                        dist_mean = dist_mean)

# create a new df with dist_mean added
d <- merge(sim_longitudinal, dist_mean, by = "district")

## ----group-preds-model1-------------------------------------------------------
group_preds_m1 <- lmer(score ~ wave + group + treatment  + prop_low + dist_mean +
                         (wave|sid) + (wave|school) + (wave|district),
                       data = d)
extract_eq(group_preds_m1)

## ----l1-interaction-----------------------------------------------------------
l1_hsb_int <- lmer(math ~ minority*female + (1|sch.id),
                     data = hsb)
extract_eq(l1_hsb_int)

## ----l2-interaction-----------------------------------------------------------
l2_hsb_int <- lmer(math ~ meanses*sector + (1|sch.id),
                     data = hsb)
extract_eq(l2_hsb_int)

## ----cross-level1-------------------------------------------------------------
cl_long1 <- lmer(score ~ wave*treatment + (wave|sid) + (1|school) + 
                        (1|district),
                 data = sim_longitudinal)
extract_eq(cl_long1)

## ----cross-level2-------------------------------------------------------------
cl_long2 <- lmer(score ~ wave*treatment + (1|sid) + (1|school) + 
                        (1|district),
                 data = sim_longitudinal)
extract_eq(cl_long2)

## ----cross-level3-------------------------------------------------------------
cl_long3 <- lmer(score ~ wave*group*treatment + wave*prop_low*treatment +
                  (wave|sid) + (wave|school) +
                  (wave + treatment|district),
                sim_longitudinal)
extract_eq(cl_long3)

## ----vars-only----------------------------------------------------------------
hsb_varsonly <- lmer(math ~ minority*female + (minority*female || sch.id),
                       data = hsb)
extract_eq(hsb_varsonly)

## ----doublegroup--------------------------------------------------------------
hsb_doublegroup <- lmer(math ~ minority*female + 
                              (minority|sch.id) + (female|sch.id),
                         data = hsb)
extract_eq(hsb_doublegroup)

## ----mix----------------------------------------------------------------------
long_mixed_ranef <- lmer(score ~ wave +
         (wave||sid) + (wave|school) + (1|school) + (wave||district),
         sim_longitudinal)
extract_eq(long_mixed_ranef)

## -----------------------------------------------------------------------------
extract_eq(group_preds_m1, use_coef = TRUE)

