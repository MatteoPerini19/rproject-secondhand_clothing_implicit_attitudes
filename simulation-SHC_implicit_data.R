# simulation-SHC_implicit_data.R


library(readxl)

excel_file <- "template_dataset_SHC_implicit_study.xlsx"

iat <- read_excel(excel_file, sheet = "IAT", na = c("", "NA", "…")) %>%
  mutate(
    across(
      all_of(
        c(
          "pid",
          "smell_condition",
          "emotion_condition",
          "picture_type",
          "pic_id",
          "testing_block",
          "counterbalance_order_smell",
          "counterbalance_order_emotion"
        )
      ),
      as.factor
    ),
    RT = as.numeric(RT),
    pathogen_avoidance = as.numeric(pathogen_avoidance)
  )

aat <- read_excel(excel_file, sheet = "AAT", na = c("", "NA", "…")) %>%
  mutate(
    across(
      all_of(
        c(
          "pid",
          "smell_condition",
          "direction",
          "clothing_type",
          "pic_id",
          "testing_block",
          "counterbalance_order_smell",
          "counterbalance_order_clothing_type"
        )
      ),
      as.factor
    ),
    RT = as.numeric(RT),
    pathogen_avoidance = as.numeric(pathogen_avoidance)
  )


glimpse(iat)
glimpse(aat)







