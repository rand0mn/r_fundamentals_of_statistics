sample <- data.frame(cbind(c(1, 3, 6, 26), c(8, 40, 10, 2)))
colnames(sample) <- c('x', 'n')

n <- sum(sample$n)
x_mean <- sum(sample$x * sample$n) / n

x_mean
