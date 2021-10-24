##
## 標本サイズ10の標本による，母平均の推定

標本 <- rnorm(n=10, mean=50, sd=10)
mean(標本)
##
## 母平均の推定
### 母集団 N(50, 10^2) から
### 標本サイズ 10の標本の標本平均
### 10000個の標本平均の頻度表を描く

this.loops = 10000
標本平均 <- numeric(length=this.loops) 
      
for(i in 1:this.loops) {
  標本 <- rnorm(n=10, mean=50, sd=10)
  標本平均[i] <- mean(標本)
}
      
hist(標本平均)
## 母平均 (50)からのズレが5以内か否かで振り分ける

誤差絶対値5以下 <- ifelse( abs(標本平均-50) <= 5, 1, 0)
table(誤差絶対値5以下)
##
## 10000個の標本平均の平均値

mean(標本平均)

## 10000個の標本平均の分散値

var(標本平均)
##
# png("graphs/fig-04-13.png", width=400, height=300)
##
hist(標本平均,freq=FALSE)
curve(dnorm(x,mean=50,sd=sqrt(10)), add=TRUE)
this.loops = 10000
this.sample_size <- 100
標本平均 <- numeric(length=this.loops)
      
for(i in 1:this.loops) {
  標本 <- rnorm(n=this.sample_size, mean=50, sd=10)
  標本平均[i] <- mean(標本)
}

hist(標本平均)

誤差絶対値5以下 <- ifelse( abs(標本平均-50) <= 5, 1, 0)
table(誤差絶対値5以下)

mean(標本平均)
var(標本平均)
hist(標本平均,freq=FALSE)
curve(dnorm(x,mean=50,sd=sqrt(10)), add=TRUE)
## 標本分散の頻度表

hist(標本分散s, breaks=seq(0,500,10))
## 標本不偏分散の頻度表

hist(不偏分散s, breaks=seq(0,500,10))
