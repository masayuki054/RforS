##
## 一様分布に従う6個の標本の抽出

(サイコロ6 <- ceiling(runif(n=6,min=0,max=6 )))

## 頻度表の作成
table(サイコロ6)
## 一様分布に従う6000個の標本の抽出
サイコロ60000 <- ceiling(runif(n=60000,min=0,max=6 )

## 頻度表の作成
table(サイコロ60000)
##
## (例) 男女比が 2:1 である母集団

barplot(c(2/3, 1/3), names.arg=c("男性", "女性"),
        xlab="性別", ylab="比率",
        main="図4.3 性別の母集団分布の例")
box(lty=1)
##
## 正規分布のグラフを描く

## png("graphs/norm_graphs.png",width=400,height=300) 出力を PNG形式のファイルへ

curve(dnorm(x), from=-4, to=4)        # 標準正規分布のグラフ， -4 から +4 の範囲
curve(dnorm(x,sd=2), add=TRUE)        # 平均0， 偏差2 の正規分布，上描き 
curve(dnorm(x,mean=1,sd=1), add=TRUE) # 平均1， 偏差1 の正規分布，上描き
##
## 平均50、標準偏差10の正規母集団からn＝5の標本を無作為抽出する
#### png("graphs/fig-04-07.png", width=400,height=300)

rnorm(n=5, mean=50, sd=10)       # 標本の抽出
hist(rnorm(n=5, mean=50, sd=10)) # 頻度表の描画
##
## 平均50、標準偏差10の正規母集団からn＝1000の標本を無作為抽出する

#### png("graphs/fig-04-08.png", width=400,height=300)
hist(rnorm(n=1000, mean=50, sd=10))
