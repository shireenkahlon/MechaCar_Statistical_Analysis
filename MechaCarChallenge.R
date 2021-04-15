mecha_car <- read.csv('MechaCar_mpg.csv')
head(mecha_car)
lin_model_mpg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)
summary(lin_model_mpg)


