library(dplyr)
# Import MechaCar_mpg.csv file
MechaCar <- read.csv(file="MechaCar_mpg.csv")

#Linear regression model calculation
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

#Summary statistics of linear regression
summary(reg)

# Import Suspension_Coil.csv file
Suspension_Coil <- read.csv(file="Suspension_Coil.csv")

#Summarize statisticas

lot <- group_by(Suspension_Coil, Manufacturing_Lot)

total_summary <- summarize(lot, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# ttest for all to population mean of 1500
t.test(lot, mu=1500.00)


# ttest for individual lot to population mean
lot1 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot1")
lot2 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot2")
lot3 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot3")

t.test(lot1["PSI"], mu=1500)
t.test(lot1["PSI"], mu=1500)
t.test(lot1["PSI"], mu=1500)

#Alternatively in a single line for each lot

t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")["PSI"], mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")["PSI"], mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")["PSI"], mu=1500)

