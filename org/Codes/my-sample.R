this.mean = 10
this.sd = 3
this.tries = 10000

curve(dnorm(x, mean=this.mean, sd=this.sd), from=0, to=20)
sample <- rnorm(100,mean=10,sd=3)
summary (sample)
mus = rep(this.tries,0)
sds = rep(this.tries,0)

for (i in 1:n.tries) {
  sample <- rnorm(100,mean=10,sd=3)
  
  mus[i] = mean(sample)
  sds[i] = sqrt(var(sample))
}
dev.new()
hist(mus)
dev.new()
hist(sds)
