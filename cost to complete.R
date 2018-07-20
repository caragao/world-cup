B <- 3000
N_pack <- 800
album <- c(1:683)
price <- 2

result <- replicate(B, {

res <- replicate (N_pack, {
  pack <- sample(album, 5, replace = TRUE)
  
})

n <- N_pack*5

res2 <- cbind(res[1:n])
res2 <- unique(res2)

nrow(res2)
})

X_hat <- mean(result)
se <- sd(result)
hist(result)
(1-pnorm(683, X_hat, se))*100
X_hat

result_683 <- result == 683
mean(result_683)*100

N_pack*price
