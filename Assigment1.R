library(readxl)
#install.packages("data.table")
library(data.table)
#install.packages("ggplot2")
library(ggplot2)
#install.packages("dplyr")
library(dplyr)
#install.packages("jmv")
library(jmv)

setwd("C:/Users/AAAA/Desktop/istahils")
read_excel("C:/Users/AAAA/Desktop/istahils/Diabetes.xlsx")
myr<-read_excel("C:/Users/AAAA/Desktop/istahils/Diabetes.xlsx")

myr <- read_excel("C:/Users/AAAA/Desktop/istahils/Diabetes.xlsx", sheet = "continous", skip = 0)  
myr<-as.data.table(myr)

treat<-as.factor(myr$sex)
treat<-as.factor(myr$history)
treat<-as.factor(myr$Outcome)
myr$G0 <- as.numeric(myr$G0)
myr$G2 <- as.numeric(myr$G2)
myr$age <- as.numeric(myr$age)
myr$outcome <- as.numeric(myr$outcome)
myr$HbA1c <- as.numeric(myr$HbA1c)
myr$BMI <- as.numeric(myr$BMI)
myr$Immunoglobulin.A..mg.L.<-as.numeric(mydt$Immunoglobulin.A..mg.L.)
mydt$Immunoglobulin.G..mg.L.<-as.numeric(mydt$Immunoglobulin.G..mg.L.)

descriptives(data = myr, vars=c("age","BMI","history"),splitBy = "sex", dens = TRUE, box = TRUE, violin = TRUE, dot = TRUE, dotType = "jitter", n = TRUE,
             missing = TRUE, mean = TRUE, median = TRUE, sd = TRUE, variance = TRUE, range = TRUE,
             min = TRUE, max = TRUE, se = TRUE, skew = TRUE, kurt = TRUE)
