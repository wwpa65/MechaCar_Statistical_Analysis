# MechaCar_Statistical_Analysis

# Overview

# Summary

A screenshot of data frame for MechaCar data is shown in Figure 1. 

![Mechar_Data](/images/MechaCar-data.png)

**Figure 1.** Screenshot of MechaCar data frame.

## Linear Regression to Predict MPG

*Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The summary results of the multiple linear regression model is shown in the Figure 2.

- Intercept (p-value=5.08e-08)
- vehicle_length (p-value=2.60e-12)
- ground_clearance (p-value=5.21e-08)


Is the slope of the linear model considered to be zero? Why or why not?
- The slope of the model is NOT considered to be zero because the linear model has a p-value of 5.35e-11 and R2 = 0.71. It rejects the null-hypothesis

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- this linear model seems to predict mpg effectively because R^2 = 0.71 while the p-value remained significant (p=5.35e-11). 
- However, it needs further investigation because its intercept is also statistically significant, meaning that there is a significant amount of variability when all independent variables are zero. 
  - Significant features may need scaling or transforming to improve predictive ability of the model.
  - There may be other variables that can help explain the variability of our dependent variable that have not been included in our model ot the current independant variables may need transforming and model re-evaluation after that.  

![Linear_Regression](/images/lm-mpg_vehicle_param.png)

**Figure 2.** Suummary of the linear regression model 

## Summary Statistics on Suspension Coils

A screenshot of data frame for Suspension Coil data is shown in Figure 3. 

![SuspensionCoil_Data](/images/suspension-coil-data.png)

**Figure 3.** Screenshot of Suspension Coil data frame.


*Using your knowledge of R, you’ll create a summary statistics table to show:
The suspension coil’s PSI continuous variable across all manufacturing lots
The following PSI metrics for each lot: mean, median, variance, and standard deviation.*

The population mean and median remain 1500 for lot 1 and lot2 while population mean and median for lot3 is 1496 and 1498, respectively. Summary statistics are shown in the Figure 4. However, the varience of lot3 seemes to be higher (170) when compared to lot 1 (0.98) and lot2 (7.47).

![SuspensionCoil_Summary_Stat](/images/total-summary.png)

**Figure 4.** Summary statistics of Suspension Coil data.

## T-Tests on Suspension Coils

The t-test of all vehicles to population mean shows no statistical significance (p=0.06, i.e. p > 0.05, Figure 5) meaning that it does not reject NULL hypothesis. In addition, t-test for lot1 (p=1, Figure 5)and lot2 (p=0.61, Figure 6) does not show statistical significance. However, t-test of lot3 vs population meanshows that it is statistically significant (p=0.04, Figure 7) meaning it rejects the NULL hypothesis. Therefore we can conclude that there is a difference in the production of lot3. 

![All_vs_population_mean](/images/ttest-all-vs-popmean.png)

**Figure 5.** t-test all vs population mean (mu=1500)

![Lot1vs_population_mean](/images/ttest-lot1-vs-popmean.png)

**Figure 6.** t-test lot1 vs population mean (mu=1500)

![Lot2vs_population_mean](/images/ttest-lot2-vs-popmean.png)

**Figure 7.** t-test lot2 vs population mean (mu=1500)

![Lot3vs_population_mean](/images/ttest-lot3-vs-popmean.png)

**Figure 8.** t-test lot3 vs population mean (mu=1500)


## Study Design: MechaCar vs Competition

*Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

We have seen in our current analysis that vehicle length, ground clearance, and the intercept of multiple linear model are the highly stastically significant variables (or measured vehicle parameters) that influences fuel efficiency (mpg) in MechaCar vehicles. The observation that the intercept is also highly stastically significant indicates that there may be other independent variables that needs to be included and/ or transform them for re-evaluating the model.

The proposed study design to predict vehicle performance (by fuel efficiency, MPG) includes the following.
- Extending the vehicle parameters to identify other additional (measured) vehicle parameters that affect fuel efficiency.
  - This can be performed by using publicly available data with as many numerical parameters as possible for linear modeling.
  - Correlation analysis before linear modeling may help for narrow down the list

- Perform ANOVA test to find statistically significant vehicle parameters between MechaCar vehicles and Competitor's vehicles to identify which parameters need to be optimized to improve the performance of MechCar vehicles (in this example, fuel efficiency). **Note:** This can be equally applicable to testing other vehcle performances such as cost, safety, carbon footprint etc.

- Using controlled experiment with competitor vehicle (preferably, one parameter at a time), A/B analysis can be performed to optimize the vehicle performance by using vehicle parameters identified in the ANOVA test.

What metric or metrics are you going to test?
- Fuel efficiency: City miles per gallon (MPG), highway MPG. These dependent variables needs testing one at a time.
- number of forward gears, horsepower, torque, vehicle width, vehicle length, vehicle height, vehicle weight, spoiler angle, ground clearance

What is the null hypothesis or alternative hypothesis?

For comparing measured vehicle parameters (numeric)
- Null Hypothesis: The slope of the linear model is zero, or m = 0 (i.e., fuel efficiency is not correlated linearly with the factors (vehicle parameters) that are tested).
- Alternative hypothesis: The slope of the linear model is not zero, or m = 0 ((i.e., fuel efficiency is correlated linearly with the factors (vehicle parameters) that are tested).

For comparing highly correlated vehicle parameters with MPG between cars (MechCar and competitors)

ANOVA (one way ANOVA/ 2-way ANOVA)
- Null Hypothesis: The means of all groups are equal. i.e., Performance (MPG) of MechaCar vehicles and competitor vehicles do not show statistical significance for tested vehicle parameters. 
- Alternative hypothesis: At least one of the means is different from all other groups.i.e., Performance (MPG) of MechaCar vehicles and competitor vehicles show statistical significance for at least one tested vehicle parameters. 

What statistical test would you use to test the hypothesis? And why?
- Perform correlation analysis using as many numerical parameters available in a available dataset 
  - This will allow us to determine the measured vehicle parameters that correlates with fuel effiency (MPG).
  - This will help identifying correlating variables with fuel effiency (MPG) to narrow down the list of variables for multiple linear modeling. 
  - Perform multiple linear regression analysis using highly correlated variables to determine parameters that have statistically significant impact on fuel effiency (MPG)
  - This will enable identifying variables (measured vehicle parameters) for determining which variables predict vehicle performance. 
- Perform Analysis of Varience (ONE-WAY ANOVA/ TWO-WAY ANOVA) on the variables identified in the multiple linear model to determine if there are significant difference of those vehicle parameters between MechCar and competitor vehicles
  - This will facilitate determining if there are differences in vehicle performance between MechCar vehicles and compitor vehicles when used tested vehicle parameters. 
  - Then these parameters can be tested futrther by using controlled experiments as in the next step below. 
- Perform A/B analysis using competitor vehicle(s) as the control to optimize MechCar vehicle performance by using the tested vehicle paramers that seem to have influence on the vehicle performance (fuel efficiency) between .
    - This step will help optimize vehicle parameters to outperform (or at least equalize) vehicle performance.

What data is needed to run the statistical test?
- Any publicly available datasets for analysis. These data may need to clean up prior to the analysis.
- If possible, new data collection will be ideal. 
- New data with other variables controlled (i.e., for A/B analysis) is better suited.
