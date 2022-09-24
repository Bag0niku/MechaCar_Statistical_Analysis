# MechaCar_Statistical_Analysis
Analysis of a new vehicle in production at a fictional company

### Resources
- Data: 
    - Real dataset:
        - Motor Trend Magazine's 1974 Car Dataset 
    - Fictional Datasets: 
        - Production PSI measurements for suspension coils
        - Production measurements of prototype vehicle yet to be released
- Software: 
    - R 4.2
    - RStudio 2022.07.01

## Linear Regression to Predict MPG

Q: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Q: Is the slope of the linear model considered to be zero? Why or why not?

Q: Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?




## Summary Statistics on Suspension Coils
To ensure production is producing quality products of the certain standard, companies must perform audits on each production lot made. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
    
For a general idea of the whole picture, here a summary table for the entire dataset:

![](/Images/coil_total_summary.png)

- The total production is within the standard of having a variance less than 100.
- However the range from minimum to maximum measured PSI is a little concerning.

![](/Images/coil_lot_summary.png)

- Statistics for Lot 1 and Lot 2 are what we should be expecting from production. 
- Lot 3 does not meet the standard required. There needs to be an investigation into what happened during production of these suspension coils and why the variance is so drastically different than the other 2 lots.


## T-Tests on Suspension Coils

Comparing this production dataset with the entire population of acceptable suspension coils requires a T-Test. The anticipated mean of the population is 1500 PSI. 

![](/Images/total_coil_ttest_summary.png)

- This test shows that this production dataset just barely acceptable and I anticipate Lot 3 to be the culperate for the low p-value based on the summary statistics in the previous section.


![](/Images/coil_ttest_summary.png)



Q: briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.



## Study Design: MechaCar vs Competition

Task:

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:
- What metric or metrics are you going to test?
- What is the null hypothesis or alternative hypothesis?
- What statistical test would you use to test the hypothesis? And why?
- What data is needed to run the statistical test?


Also required to have the following:
- A metric to be tested is mentioned.
- A null hypothesis or an alternative hypothesis is described.
- A statistical test is described to test the hypothesis.
- The data for the statistical test is described.