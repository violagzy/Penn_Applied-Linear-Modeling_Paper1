## Evaluation Research 

## Sep 24 2019

# ipmort the data

good<-read.csv("F:/00 UPenn/03Course/MSSP 897/A1/Data/good.csv")


# pre-process the data

goodN<-na.omit(good[,c("CHID","readss97",
                       "AGE97","faminc97","HOME97","bthwht",
                       "WICpreg","AFDCpreg")])


# descriptive statistics

install.packages("pastecs")
library(pastecs)
stat.desc(goodN)


# regression model 1, 2, 3

m1<-lm(formula = readss97 ~ WICpreg  
      + AGE97 + faminc97 + HOME97 + bthwht,data=goodN)
summary(m1)

m2<-lm(formula = readss97 ~ AFDCpreg 
      + AGE97 + faminc97 + HOME97 + bthwht,data=goodN)
summary(m2)

m3<-lm(formula = readss97 ~ WICpreg + AFDCpreg 
       + AGE97 + faminc97 + HOME97 + bthwht,data=goodN)
summary(m3)


# alternative way of calculate the unique effect
# through semi-partial correlation

# install.packages("lmSupport")
# library(lmSupport)
# modelEffectSizes(m3)


# interaction model
# m4<-lm(formula = readss97 ~ WICpreg,data=goodN)
# summary(m4)

