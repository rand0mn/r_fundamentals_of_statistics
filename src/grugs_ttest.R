# По всем испытуемым сравните показатель давления до начала лечения
# (Pressure_before) с показателем давления после лечения (Pressure_after) при
# помощи t - критерия для зависимых выборок.


df <- read.csv('https://stepic.org/media/attachments/lesson/11504/lekarstva.csv')
t.test(df$Pressure_before, df$Pressure_after, paired = T)
