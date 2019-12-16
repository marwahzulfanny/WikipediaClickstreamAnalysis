library(clickstream)
cls <- readClickstreams(file = "wiki201701z.csv",sep = ",", header = TRUE)
cls
summary(cls)
mc <- fitMarkovChain(cls)
mc <- fitMarkovChain(clickstreamList = cls,
control = list(optimizer = "quadratic"))
mc
summary(mc)
startPattern <- new("Pattern", sequence = c("Zzzquil","Insomnia"))
predict(mc, startPattern)
plot(mc)


