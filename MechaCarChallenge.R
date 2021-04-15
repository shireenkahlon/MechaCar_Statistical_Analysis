#Import the mecha car CSV
mecha_car <- read.csv('MechaCar_mpg.csv')
head(mecha_car)
#linear regression of mpg
lin_model_mpg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance 
                    + AWD, data=mecha_car)
#get the p-value and r-squared value from the linear regression
summary(lin_model_mpg)

#import the suspension coil csv
suspension_coil_table <- read.csv('Suspension_Coil.csv')
head(suspension_coil_table)
#gather the summary and statistics of the PSI column
total_summary <-  suspension_coil_table %>% summarise(PSI_mean=mean(PSI), PSI_Median=median(PSI),
                                                                                  PSI_Variance=var(PSI), PSI_StDev=sd(PSI))
print(total_summary)
#display the summary and statistics of the PSI column grouped by each manufacturing lot
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarise(PSI_Mean=mean(PSI), PSI_Median=median(PSI), PSI_Variance=var(PSI), PSI_StDev=sd(PSI))
print(lot_summary)
