library(ggplot2)
library(scales)

parabolicVsExponential<-data.frame(matrix(ncol = 3, nrow = 100))
colnames(parabolicVsExponential)<-c("x", "parabolic", "exponential")

for (x in 1:100)
{
  parabolicVsExponential[x,1]<-x
  parabolicVsExponential[x,2]<-x^2
  parabolicVsExponential[x,3]<-2^x
}

ggplot(data=parabolicVsExponential, aes(x, parabolic)) + geom_line(group="Parabolic", color="blue") + geom_line(y=parabolicVsExponential$exponential, colour="red", group="Exponential") + ggtitle("Exponential (2^x) and parabolic (x^2) functions") + ylab("y") + xlab("x") + scale_y_continuous(label=comma) + theme(text = element_text(size=16)) 

                                                                                              