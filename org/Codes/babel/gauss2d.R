require("rgl")

rho <- 0.0
sigma <- 1.0 

# 確率密度関数

gauss_2d <- function(x,y) {   # 2次元正規分布の同時確率密度関数
   gauss_1d(x)*gauss_1d(y)
 }

gauss_2d_x <- function(x,y) {   # 2次元正規分布のxに関する周辺密度関数
   gauss_1d(x)
 }

gauss3d_y <- function(x,y) {   # 2次元正規分布のyにに関する周辺密度関数
   gauss_1d(y)
 }

gauss_1d <- function(x) {   # 1次元正規分布の確率密度関数
   1/(sqrt(2*pi))*exp(-(x^2)/2)
 }

# 3次元描画関数

draw_gauss <- function (x,y,ff,color,title,file,width=512,height=384) {

  png(file, width,height)

  z <- outer(x,y,ff) # [x_i, y_j, gauss(x_i, y_j)] 

  persp(x, y, z,
        xlim=c(-3,3), ylim=c(-3,3), zlim=c(0,0.5), 
        theta = 30, phi = 30, expand = 0.5,
        col = color, ticktype="detailed",
	main=title
  )
  dev.off()
  dev.new()
  persp(x, y, z, xlim=c(-3,3), ylim=c(-3,3), zlim=c(0,0.5), 
      new=FALSE, theta = 30, phi = 30, expand = 0.5, col = color, ticktype="detailed",
      main=title
  )
}

## x軸とy軸の全区間

x <- seq(-3,3,length=60)     # x 方向の分点
y <- seq(-3,3,length=60)     # y 方向の分点

## x軸の[0,1]区間
x_0_1 <- seq(0, 1, length=10)
## x軸の[0,2]区間
x_0_2 <- seq(0, 2, length=20)
## y軸の[-1,0]区間
y_m2_0 <- seq(-2, 0, length=20)
## 線を描くための微小幅の区間
xx <- seq(0,0.01,length=2)
yy <- seq(0,0.01,length=2)


# 2次元正規分布
draw_gauss(x,y, gauss3d, "lightblue", "gauss3d_同時", "graphs/gauss3d.png")

# f(x,[0,0.01])
draw_gauss(x,yy, gauss3d,  "lightblue", "gauss3d_P(X=x, Y=0)", "graphs/gauss3d.png")

# f([0,0.1], x)
draw_gauss(xx,y, gauss3d, "lightblue", "gauss3ld_P(X=0, Y=y)", "graphs/gauss3d.png")

draw_gauss(xx,y, gauss3d_y, "blue", "gauss3d_周辺_y", "graphs/gauss3d_marginal_x.png")
draw_gauss(x,yy, gauss3d_x, "red", "gauss3d_周辺_x", "graphs/gauss3d_marginal_y.png")

draw_gauss(x_0_1, y, gauss3d, "lightblue", "P([0..1, -2..0])", "graphs/gauss3d_x_y")
draw_gauss(x_0_2, y_m2_0, gauss3d, "lightblue", "P([0..1, -2..0])", "graphs/gauss3d_x_y")
