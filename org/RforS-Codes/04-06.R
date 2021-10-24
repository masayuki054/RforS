samples.no <- 10000
sample.size <- 10
this.mean <- 50
this.sd <- 10

標本分散s <- numeric(samples.no)
不偏分散s <- numeric(samples.no)

for (i in 1:samples.no) {
  標本 <- rnorm(n=sample.size,mean=this.mean,sd=this.sd)
  標本分散s[i] <- mean((標本-mean(標本))^2)
  不偏分散s[i] <- var(標本)
}

c(mean(標本分散s),sd(標本分散s))
c(mean(不偏分散s),sd(不偏分散s))



標本分散誤差100以上 <- ifelse(標本分散s>=200,1,0)
不偏分散誤差100以上 <- ifelse(不偏分散s>=200,1,0)

table(標本分散誤差100以上)
table(不偏分散誤差100以上)
## 中央値を母平均の推定量として使えるか

samples.no <- 10000
sample.size <- 10
this.mean <- 50
this.sd <- 10

標本平均s <- numeric(samples.no)
標本中央値s <- numeric(samples.no)

for (i in 1:samples.no) {
  標本 <- rnorm(n=sample.size,mean=this.mean,sd=this.sd)
  標本平均s[i] <- mean(標本)
  標本中央値s[i] <- median(標本)
}

c(mean(標本平均s), sd(標本平均s))
c(mean(標本中央値s), sd(標本中央値s))
