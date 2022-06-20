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

Use availabe dataset to perform multiple linear regression to identify factors affecting the car mpg
Perform correlation (Spearman) analysis to identify factors to consider
Determine the final 


