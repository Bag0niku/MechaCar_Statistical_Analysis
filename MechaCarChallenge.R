library(dplyr)

## File location for the data
coil_file <- "data/Suspension_Coil.csv"
mecha_file <- "data/MechaCar_mpg.csv"



## Deliverable 1: Linier Regression of Prototype Mecha Car MPG Data

# Load the Data
mpg_data <- read.csv(mecha_file)

# Create the model
model = lm(formula = mpg ~ vehicle_length + vehicle_weight + ground_clearance + spoiler_angle + AWD, mpg_data)

# Create the equation from the model for display purposes
equation = model$coefficients['vehicle_length']*mpg_data$vehicle_length + model$coefficients['vehicle_weight']*mpg_data$vehicle_weight + model$coefficients['spoiler_angle']*mpg_data$spoiler_angle + model$coefficients['ground_clearance']*mpg_data$ground_clearance + model$coefficients['AWD']*mpg_data$AWD + model$coefficients['(Intercept)']

# Display the model and data
plt <- ggplot(mpg_data, aes(x = (vehicle_length + vehicle_weight + ground_clearance + spoiler_angle + AWD), mpg_data))
plt + geom_line(aes(y=equation, color="red", size=2)) + geom_point(aes(y=mpg, size=2)) + ylab("MPG") + xlab("Combined Prototype Stats")

              
                        
## Deliverable 2: Descriptive statistics of production level suspension coil PSI 

# Load the data
coil_data <- read.csv(coil_file)

# summarize the data
total_summary <- coil_data %>% summarize(Min_PSI=min(PSI), Mean_PSI=mean(PSI), Median_PSI=median(PSI), Max_PSI=max(PSI), Production_Variance=sd(PSI)**2, St_Dev=sd(PSI), .groups = 'keep')

lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Min_PSI=min(PSI), Mean_PSI=mean(PSI), Median_PSI=median(PSI), Max_PSI=max(PSI), Production_Variance=sd(PSI)**2, St_Dev=sd(PSI), .groups = 'keep')

print(total_summary)
print(lot_summary)

## Deliverable 3: T-Test of suspension coil production lots



## Deliverable 4: 



