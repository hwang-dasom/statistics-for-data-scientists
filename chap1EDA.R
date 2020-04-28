# 1.3.3
# Data load
state<-read.csv("~/git_repo/statistics-for-data-scientists/data/state.csv")
head(state)
# Mean, trimmed mean, median
mean(state[["Population"]])
mean(state[["Population"]], trim=0.1)
median(state[["Population"]])

# Weighted mean, weighted median
weighted.mean(state[["Murder.Rate"]], w=state[["Population"]])
library("matrixStats")
weightedMedian(state[["Murder.Rate"]], w=state[["Population"]])
