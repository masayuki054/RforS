##
## 標本サイズ10の標本による，母平均の推定

標本 <- rnorm(n=10, mean=50, sd=10)
mean(標本)
##
## 母平均の推定
### 母集団 N(50, 10^2) から
### 標本サイズ 10の標本の標本平均
### 10000個の標本平均の頻度表を描く
this.mean <- 50
this.sd <- 10
this.counts <- 10000

for (this.sample_size in c(10,20,40,80,160)) {
  標本平均 <- numeric(length=this.counts) 
      
  for(i in 1:this.counts) {
1
    標本 <- rnorm(n=this.sample_size, mean=this.mean, sd=this.sd)
    標本平均[i] <- mean(標本)
  }
  cat("sample_size=", this.sample_size,
      "mean=", mean(標本平均),
      "var=", var(標本平均),
      "\n")
}
hist(標本平均,main="図4.12 標本抽出10,000回のときの標本平均の分布")
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
hist(標本平均,freq=FALSE, main="図4.13 標本平均の標本分布")
curve(dnorm(x, mean=this.mean, sd=this.sd/sqrt(this.sample_size)), add=TRUE, col="red")
this.sample_size <- 100
標本平均 <- numeric(length=this.counts)
      
for(i in 1:this.counts) {
  標本 <- rnorm(n=this.sample_size, mean=this.mean, sd=this.sd)
  標本平均[i] <- mean(標本)
}

mean(標本平均) ## 付加
var(標本平均)

誤差絶対値5以下 <- ifelse( abs(標本平均-50) <= 5, 1, 0) ## 付加
table(誤差絶対値5以下) ## 付加
##
## png(RforS-graphs/04-14.png)

hist(標本平均,freq=FALSE, main="図4.14 標本サイズを大きくしたときの標本平均の標本分布")
curve(dnorm(x,mean=50,sd=this.sd/sqrt(this.sample_size)),col="red",add=TRUE)
curve(dnorm(x,mean=50,sd=this.sd/sqrt(10)),col="blue",add=TRUE)
