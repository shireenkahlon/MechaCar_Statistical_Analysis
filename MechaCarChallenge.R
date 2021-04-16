#Import the mecha car CSV
mecha_car <- read.csv('MechaCar_mpg.csv')
head(mecha_car)

#linear regression of mpg
lin_reg_mpg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance 
                    + AWD, data=mecha_car)

#get the p-value and r-squared value from the linear regression
summary(lin_reg_mpg)

#import the suspension coil csv
suspension_coil_table <- read.csv('Suspension_Coil.csv')
head(suspension_coil_table)

#gather the summary and statistics of the PSI column
total_summary <-  suspension_coil_table %>% summarise(PSI_mean=mean(PSI), PSI_Median=median(PSI),
                                                                                  PSI_Variance=var(PSI), PSI_StDev=sd(PSI))
print(total_summary)

#display the summary and statistics of the PSI column grouped by each manufacturing lot
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarise(PSI_Mean=mean(PSI), PSI_Median=median(PSI), PSI_Variance=var(PSI), PSI_StDev=sd(PSI), .groups = 'keep')
print(lot_summary)

# Create a boxplot of PSI and Manufacturing Lot to show the summary statistics and outliers of each lot
plt <- ggplot(suspension_coil_table, aes(x=Manufacturing_Lot, y=PSI))
plt + geom_boxplot()

#Create a sample from psi
sample_psi <- sample(suspension_coil_table$PSI, 50)

#create a t-test to see the how statistically similar the sample is to the population
psi_ttest <- t.test(sample_psi, mu=mean(suspension_coil_table$PSI))

#Use subset() to create a data frame with the data corresponding with the filtered lot
lot_1 <- subset(suspension_coil_table, Manufacturing_Lot == 'Lot1')
lot_2 <- subset(suspension_coil_table, Manufacturing_Lot == 'Lot2')
lot_3 <- subset(suspension_coil_table, Manufacturing_Lot == 'Lot3')

##create a t-test for each lot number to see the how statistically similar each lot's psi is to the population
t.test(lot_1$PSI, mu=mean(suspension_coil_table$PSI))
t.test(lot_2$PSI, mu=mean(suspension_coil_table$PSI))
t.test(lot_3$PSI, mu=mean(suspension_coil_table$PSI))



