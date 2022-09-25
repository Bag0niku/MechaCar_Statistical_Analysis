# MechaCar_Statistical_Analysis
Analysis of a new vehicle in production at a fictional company. Production troubles are blocking progress on the MechaCar prototype. An analysis of production data is needed to provide insights that might be helpful to the manufacturing team.

### Resources
- Data: 
    - Fictional Datasets: 
        - Production PSI measurements for suspension coils
        - Production measurements of prototype vehicle yet to be released
- Software: 
    - R 4.2
    - RStudio 2022.07.01

## Linear Regression to Predict MPG
The Manufacturing team is having trouble with the MechaCar prototype body style. Providing the following metrics that they have been tracking, they want me to try predicting the mpg of the vehicle: 
  - MPG, Vehicle Length, Vehicle Weight, Ground Clearance, Spoiler Angle, and All Wheel Drive (AWD).

Plugging all these metrics into a linier regression model returned:

- MPG = (6.267)vehicle_length + (0.00125)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD - 104.0

![](/Images/mpg_regression.png)

- The p-value for the equation is near zero and very significant, meaning the coefficients for the metrics are not zero and can be used to predict the mpg of the vehicle.
- The p-values of each coefficient are quite low, but only 3 of them are of any significance. The Intercept, Ground Clearance and Vehicle Length provided a non-random amount of variance to the mpg values.
 
Now that we know what the linier regression model looks like based on the raw data, the next steps are to test for multicollinearity, Heteroskedasticity, and serial correlation within the dataset to varify the model's integrity.


## Summary Statistics on Suspension Coils
To ensure production is producing quality products of the certain standard, companies must perform audits on each production lot made. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
    
For a general idea of the whole picture, a summary table for the entire suspension coil dataset provided by the manufacturing team:

![](/Images/coil_total_summary.png)

- The total production is within the standard of having a variance less than 100.
- However the range from minimum to maximum measured PSI is a little concerning.

![](/Images/coil_lot_summary.png)

- Statistics for Lot 1 and Lot 2 are what we should be expecting from production. 
- Lot 3 does not meet the standard required. There needs to be an investigation into what happened during production of these suspension coils and why the variance is so drastically different than the other 2 lots.


## T-Tests on Suspension Coils

Comparing this production dataset with the entire population of acceptable suspension coils requires a T-Test. The anticipated mean of the population is 1500 PSI. 

![](/Images/total_coil_ttest_summary.png)

- This test shows that this production dataset just barely acceptable and I anticipate Lot 3 to be the culprite for the low p-value based on the summary statistics in the previous section.


![](/Images/coil_ttest_summary.png)

- Lot 1 is a perfect match with our goals, a rare sight!
- Lot 2 is acceptable.
- Lot 3 is not acceptable, the culprite as expected.

### Suspension Coil Audit Results:
Lot 1 and 2 may be used in vehicle assembly. Lot 3 should be removed from the production floor and not used with vehicle assembly. Lot 3 has too much ability to compromise the safety of our customers. 


## Study Design: MechaCar vs Competition

To compare MechaCar's prototype vehicle to it's competitors, data that is usually used by customers to compare vehicles is required: 
  - Vehicle Class Type
  - Engine info: 
      - horsepower, fuel type, mpg (city & highway)
      - engine size (liters), number of cylinders, engine shape
      - Transmission type, number of gears
  - Interior: 
      - number of passanger seats, amount of cargo space
  - Safety Rating
  -  Cost, New Car Price, Expected Resale Value


I would like to perform 2 tests on the MechaCar protoype for business insights and recommendations.
 - Test the mpg to see if it is acceptable when compared to the competition with the same vehicle class type.
     - Lesser one tail t-test
         - Null Hypothesis: The mpg is statistically similar to the competition.
         - Alternative: The mpg is statistically lower than the competition.
 - Predict resale value when compared to the competion with the same vehicle class, assuming good condition.
     - Use Linier Regression on sales of competitor's vehicles and compare our expected resale value with a T-Test.
         - Null Hypothesis: The resale value is stistically similar to the competition.
         - Alternative: The resale value is not statistically similar.

