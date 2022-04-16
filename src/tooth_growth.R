df <- ToothGrowth
t_stat <- t.test(subset(df, supp == 'OJ' & dose == 0.5)$len, subset(df, supp == 'VC' & dose == 2.0)$len)$statistic

