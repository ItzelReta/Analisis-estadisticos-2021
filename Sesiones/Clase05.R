# Itzel Reta Heredia
# 8/30/2021
# 2124992
############

dbh <- c(15, 14, 13, 12, 9, 8)
alt <- c(8, 7, 7, 6, 5, 4)
prb <- data.frame(dbh, alt)

plot(dbh, alt)
cor.test(dbh, alt)



prb$xmn <- round(prb$dbh - mean(prb$dbh),2)
mean(prb$dbh)
prb$ymn <- round(prb$alt - mean(prb$alt),2)
mean(prb$alt)
prb$xmn2 <- round((prb$dbh - mean(prb$dbh))^2,2)

beta <- sum(prb$xmn * prb$ymn)/sum(prb$xmn2)
beta
alfa <- mean(prb$alt)- (beta*mean(prb$dbh))

prb$ypr <- round(alfa + (beta*prb$dbh),2)
sum(prb$res)^2
prb.lm <- lm(prb$alt ~ prb$dbh)
summary(prb.lm)

prb.lm$fitted.values

plot(dbh, alt)
abline(prb.lm, col = "red")

prb.lm2 <- anova(prb.lm)
prb.lm2



cbe.lm <- lm(cbe$LAI4 ~ cbe$Cnpy)

plot(cbe$Cnpy, cbe$LAI4)
abline(cbe.lm, col= "red")
summary(cbe.lm)

cbe.lm$fitted.values
cbe$ypr <- cbe.lm$fitted.values
