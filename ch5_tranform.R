
#Chapter 5 Excercises
library(nycflights13)
library(tidyverse)


nycflights13::flights

#Veiw the data set
View(flights_sml)

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

#5.5
flights_sml <- select(flights, 
                      year:day, 
                      ends_with("delay"), 
                      distance, 
                      air_time
)
mutate(flights_sml,
       gain = arr_delay - dep_delay,
)

select(flights_sml, gain)

view(flights_sml)

#5.52
mutate(flights, 
       dep_min = (dep_time %/% 100)*60 + dep_time %% 100, 
       sched_dep_min = (sched_dep_time %/% 100) *60 + sched_dep_time %% 100)

flights_fl <- mutate(flights, 
       fl_time=((arr_time %/% 100)*60 + arr_time %% 100) 
              -((dep_time %/% 100)*60 + dep_time %% 100))


select(flights_fl, arr_time, dep_time, fl_time)
 
View(flights)

?min_rank

dep_delay <- select(flights,dep_delay)

min_rank(dep_delay)

#5.6
not_cancelled <- flights %>% 
  filter(!is.na(dep_delay), !is.na(arr_delay))

