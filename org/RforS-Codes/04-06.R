##
## 4.6 標本平均以外の標本分布
##

samples.no <- 10000   # いくつ標本を用いるか
sample.size <- 10     # ひとつの標本の中のデータの個数

this.mean <- 50       # 分布の平均
this.sd <- 10         # 分布の標準偏差

標本分散s <- numeric(samples.no) # 各々の標本の分散値の保存場所
不偏分散s <- numeric(samples.no) # 各々の標本の不偏分散値の保存場所

for (i in 1:samples.no) {
  標本 <- rnorm(n=sample.size, mean=this.mean, sd=this.sd) # ひとつの標本の生成
  標本分散s[i] <- mean((標本-mean(標本))^2) 
  不偏分散s[i] <- var(標本)
}

c(mean(標本分散s),sd(標本分散s))  # 標本分散達の平均と分散
c(mean(不偏分散s),sd(不偏分散s))  # 標本不偏分散達の平均と分散
標本分散誤差100以上 <- ifelse(標本分散s>=100,1,0)
不偏分散誤差100以上 <- ifelse(不偏分散s>=100,1,0)
table(標本分散誤差100以上)
table(不偏分散誤差100以上)
##
## 標本分散の頻度表
##
hist(標本分散s, breaks=seq(0,500,10), main="標本分散の分布")
##
## 標本不偏分散の頻度表
##
hist(不偏分散s, breaks=seq(0,500,10), main="不偏分散の分布")
##
## 4.6.2 中央値を母平均の推定量として使えるか
##
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
##
## 標本分散の頻度表
##
hist(標本平均s, breaks=seq(0,500,10), main="標本平均の分布")
##
## 標本中央値の頻度表
##
hist(標本中央値s, breaks=seq(0,500,10), main="標本中央値の分布")
