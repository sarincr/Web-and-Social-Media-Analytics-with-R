#devtools::install_github("Tatvic/RGoogleAnalytics")
library(googleAnalyticsR)
ga_auth()
ga_account_list("ga4")
metadata <- ga_meta(version = "data")
ga_meta("data", propertyId = 328526423)
metadata
my_property_id <- 328526423
s="2020-03-31"
e="2022-12-12"
basic <- ga_data(
  my_property_id,
  metrics = c("activeUsers","sessions"),
  date_range = c(s,e)
)

basic
dimensions <- ga_data(
  my_property_id,
  metrics = c("activeUsers","sessions"),
  dimensions = c("date","city","dayOfWeek"),
  date_range = c(s,e)
)
dimensions

gad=ga_data(
  my_property_id, 
  metrics = NULL,
  dimensions = "eventName",
  date_range = c(s,e)
)
gad

gad1=events <- ga_data(
  my_property_id,
  metrics = c("eventCount"),
  dimensions = c("date","eventName"),
  date_range = c(s,e)
)

segs <- ga_segment_list()

## segment Ids and name:
segs[,c("name","id","definition")]
segment_for_call <- "gaid::-4"


simple_filter <- ga_data(
  my_property_id,
  metrics = c("activeUsers","sessions"),
  dimensions = c("date","city","dayOfWeek"),
  date_range = c(s,e),
  dim_filters = ga_data_filter(city=="Copenhagen"),
  limit = 100
)
ga_data_filter(city=="Copenhagen" | city == "London")
metric_filter <- ga_data(
  206670707,
  metrics = c("activeUsers","sessions"),
  dimensions = c("date","city","dayOfWeek"),
  date_range = c("2020-03-31", "2020-04-27"),
  met_filters = ga_data_filter(sessions>10),
  limit = 100
)

metric_filter

## numeric filter types
# numeric equal filter
ga_data_filter(sessions==5)

## --| sessions 
## ----numericFilter:  
## operation:  EQUAL | value:      5

# between numeric filter
ga_data_filter(sessions==c(5,6))

## --| sessions 
## ----betweenFilter:  
## from:  5  to:  6

# greater than numeric
ga_data_filter(sessions > 0)

## --| sessions 
## ----numericFilter:  
## operation:  GREATER_THAN | value:      0

# greater than or equal
ga_data_filter(sessions >= 1)

## --| sessions 
## ----numericFilter:  
## operation:  GREATER_THAN_OR_EQUAL | value:      1

# less than numeric
ga_data_filter(sessions < 100)

## --| sessions 
## ----numericFilter:  
## operation:  LESS_THAN | value:      100

# less than or equal numeric
ga_data_filter(sessions <= 100)



## string filter types
# begins with string
ga_data_filter(city %begins% "Cope")

## --| city 
## ----stringFilter:  
## value:  Cope | matchType:  BEGINS_WITH | caseSensitive:  TRUE

# ends with string
ga_data_filter(city %ends% "hagen")

## --| city 
## ----stringFilter:  
## value:  hagen | matchType:  ENDS_WITH | caseSensitive:  TRUE

# contains string
ga_data_filter(city %contains% "ope")

## --| city 
## ----stringFilter:  
## value:  ope | matchType:  CONTAINS | caseSensitive:  TRUE

# regex (full) string
ga_data_filter(city %regex% "^Cope")

## --| city 
## ----stringFilter:  
## value:  ^Cope | matchType:  FULL_REGEXP | caseSensitive:  TRUE

# regex (partial) string
ga_data_filter(city %regex_partial% "ope")

## --| city 
## ----stringFilter:  
## value:  ope | matchType:  PARTIAL_REGEXP | caseSensitive:  TRUE



# begins with string (case insensitive)
ga_data_filter(city %BEGINS% "cope")

## --| city 
## ----stringFilter:  
## value:  cope | matchType:  BEGINS_WITH | caseSensitive:  FALSE

# ends with string (case insensitive)
ga_data_filter(city %ENDS% "Hagen")

## --| city 
## ----stringFilter:  
## value:  Hagen | matchType:  ENDS_WITH | caseSensitive:  FALSE

# case insensitive exact match
ga_data_filter(city %==% "copeNHAGen")


vd=90822334
google_analytics(vd, 
                 date_range = c("2017-01-01", "2017-03-01"), 
                 metrics = "sessions", 
                 dimensions = "date")
