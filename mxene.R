#set the working directory
setwd("C:/Users/km3436/Desktop/R/MXene")
rm(list=ls())
#####################################################################################
#libraries in use:
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(stringr)
#####################################################################################
#data:
Voltage <- c(-6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5)

OnePadLight <- c(2.36, 2.1, 1.45, 1.13, 0.9, 0.4, -0.003, -0.71, -1.9, -3.5, -6.5, -9.9)
OnePadDark <- c(4.6, 2.3, 1.4, 1.1, 0.61, 0.22, -0.031, -0.3, -0.9, -1.6, -2.3, -3.1)

SubLight <- c(0.2, 0.16, 0.1, 0.07, 0.03, 0.01, -0.003, -0.04, -0.04, -0.02, -0.03, -0.05)
SubDark <- c(0.01, 0.015, 0.012, 0.012, 0.007, 0.0008, 0.0004, -0.026, -0.068, -0.14, -0.3, -0.43)

MSMLight <- c(2.9, 1.96, 1.2, 0.82, 0.57, 0.31, -0.002, -0.43, -1.4, -3.5, -5.8, -8.3)
MSMDark <- c(2.1, 1.1, 0.89, 0.42, 0.31, 0.17, -0.0002, -0.17, -0.24, -0.67, -1.49, -2.21)
#####################################################################################
my.data <- data.frame(Voltage, OnePadLight, OnePadDark, SubLight, SubDark, MSMLight, MSMDark)
head(my.data)
data1 <- my.data %>%
  gather(key,Current_nA, OnePadLight, OnePadDark) %>%
  ggplot(aes(x=Voltage, y=abs(Current_nA), colour=key)) +
  scale_y_continuous(name = "Current(nA)") +
  scale_x_continuous(name = "Voltage(V)") +
  ggtitle("I-V Characteristics for Patterned MXene") +
  geom_line(size = 1.5) +
  geom_vline(xintercept = 0, color = "black", size=1) +
  geom_hline(yintercept = 0, color = "black", size=1)
data1
data2 <- my.data %>%
  gather(key,Current_nA, SubLight, SubDark) %>%
  ggplot(aes(x=Voltage, y=abs(Current_nA), colour=key)) +
  scale_y_continuous(name = "Current(nA)") +
  scale_x_continuous(name = "Voltage(V)") +
  ggtitle("I-V Characteristics for Patterned MXene") +
  geom_line(size = 1.5) +
  geom_vline(xintercept = 0, color = "black", size=1) +
  geom_hline(yintercept = 0, color = "black", size=1)
data2
data3 <- my.data %>%
  gather(key,Current_nA, MSMLight, MSMDark) %>%
  ggplot(aes(x=Voltage, y=abs(Current_nA), colour=key)) +
  scale_y_continuous(name = "Current(nA)") +
  scale_x_continuous(name = "Voltage(V)") +
  ggtitle("I-V Characteristics for Patterned MXene") +
  geom_line(size = 1.5) +
  geom_vline(xintercept = 0, color = "black", size=1) +
  geom_hline(yintercept = 0, color = "black", size=1)
data3


data4 <- my.data %>%
  gather(key,Current_nA, SubLight, OnePadLight) %>%
  ggplot(aes(x=Voltage, y=abs(Current_nA), colour=key)) +
  scale_y_continuous(name = "Current(nA)") +
  scale_x_continuous(name = "Voltage(V)") +
  ggtitle("I-V Characteristics for Patterned MXene") +
  geom_line(size = 1.5) +
  geom_vline(xintercept = 0, color = "black", size=1) +
  geom_hline(yintercept = 0, color = "black", size=1)
data4

