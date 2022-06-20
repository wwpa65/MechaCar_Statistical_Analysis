# MechaCar_Statistical_Analysis

# Overview

# Summary

A screenshot of data frame for MechaCar data is shown in Figure 1. 

![Mechar_Data](/images/MechaCar-data.png)

Figure 1. Screenshot of MechaCar data frame.

## Linear Regression to Predict MPG

*Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The summary results of the multiple linear regression model is shown in the Figure 2.

- Intercept (p-value=5.08e-08)
- vehicle_length (p-value=2.60e-12)
- ground_clearance (p-value=5.21e-08)


s the slope of the linear model considered to be zero? Why or why not?
- The slope of the model is considered NOT to be zero because the overall linear model has a p-value of 5.35e-11. It rejects the null-hypothesis

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- this linear model seems to predict mpg effectively because R^2 = 0.71 while the p-value remained significant (p=5.35e-11). 
- However, it needs further investigation because its intercept is also statistically significant, meaning that there is a significant amount of variability when all independent variables are zero. 
  - Significant features may need scaling or transforming to improve predictive ability of the model.
  - There may be other variables that can help explain the variability of our dependent variable that have not been included in our mode  

![Linear_Regression](/images/lm-mpg_vehicle_param.png)

Figure 2. Sussamy of the linear regression model 

## Summary Statistics on Suspension Coils

A screenshot of data frame for Suspension Coil data is shown in Figure 3. 

![SuspensionCoil_Data](/images/suspension-coil-data.png)

Figure 3. Screenshot of Suspension Coil data frame.


*Using your knowledge of R, you’ll create a summary statistics table to show:
The suspension coil’s PSI continuous variable across all manufacturing lots
The following PSI metrics for each lot: mean, median, variance, and standard deviation.*

Summary statistics are shown in the Figure 4. 

![SuspensionCoil_Summary_Stat](/images/total-summary.png)

Figure 3. Summary statistics of Suspension Coil data.

## T-Tests on Suspension Coils

![All_vs_population_mean](/images/ttest-all-vs-popmean.png)

![Lot1vs_population_mean](/images/ttest-lot1-vs-popmean.png)

![Lot2vs_population_mean](/images/ttest-lot2-vs-popmean.png)

![Lot3vs_population_mean](/images/ttest-lot3-vs-popmean.png)


## Study Design: MechaCar vs Competition



*Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?*

What metric or metrics are you going to test?
- Fuel efficiency: City miles per gallon (MPG), highway MPG
- number of forward gears, horsepower, torque, vehicle width, vehicle length, vehicle height, vehicle weight, spoiler angle, ground clearance
- Perform multiple linear regression analysis to determine parameters that correlate with fuel effiency
- Perform Analysis of Varience (ONE-WAY ANOVA/ TWO-WAY ANOVA) between MechCar and competitor vehicles

What is the null hypothesis or alternative hypothesis?

For comparing vehicle parameters (numeric)
- Null Hypothesis: The slope of the linear model is zero, or m = 0
- Alternative hypothesis: The slope of the linear model is zero, or m = 0

For highly correlated vehicle parameters,

- Perform 


