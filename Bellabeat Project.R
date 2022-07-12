> library(tidyverse)
── Attaching packages ──────────────────────────────────────────────────────────────────────────────── tidyverse 1.3.1 ──
✔ ggplot2 3.3.6     ✔ purrr   0.3.4
✔ tibble  3.1.7     ✔ dplyr   1.0.9
✔ tidyr   1.2.0     ✔ stringr 1.4.0
✔ readr   2.1.2     ✔ forcats 0.5.1
── Conflicts ─────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
> library(skimr)
> library(lubridate)

Attaching package: ‘lubridate’

The following objects are masked from ‘package:base’:
  
  date, intersect, setdiff, union

> library(knitr)
> setwd/Bellabeat_Project
Error: object 'Bellabeat_Project' not found
> setwd/'Bellabeat_Project'
Error in setwd/"Bellabeat_Project" : 
  non-numeric argument to binary operator
> setwd/'D://Bellabeat_Project'
Error in setwd/"D://Bellabeat_Project" : 
  non-numeric argument to binary operator
> setwd("D:\\Bellabeat_Project")
Error in setwd("D:\\Bellabeat_Project") : cannot change working directory
> setwd("D:\\Bellabeat_Project")
Error in setwd("D:\\Bellabeat_Project") : cannot change working directory
> daily_activities <- read_csv("D:\\Bellabeat_Project\\dailyActivity_merged.csv")
Error: 'D:\Bellabeat_Project\dailyActivity_merged.csv' does not exist.
> setwd("D:\\Capstone_project1")
> setwd("D:\\Bellabeat")
> daily_activity <- read_csv("dailyActivity_merged.csv")
Rows: 940 Columns: 15                                                                                                                                       
── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
chr  (1): ActivityDate
dbl (14): Id, TotalSteps, TotalDistance, TrackerDistance, LoggedActivitiesDistance, VeryActiveDistance, ModeratelyAct...

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> minute_MET <- read_csv("minuteMETsNarrow_merged.csv")
Rows: 1325580 Columns: 3                                                                                                                                    
── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
chr (1): ActivityMinute
dbl (2): Id, METs

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> daily_calories <- read_csv('dailyCalories_merged.csv')
Rows: 940 Columns: 3                                                                                                                                        
── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
chr (1): ActivityDay
dbl (2): Id, Calories

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> 
  > daily_intensities <- read_cs
Error: object 'read_cs' not found
> daily_intensities <- read_csv('dailyIntensities_merged.csv')
Rows: 940 Columns: 10                                                                                                                                       
── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
chr (1): ActivityDay
dbl (9): Id, SedentaryMinutes, LightlyActiveMinutes, FairlyActiveMinutes, VeryActiveMinutes, SedentaryActiveDistance,...

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> daily_steps <- read_csv('dailySteps_merged.csv')
Rows: 940 Columns: 3                                                                                                                                        
── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
chr (1): ActivityDay
dbl (2): Id, StepTotal

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> heartrate <- read_csv('heartrate_seconds_merged.csv')
Rows: 2483658 Columns: 3                                                                                                                                    
── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
chr (1): Time
dbl (2): Id, Value

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> sleep_day <- read_csv("sleepDay_merged.csv")
Rows: 413 Columns: 5                                                                                                                                        
── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
chr (1): SleepDay
dbl (4): Id, TotalSleepRecords, TotalMinutesAsleep, TotalTimeInBed

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> glimpse(daily_activity)
Rows: 940
Columns: 15
$ Id                       <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 15…
$ ActivityDate             <chr> "4/12/2016", "4/13/2016", "4/14/2016", "4/15/2016", "4/16/2016", "4/17/2016", "4/18/20…
$ TotalSteps               <dbl> 13162, 10735, 10460, 9762, 12669, 9705, 13019, 15506, 10544, 9819, 12764, 14371, 10039…
$ TotalDistance            <dbl> 8.50, 6.97, 6.74, 6.28, 8.16, 6.48, 8.59, 9.88, 6.68, 6.34, 8.13, 9.04, 6.41, 9.80, 8.…
$ TrackerDistance          <dbl> 8.50, 6.97, 6.74, 6.28, 8.16, 6.48, 8.59, 9.88, 6.68, 6.34, 8.13, 9.04, 6.41, 9.80, 8.…
$ LoggedActivitiesDistance <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,…
$ VeryActiveDistance       <dbl> 1.88, 1.57, 2.44, 2.14, 2.71, 3.19, 3.25, 3.53, 1.96, 1.34, 4.76, 2.81, 2.92, 5.29, 2.…
$ ModeratelyActiveDistance <dbl> 0.55, 0.69, 0.40, 1.26, 0.41, 0.78, 0.64, 1.32, 0.48, 0.35, 1.12, 0.87, 0.21, 0.57, 0.…
$ LightActiveDistance      <dbl> 6.06, 4.71, 3.91, 2.83, 5.04, 2.51, 4.71, 5.03, 4.24, 4.65, 2.24, 5.36, 3.28, 3.94, 5.…
$ SedentaryActiveDistance  <dbl> 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.…
$ VeryActiveMinutes        <dbl> 25, 21, 30, 29, 36, 38, 42, 50, 28, 19, 66, 41, 39, 73, 31, 78, 48, 16, 52, 33, 41, 50…
$ FairlyActiveMinutes      <dbl> 13, 19, 11, 34, 10, 20, 16, 31, 12, 8, 27, 21, 5, 14, 23, 11, 28, 12, 34, 35, 15, 24, …
$ LightlyActiveMinutes     <dbl> 328, 217, 181, 209, 221, 164, 233, 264, 205, 211, 130, 262, 238, 216, 279, 243, 189, 2…
$ SedentaryMinutes         <dbl> 728, 776, 1218, 726, 773, 539, 1149, 775, 818, 838, 1217, 732, 709, 814, 833, 1108, 78…
$ Calories                 <dbl> 1985, 1797, 1776, 1745, 1863, 1728, 1921, 2035, 1786, 1775, 1827, 1949, 1788, 2013, 19…
> glimpse(minute_MET
+ 
+ 
> glimpse(minute_MET)
Rows: 1,325,580
Columns: 3
$ Id             <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, …
$ ActivityMinute <chr> "4/12/2016 12:00:00 AM", "4/12/2016 12:01:00 AM", "4/12/2016 12:02:00 AM", "4/12/2016 12:03:00 A…
$ METs           <dbl> 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 10, 10, 12, 10, 12, 10, 10, 10, 12, 12, 12, 12, …
> glimpse(daily_calories)
Rows: 940
Columns: 3
$ Id          <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 150…
$ ActivityDay <chr> "4/12/2016", "4/13/2016", "4/14/2016", "4/15/2016", "4/16/2016", "4/17/2016", "4/18/2016", "4/19/20…
$ Calories    <dbl> 1985, 1797, 1776, 1745, 1863, 1728, 1921, 2035, 1786, 1775, 1827, 1949, 1788, 2013, 1970, 2159, 189…
> glimpse(daily_intensities)
Rows: 940
Columns: 10
$ Id                       <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 15…
$ ActivityDay              <chr> "4/12/2016", "4/13/2016", "4/14/2016", "4/15/2016", "4/16/2016", "4/17/2016", "4/18/20…
$ SedentaryMinutes         <dbl> 728, 776, 1218, 726, 773, 539, 1149, 775, 818, 838, 1217, 732, 709, 814, 833, 1108, 78…
$ LightlyActiveMinutes     <dbl> 328, 217, 181, 209, 221, 164, 233, 264, 205, 211, 130, 262, 238, 216, 279, 243, 189, 2…
$ FairlyActiveMinutes      <dbl> 13, 19, 11, 34, 10, 20, 16, 31, 12, 8, 27, 21, 5, 14, 23, 11, 28, 12, 34, 35, 15, 24, …
$ VeryActiveMinutes        <dbl> 25, 21, 30, 29, 36, 38, 42, 50, 28, 19, 66, 41, 39, 73, 31, 78, 48, 16, 52, 33, 41, 50…
$ SedentaryActiveDistance  <dbl> 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.…
$ LightActiveDistance      <dbl> 6.06, 4.71, 3.91, 2.83, 5.04, 2.51, 4.71, 5.03, 4.24, 4.65, 2.24, 5.36, 3.28, 3.94, 5.…
$ ModeratelyActiveDistance <dbl> 0.55, 0.69, 0.40, 1.26, 0.41, 0.78, 0.64, 1.32, 0.48, 0.35, 1.12, 0.87, 0.21, 0.57, 0.…
$ VeryActiveDistance       <dbl> 1.88, 1.57, 2.44, 2.14, 2.71, 3.19, 3.25, 3.53, 1.96, 1.34, 4.76, 2.81, 2.92, 5.29, 2.…
> glimpse()
Error in str(x, width = get_width_glimpse(width), max.level = max.level,  : 
               argument "x" is missing, with no default
             > glimpse(daily_steps)
             Rows: 940
             Columns: 3
             $ Id          <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 150…
             $ ActivityDay <chr> "4/12/2016", "4/13/2016", "4/14/2016", "4/15/2016", "4/16/2016", "4/17/2016", "4/18/2016", "4/19/20…
$ StepTotal   <dbl> 13162, 10735, 10460, 9762, 12669, 9705, 13019, 15506, 10544, 9819, 12764, 14371, 10039, 15355, 1375
> glimpse(sleep_day)
Rows: 413
Columns: 5
$ Id                 <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 15039603…
$ SleepDay           <chr> "4/12/2016 12:00:00 AM", "4/13/2016 12:00:00 AM", "4/15/2016 12:00:00 AM", "4/16/2016 12:00:…
$ TotalSleepRecords  <dbl> 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,…
$ TotalMinutesAsleep <dbl> 327, 384, 412, 340, 700, 304, 360, 325, 361, 430, 277, 245, 366, 341, 404, 369, 277, 273, 24…
$ TotalTimeInBed     <dbl> 346, 407, 442, 367, 712, 320, 377, 364, 384, 449, 323, 274, 393, 354, 425, 396, 309, 296, 26…
> summary(daily_activity)
       Id            ActivityDate         TotalSteps    TotalDistance    TrackerDistance  LoggedActivitiesDistance
 Min.   :1.504e+09   Length:940         Min.   :    0   Min.   : 0.000   Min.   : 0.000   Min.   :0.0000          
 1st Qu.:2.320e+09   Class :character   1st Qu.: 3790   1st Qu.: 2.620   1st Qu.: 2.620   1st Qu.:0.0000          
 Median :4.445e+09   Mode  :character   Median : 7406   Median : 5.245   Median : 5.245   Median :0.0000          
 Mean   :4.855e+09                      Mean   : 7638   Mean   : 5.490   Mean   : 5.475   Mean   :0.1082          
 3rd Qu.:6.962e+09                      3rd Qu.:10727   3rd Qu.: 7.713   3rd Qu.: 7.710   3rd Qu.:0.0000          
 Max.   :8.878e+09                      Max.   :36019   Max.   :28.030   Max.   :28.030   Max.   :4.9421          
 VeryActiveDistance ModeratelyActiveDistance LightActiveDistance SedentaryActiveDistance VeryActiveMinutes
 Min.   : 0.000     Min.   :0.0000           Min.   : 0.000      Min.   :0.000000        Min.   :  0.00   
 1st Qu.: 0.000     1st Qu.:0.0000           1st Qu.: 1.945      1st Qu.:0.000000        1st Qu.:  0.00   
 Median : 0.210     Median :0.2400           Median : 3.365      Median :0.000000        Median :  4.00   
 Mean   : 1.503     Mean   :0.5675           Mean   : 3.341      Mean   :0.001606        Mean   : 21.16   
 3rd Qu.: 2.053     3rd Qu.:0.8000           3rd Qu.: 4.782      3rd Qu.:0.000000        3rd Qu.: 32.00   
 Max.   :21.920     Max.   :6.4800           Max.   :10.710      Max.   :0.110000        Max.   :210.00   
 FairlyActiveMinutes LightlyActiveMinutes SedentaryMinutes    Calories   
 Min.   :  0.00      Min.   :  0.0        Min.   :   0.0   Min.   :   0  
 1st Qu.:  0.00      1st Qu.:127.0        1st Qu.: 729.8   1st Qu.:1828  
 Median :  6.00      Median :199.0        Median :1057.5   Median :2134  
 Mean   : 13.56      Mean   :192.8        Mean   : 991.2   Mean   :2304  
 3rd Qu.: 19.00      3rd Qu.:264.0        3rd Qu.:1229.5   3rd Qu.:2793  
 Max.   :143.00      Max.   :518.0        Max.   :1440.0   Max.   :4900  
> summary(sleep_day)
       Id              SleepDay         TotalSleepRecords TotalMinutesAsleep TotalTimeInBed 
 Min.   :1.504e+09   Length:413         Min.   :1.000     Min.   : 58.0      Min.   : 61.0  
 1st Qu.:3.977e+09   Class :character   1st Qu.:1.000     1st Qu.:361.0      1st Qu.:403.0  
 Median :4.703e+09   Mode  :character   Median :1.000     Median :433.0      Median :463.0  
 Mean   :5.001e+09                      Mean   :1.119     Mean   :419.5      Mean   :458.6  
 3rd Qu.:6.962e+09                      3rd Qu.:1.000     3rd Qu.:490.0      3rd Qu.:526.0  
 Max.   :8.792e+09                      Max.   :3.000     Max.   :796.0      Max.   :961.0  
> summary(minute_MET)
       Id            ActivityMinute          METs       
 Min.   :1.504e+09   Length:1325580     Min.   :  0.00  
 1st Qu.:2.320e+09   Class :character   1st Qu.: 10.00  
 Median :4.445e+09   Mode  :character   Median : 10.00  
 Mean   :4.848e+09                      Mean   : 14.69  
 3rd Qu.:6.962e+09                      3rd Qu.: 11.00  
 Max.   :8.878e+09                      Max.   :157.00  
> length(unique(daily_activity$Id))
[1] 33
> length(unique(minute_mets$Id))
Error in unique(minute_mets$Id) : object 'minute_mets' not found
> length(unique(minute_MEt$Id))
Error in unique(minute_MEt$Id) : object 'minute_MEt' not found
> length(unique(minute_MET$Id))
[1] 33
> length(unique(sleep_day$Id))
[1] 24
> length(unique(heartrate$Id))
[1] 14
> daily_activity[duplicated(daily_activity),]
# A tibble: 0 × 15
# … with 15 variables: Id <dbl>, ActivityDate <chr>, TotalSteps <dbl>, TotalDistance <dbl>, TrackerDistance <dbl>,
#   LoggedActivitiesDistance <dbl>, VeryActiveDistance <dbl>, ModeratelyActiveDistance <dbl>, LightActiveDistance <dbl>,
#   SedentaryActiveDistance <dbl>, VeryActiveMinutes <dbl>, FairlyActiveMinutes <dbl>, LightlyActiveMinutes <dbl>,
#   SedentaryMinutes <dbl>, Calories <dbl>
> minute_mets[duplicated(minute_mets),]
Error: object 'minute_mets' not found
> minute_mets[duplicated(minute_MET),] 
Error: object 'minute_mets' not found
> minute_MET[duplicated(minute_MET),] 
# A tibble: 0 × 3
# … with 3 variables: Id <dbl>, ActivityMinute <chr>, METs <dbl>
> sleep_day[duplicated(sleep_day),]
# A tibble: 3 × 5
          Id SleepDay              TotalSleepRecords TotalMinutesAsleep TotalTimeInBed
       <dbl> <chr>                             <dbl>              <dbl>          <dbl>
1 4388161847 5/5/2016 12:00:00 AM                  1                471            495
2 4702921684 5/7/2016 12:00:00 AM                  1                520            543
3 8378563200 4/25/2016 12:00:00 AM                 1                388            402
> sleep_day <- dplyr::distinct(sleep_day)
> daily_activity$ActivityDate = as.POSIXct(daily_activity$ActivityDate,tz=Sys.timezone(), format = "%m/%d/%Y")
> sleepDay$SleepDay = as.POSIXct(sleepDay$SleepDay ,tx=Sys.timezone(), format = "%m/%d/%Y %I:%M:%S %p")
Error in as.POSIXct(sleepDay$SleepDay, tx = Sys.timezone(), format = "%m/%d/%Y %I:%M:%S %p") : 
  object 'sleepDay' not found
> sleep_day$SleepDay = as.POSIXct(sleep_day$SleepDay ,tx=Sys.timezone(), format = "%m/%d/%Y %I:%M:%S %p")
> minute_MET$ActivityMinute =  as.POSIXct(minute_mets$ActivityMinute,tz=Sys.timezone(), format = "%m/%d/%Y %I:%M:%S %p")
Error in as.POSIXct(minute_mets$ActivityMinute, tz = Sys.timezone(), format = "%m/%d/%Y %I:%M:%S %p") : 
  object 'minute_mets' not found
> minute_MET$ActivityMinute =  as.POSIXct(minute_MET$ActivityMinute,tz=Sys.timezone(), format = "%m/%d/%Y %I:%M:%S %p")
> minute_MET$Standard_METs = minute_MET$METs/10
> minute_MET$ActivityMinute <- format(as.POSIXct(minute_MET$ActivityMinute,format='%m/%d/%Y %H:%M:%S'),format='%m/%d/%Y')
> daily_MET <- minute_MET
> daily_MET <- minute_MET %>% 
+     group_by(Id, ActivityMinute) %>% 
+     summarize(METs_sum=sum(Standard_METs))
`summarise()` has grouped output by 'Id'. You can override using the `.groups` argument.
> daily_MET$ActivityDay = as.POSIXct(daily_MET$ActivityMinute,tz=Sys.timezone(), format = "%m/%d/%Y")
> daily_MET$METs_sum = as.integer(daily_MET$METs_sum)
> daily_MET = select(daily_MET, -Standard_METs)
Error in `select()`:
! Can't subset columns that don't exist.
✖ Column `Standard_METs` doesn't exist.
Run `rlang::last_error()` to see where the error occurred.
> daily_MET = select(daily_MET, -ActivityMinute)
> glimpse(daily_MET)
Rows: 934
Columns: 3
Groups: Id [33]
$ Id          <dbl> 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 1503960366, 150…
$ METs_sum    <int> 2524, 2285, 2258, 2219, 2369, 2197, 2443, 2588, 2271, 2257, 2324, 2478, 2274, 2559, 2505, 2745, 241…
$ ActivityDay <dttm> 2016-04-12, 2016-04-13, 2016-04-14, 2016-04-15, 2016-04-16, 2016-04-17, 2016-04-18, 2016-04-19, 20…
> daily_activity %>%
+     ggplot() +
+     aes(x = TotalSteps, y = Calories) +
+     geom_point(shape = "circle", size = 0.5, colour = "#ffa600") +
+     geom_smooth(span = 0.75) +
  +     labs(
    +         title = "Relation between Total Steps VS Calories",
    +         caption = "Increase in Total Steps increases the number of calories"
    +     )
`geom_smooth()` using method = 'loess' and formula 'y ~ x'
> daily_activity %>%
  +     ggplot() +
  +     aes(x = TotalDistance, y = Calories) +
  +     geom_point(shape = “circle”, size = 0.5, colour = “#ffa600”) +
                   Error: unexpected input in:
                     "    aes(x = TotalDistance, y = Calories) +
    geom_point(shape = “"
                   >                geom_smooth(span = 0.75) +
                     +                    labs(
                       +                        title = “Relation between Total Distance VS Calories”,
                       Error: unexpected input in:
                         "                   labs(
                       title = “"
                       >                        caption = “Increase in Total Distance increases in number of calories”
                       Error: unexpected input in "                       caption = “"
                       >                    )
                   Error: unexpected ')' in "                   )"
                   > daily_activity %>%
                     +     ggplot() +
                     +     aes(x = TotalDistance, y = Calories) +
                     +     geom_point(shape = “circle”, size = 0.5, colour = “#ffa600”) +
                                      Error: unexpected input in:
                                        "    aes(x = TotalDistance, y = Calories) +
    geom_point(shape = “"
                                      >                geom_smooth(span = 0.75) +
                                        +                    labs(title = "Relation between Total Distance VS Calories",caption = "Increase in Total Distance increases in number of calories")
                                      Error in `+.gg`:
                                        ! Cannot add ggproto objects together. Did you forget to add this object to a ggplot object?
                                        Run `rlang::last_error()` to see where the error occurred.
                                      > daily_activity %>%
                                        +     ggplot() +
                                        +     aes(x = TotalDistance, y = Calories) +
                                        +     geom_point(shape = "circle", size = 0.5, colour = "#ffa600") +
                                        +     geom_smooth(span = 0.75) +
                                        +     labs(
                                          +         title = "Relation between Total Distance VS Calories",
                                          +         caption = "Increase in Total Distance Increases the number of calories"
                                          +     )
                                      `geom_smooth()` using method = 'loess' and formula 'y ~ x'
                                      > Frame_1 <- merge(daily_activity, daily_MET, 
                                                         +                  by.x = c("Id", "ActivityDate"), 
                                                         +                  by.y = c("Id", "ActivityDay"), 
                                                         +                  all.x = TRUE, all.y = FALSE)
                                      > Frame_1 %>%
                                        +     ggplot() +
                                        +     aes(x = TotalSteps, y = METs_sum ) +
                                        +     geom_point(shape = "circle", size = 0.5, colour = "#ffa600") +
                                        +     geom_smooth(span = 0.75) +
                                        +     labs(
                                          +         y = "sum of METs",
                                          +         title = "Relation between Total Steps VS METs",
                                          +         caption = "Increase in Total Steps shows increases in METs"
                                          +     )
                                      `geom_smooth()` using method = 'loess' and formula 'y ~ x'
                                      Warning messages:
                                        1: Removed 6 rows containing non-finite values (stat_smooth). 
                                      2: Removed 6 rows containing missing values (geom_point). 
                                      > Frame_1 %>%
                                        +     ggplot() +
                                        +     aes(x = TotalDistance , y = METs_sum ) +
                                        +     geom_point(shape = "circle", size = 0.5, colour = "#ffa600") +
                                        +     geom_smooth(span = 0.75) +
                                        +     labs(
                                          +         y = "sum of METs",
                                          +         title = "Relation between Total distance VS METs",
                                          +         caption = "Increase in Total Distance shows increases in METs"
                                          +     )
                                      `geom_smooth()` using method = 'loess' and formula 'y ~ x'
                                      Warning messages:
                                        1: Removed 6 rows containing non-finite values (stat_smooth). 
                                      2: Removed 6 rows containing missing values (geom_point). 
                                      > sleepDay$Id <- as.character(sleepDay$Id)
                                      Error: object 'sleepDay' not found
                                      > # new dataframe.
                                        > Frame_2 <- sleepDay %>%
                                        +     filter(TotalMinutesAsleep <420)
                                      Error in filter(., TotalMinutesAsleep < 420) : 
                                        object 'sleepDay' not found
                                      > glimpse(Frame_2)
                                      Error in glimpse(Frame_2) : object 'Frame_2' not found
                                      > #bar chart plotting
                                        > ggplot(data=Frame_2) +
                                        +     geom_bar(mapping = aes(x=Id)) +
                                        +     labs(
                                          +         x = "Users",
                                          +         y = "No. of days",
                                          +         title = "Users sleeping less then 7 hours"
                                          +     ) +
                                        +     theme(axis.text.x = element_text(angle = 90,hjust=1.0,))
                                      Error in ggplot(data = Frame_2) : object 'Frame_2' not found
                                      > sleepDay$Id <- as.character(sleepDay$Id)
                                      Error: object 'sleepDay' not found
                                      > sleep_day$Id <- as.character(sleepDay$Id)
                                      Error: object 'sleepDay' not found
                                      > sleep_day$Id <- as.character(sleep_day$Id)
                                      > Frame_2 <- sleepDay %>%
                                        +     filter(TotalMinutesAsleep <420)
                                      Error in filter(., TotalMinutesAsleep < 420) : 
                                        object 'sleepDay' not found
                                      > Frame_2 <- sleep_day %>%
                                        +     filter(TotalMinutesAsleep <420)
                                      > ggplot(data=Frame_2) +
                                        +     geom_bar(mapping = aes(x=Id)) +
                                        +     labs(
                                          +         x = "Users",
                                          +         y = "No. of days",
                                          +         title = "Users sleeping less then 7 hours"
                                          +     ) +
                                        +     theme(axis.text.x = element_text(angle = 90,hjust=1.0,))
                                      > Frame_3 <- sleep_day %>%
                                        +     filter(TotalMinutesAsleep >420)
                                      > ggplot(data=Frame_3) +
                                        +     geom_bar(mapping = aes(x=Id)) +
                                        +     labs(
                                          +         x = "Users",
                                          +         y = "No. of days",
                                          +         title = "Users sleeping more then 7 hours"
                                          +     ) +
                                        +     theme(axis.text.x = element_text(angle = 90,hjust=1.0,))
                                      > weekly_calories <- daily_activity %>% 
                                        +     mutate(week = lubridate::week(ymd(ActivityDate))) %>%  
                                        +     select(Id,week,Calories) %>% 
                                        +     group_by(Id,week) %>%  
                                        +     summarize(WeeklyCalories = sum(Calories)) %>% 
                                        +     arrange(Id,week)
                                      `summarise()` has grouped output by 'Id'. You can override using the `.groups` argument.
                                      > ggplot(data = weekly_calories, aes(week, WeeklyCalories),group = 1) +
                                        +     geom_line(color = "red") +
                                        +     geom_point(color="red") + 
                                        +     labs(title = "Weekly calories",
                                                   +          y = "Calories", x = "Week") + 
                                        +     facet_wrap(~ Id ) + 
                                        +     theme(plot.title = element_text(hjust = 1.0))