library(dplyr)

## File location for the data
coil_file <- "data/Suspension_Coil.csv"
mecha_file <- "data/MechaCar_mpg.csv"
mpg_data <- read.csv(mecha_file)


## Deliverable 1: Linier Regression of Prototype Mecha Car MPG Data

model = lm(formula = mpg ~ vehicle_length + vehicle_weight + ground_clearance + spoiler_angle + AWD, mpg_data)
equation = model$coefficients['vehicle_length']*mpg_data$vehicle_length + model$coefficients['vehicle_weight']*mpg_data$vehicle_weight + model$coefficients['spoiler_angle']*mpg_data$spoiler_angle + model$coefficients['ground_clearance']*mpg_data$ground_clearance + model$coefficients['AWD']*mpg_data$AWD + model$coefficients['(Intercept)']


plt <- ggplot(mpg_data, aes(x = (vehicle_length + vehicle_weight + ground_clearance + spoiler_angle + AWD), mpg_data))

plt + geom_line(aes(y=equation, color="red", size=2)) + geom_point(aes(y=mpg, size=2)) + ylab("MPG") + xlab("Combined Prototype Stats")

              
                        
## Deliverable 2: Descriptive statistics of production level suspension coil PSI 


## Deliverable 3: 

## Deliverable 4: 



