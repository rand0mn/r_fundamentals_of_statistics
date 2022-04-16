df <- mtcars
fisher_test <-fisher.test(df$am, df$vs)$p.value
