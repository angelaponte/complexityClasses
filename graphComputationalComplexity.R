library(ggplot2)
library(scales)

YMAX <- 150
complexityClasses <- data.frame(matrix(ncol = 5, nrow = YMAX))
colnames(complexityClasses) <- c("x", "logarithmic", "parabolic", "exponential", "factorial")

for (x in 1:YMAX)
{
  complexityClasses[x,1] <- x
  complexityClasses[x,2] <- log(x)
  complexityClasses[x,3] <- x^2
  complexityClasses[x,4] <- 2^x
  complexityClasses[x,5] <- factorial(x)
}

ggplot(data=complexityClasses, aes(x, parabolic)) +
  geom_line(color="blue", group="Parabolic") +
  geom_line(y=complexityClasses$exponential, colour="red", group="Exponential") +
  geom_line(y=complexityClasses$factorial, colour="purple", group="Factorial") +
  geom_line(y=complexityClasses$x, colour="orange", group="Linear") +
  geom_line(y=complexityClasses$logarithmic, colour="green", group="Logarithmic") +
  ggtitle("Factorial, exponential, parabolic, linear, and logarithmic complexity") +
  ylab("y") + xlab("x") + scale_y_continuous(label=comma) + theme(text = element_text(size=16))

