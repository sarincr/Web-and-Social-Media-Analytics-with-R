library(RGoogleAnalytics)

# Authorize the Google Analytics account
# This need not be executed in every session once the token object is created 
# and saved

ids="608910013885-aunu4qcasdk7sfu8p1bu68gkq0n957sr.apps.googleusercontent.com"
aut="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"
token <- Auth(ids, aut)

# Save the token object for future sessions
save(token,file="./token_file")

# In future sessions it can be loaded by running load("./token_file")

ValidateToken(token)

# Build a list of all the Query Parameters
query.list <- Init(start.date = "2022-08-13",
                   end.date = "2023-08-14",
                   dimensions = "ga:date,ga:pagePath,ga:hour,ga:medium",
                   metrics = "ga:sessions,ga:pageviews",
                   max.results = 10000,
                   sort = "-ga:date",
                   table.id = "ga:33093633")

# Create the Query Builder object so that the query parameters are validated
ga.query <- QueryBuilder(query.list)

