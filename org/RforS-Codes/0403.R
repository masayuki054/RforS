(サイコロ6 <- ceiling(runif(n=6,min=0,max=6 )))
table(サイコロ6)
サイコロ60000 <- ceiling(runif(n=60000,min=0,max=6 ))
table(サイコロ60000)
barplot(c(2/3, 1/3), names.arg=c("男性", "女性"),
        xlab="性別", ylab="比率",
        main="図4.3 性別の母集団分布の例")
box(lty=1)
