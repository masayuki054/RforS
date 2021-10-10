stat_test2 <- c(15, 9, 18, 14, 18,
  13, 8, 8, 12, 7,
  10, 6, 11, 7, 12,
  10, 7, 3, 5, 7)

method <- c(rep("A", 5),
  rep("B", 5),
  rep("C", 5),
  rep("D", 5))

method2 <- factor(method)

# 条件ごとに箱ひげ図を描く
boxplot(stat_test2 ~ method2, ylim=c(0, 20), xlab="方法", ylab="得点")

# 全平均(N = 20)
grand <- mean(stat_test2)

# テキストでの「全データ」
#　もとのデータを並べた行列．４つの列は４つの条件に対応
data_mat <- matrix(stat_test2, nrow=5, ncol=4)

# テキストでの「全平均行列」
# すべての要素が全平均である行列
grand_mat <- matrix(rep(grand, 20), nrow=5, ncol=4)

# テキストでの「群平均行列」
# 各列には，対応する条件での平均値が並ぶ
colmean_mat <- matrix(rep(colMeans(data_mat),5),
  nrow=5, ncol=4, byrow=T)

# テキストでの「群間」
# 各列には，対応する条件での効果（の推定値）が並ぶ
effect_mat <- colmean_mat - grand_mat

# テキストでの「群内」
# 各条件での，その条件の平均値と各データとの差
error_mat <- data_mat - colmean_mat

# データ行列の分解を確認する
# data_mat = grand_mat + effect_mat + error_mat
data_mat
grand_mat + effect_mat + error_mat

# 全平方和
SS <- sum((data_mat - grand_mat)^2)
# 級間平方和
SS_between <- sum(effect_mat^2)
# 級内平方和
SS_within <- sum(error_mat^2)
# 平方和の分解を確認する
# SS = SS_between + SS_within
SS
SS_between + SS_within
