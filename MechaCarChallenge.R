library(dplyr)

## File location for the data
coil_file <- "data/Suspension_Coil.csv"
mecha_file <- "data/MechaCar_mpg.csv"



## Deliverable 1: Linier Regression of Prototype Mecha Car MPG Data

# Load the Data
mpg_data <- read.csv(mecha_file)

# Create the model
model = lm(formula = mpg ~ vehicle_length + vehicle_weight + ground_clearance + spoiler_angle + AWD, mpg_data)
print(summary(model))


## Deliverable 2: Descriptive statistics of production level suspension coil PSI 

# Load the data
coil_data <- read.csv(coil_file)

# summarize the data
total_summary <- coil_data %>% summarize(Total_Lots=3, Min_PSI=min(PSI), Mean_PSI=mean(PSI), Median_PSI=median(PSI), Max_PSI=max(PSI), Production_Variance=sd(PSI)**2, St_Dev=sd(PSI), .groups = 'keep')

lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Min_PSI=min(PSI), Mean_PSI=mean(PSI), Median_PSI=median(PSI), Max_PSI=max(PSI), Production_Variance=sd(PSI)**2, St_Dev=sd(PSI), .groups = 'keep')

print(total_summary)
print(lot_summary)

## Deliverable 3: T-Test of suspension coil production lots

# All current production vs Population mean of 1500 PSI
total_production_test <- t.test(coil_data$PSI, mu=1500)

# Each lot production vs population mean of 1500 PSI
lot_1 <- subset(coil_data, Manufacturing_Lot == "Lot1")
ttest_lot1 <- t.test(lot_1$PSI, mu=1500)

lot_2 <- subset(coil_data, Manufacturing_Lot == "Lot2")
ttest_lot2 <- t.test(lot_2$PSI, mu=1500)

lot_3 <- subset(coil_data, Manufacturing_Lot == "Lot3")
ttest_lot3 <- t.test(lot_3$PSI, mu=1500)

# Create a Summary table of the test results
T.Value <- c(ttest_lot1$statistic, ttest_lot2$statistic, ttest_lot3$statistic, total_production_test$statistic)
P.Value <- c(ttest_lot1$p.value, ttest_lot2$p.value, ttest_lot3$p.value, total_production_test$p.value)
DF <- c(ttest_lot1$parameter, ttest_lot2$parameter, ttest_lot3$parameter, total_production_test$parameter)
Mean <- c(ttest_lot1$estimate, ttest_lot2$estimate, ttest_lot3$estimate, total_production_test$estimate)
Manufacturing_Lot <- c("Lot 1", "Lot 2", "Lot 3", "Total Production")

ttest_summaries = tibble(Manufacturing_Lot, T.Value, DF, P.Value, Mean)
  

