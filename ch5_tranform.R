
#Chapter 5 Excercises
library(nycflights13)
library(tidyverse)


nycflights13::flights

#Veiw the data set
View(flights)

#Filter for dates
(jun8 <- filter(flights, month == 6, day == 8))

#Including a subset
jun_dec <- filter(flights, month %in% c(6,7,8,9,10,11,12))


#5.24
(delay_two_hours <- filter(flights, dep_delay>=2))
(houston_flights <- filter(flights, dest=="IAH" | dest=="HOU"))
(select_airlines <- filter(flights, carrier=="UA" | carrier=="DL" | carrier=="AA"))

(missed_dep <- filter(flights, is.na(dep_time)=="TRUE"))

#5.31
arrange(flights,desc(is.na(dep_time)))

#5.41
select(dep_time)
select(flights, contains("TIME"))
?select
?one_of()
