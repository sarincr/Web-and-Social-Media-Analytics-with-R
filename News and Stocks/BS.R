# importing packages
library(httr)
library(jsonlite)

# declaring url
url = "https://newsapi.org/v2/everything?q=tesla&from=2022-07-29&sortBy=publishedAt&apiKey=fc8cdc9180644b5a913a0ad5e35f6311"

# making http request and storing it in
# news variable
news = GET(url)

# converting raw data to character
data = rawToChar(news$content)

# converting character to json format
jsondata = fromJSON(data)

# printing news title
print(jsondata$articles$title)


# declaring url
url = "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=fc8cdc9180644b5a913a0ad5e35f6311"

# making http request and storing it in
# news variable
news = GET(url)

# converting raw data to character
data = rawToChar(news$content)

# converting character to json format
jsondata = fromJSON(data)

# printing news title
print(jsondata$articles$title)
