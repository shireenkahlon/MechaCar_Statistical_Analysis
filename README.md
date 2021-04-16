# MechaCar_Statistical_Analysis
This project will use R to perform a statistical analysis on vehicle production and manufacturing

## Linear Regression to Predict MPG
The linear regression performed gives us statistics in which we can determine how miles-per-gallon (MPG) in the vehicles was influenced by a random factor or by specific factors, such as vehicle length, vehicle weight, spoiler angle, ground clearance or AWD. From these statistics gathered, we can see that vehicle length and ground clearance have some effect on the MPG in at least one vehicle. In other words, we can reject the null hypothesis on this finding. 
![linear_regression](https://github.com/shireenkahlon/MechaCar_Statistical_Analysis/blob/main/screenshots/mechacar_linear_regression.png)


By looking at the statistics provided in the image above, we can see that the slope is not 0. The r-squared value is 0.68, which means that 68% of predictions relevant to the data analyzed could be correct. The 0.68 r-squared value tells us that the slope will not be zero. An r-squared value of 0.68 can help us with predicting the MPG of MechaCar prototypes. However, in addition to the r-squared value, further regression statistical analyses and regression diagnostic studies would need to be conducted to gain a full picture of the data in front of us.


## Summary Statistics on Suspension Coils
The data collected and summarized shows us that the manufacturing process is not consistent among all three lots. As seen in the image below, the first two lots have variances which are under 10; the third lot, however, has a variance of 170. The plot created, as shown in the chart below, shows the various outliers in pounds per-square-inch for lot 3. These outliers increase the variance which explains why the variance for lot 3 is higher when contrasted with the other lots; to compare, in lot 1 and 2 combined, there is 1 outlier. Thus, neither lot 3 or the total of all three lots will meet the design specification.

The image below shows the summary of all of the lots combined:
![total_summary](https://github.com/shireenkahlon/MechaCar_Statistical_Analysis/blob/main/screenshots/Total_Summary.png)

The following image shows the summary of each lot:
![lot_summary](https://github.com/shireenkahlon/MechaCar_Statistical_Analysis/blob/main/screenshots/Lot_Summary.png)

The boxplot below potrays the statistics and outliers of each lot:
![PSI_boxplot](https://github.com/shireenkahlon/MechaCar_Statistical_Analysis/blob/main/screenshots/PSI_Boxplot.png)


## T-Tests on Suspension Coils
From the results shown below, we can see that the data corresponding with lots 1 and 2 are below 0.05, thus rejecting the null hypothesis. The p-value for lot 3, however, is 0.16 — higher than the 0.05 that we are looking for — confirming the null hypothesis to show that there may have been random factors influencing the pounds per-square-inch.

The images below displays the results of the t-test for each lot:
![lot_1_ttest](https://github.com/shireenkahlon/MechaCar_Statistical_Analysis/blob/main/screenshots/lot_1_ttest.png)

![lot_2_ttest](https://github.com/shireenkahlon/MechaCar_Statistical_Analysis/blob/main/screenshots/lot_2_ttest.png)

![lot_3_ttest](https://github.com/shireenkahlon/MechaCar_Statistical_Analysis/blob/main/screenshots/lot_2_ttest.png)

## Study Design: MechaCar vs Competition
      To examine how MechaCar will perform against competition from a customer’s point-of-view, we can look at various different statistics. To start off, we would need to create a null and alternative hypothesis. To do this requires us to validate or invalidate the hypothesis: if MechaCar’s vehicles have superior marks on safety ratings, then MechaCar will sell more cars than our competitors. For this statement, the null hypothesis would be stating that safety ratings is not a factor in cars being sold; the alternative hypothesis is safety ratings is a factor in the number of vehicles being sold from MechaCar.  
      In order to test this hypothesis, we would need to gather data on car sales and safety ratings of each car. Afterwards, we can create a linear regression model using car sales as the dependent value and safety ratings as the independent value. We can create a plot and visualize the linear regression as an error bar. At this point, we can do the same for the competitors of taking the linear regression of their sales and safety ratings; this can be displayed on our graph in a different color so we can compare our sales to the competitors.   
      If the results show a p-value of .05 or less, then we can reject the null hypothesis and say that safety ratings was a factor in sales. We can also use the r-squared value to help us predict the sales going forward. If the r is above .07, this is a good indicator that the sales will continue to go as shown in the past. Looking at these results gives us a good idea of how to proceed with sales and production of cars, compared to our competitors. We can make decisions based on these statistics to make this company successful in the months and years to come.


