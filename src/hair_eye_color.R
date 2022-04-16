# HairEyeColor - таблица с данными, встроенными в R. Ваша задача в переменную
# red_men сохранить долю рыжеволосых (Red) от общего числа голубоглазых мужчин.


prop <- prop.table(HairEyeColor[ , ,'Male'], 2)
red_men <- prop['Red', 'Blue']


# Напишите число зеленоглазых женщин в наборе данных HairEyeColor.


green_eyes_fm_cnt <-  sum(HairEyeColor[ , 'Green', 'Female'])


# Постройте столбчатую диаграмму распределения цвета глаз по цвету волос только
# у женщин из таблицы HairEyeColor. По оси X должен идти цвет волос, цвет
# столбиков должен отражать цвет глаз. По оси Y - количество наблюдений.


library("ggplot2")
df <- as.data.frame(HairEyeColor)
obj <- ggplot(data = subset(df, Sex == 'Female'), aes(x = Hair, y = Freq, fill = Eye)) + 
  geom_bar(stat="identity", position = position_dodge()) + 
  scale_fill_manual(values=c("Brown", "Blue", "Darkgrey", "Darkgreen"))


# На основе таблицы HairEyeColor создайте ещё одну таблицу, в которой хранится
# информация о распределении цвета глаз у женщин-шатенок (Hair = 'Brown').
# Проведите тест равномерности распределения цвета глаз у шатенок и выведите
# значение хи-квадрата для этого теста.

chi_hair <- chisq.test(HairEyeColor['Brown', ,'Female'])
