#install.packages("SentimentAnalysis")
library(SentimentAnalysis)
documents <- c("Wow, I really like the new light sabers!",
               "That book was excellent.",
               "R is a fantastic language.",
               "The service in this restaurant was miserable.",
               "This is neither positive or negative.",
               "The waiter forget about my dessert -- what poor service!")

# Analyze sentiment
sentiment <- analyzeSentiment(documents)

# Extract dictionary-based sentiment according to the QDAP dictionary
sentiment$SentimentQDAP
documents <- c("The NVDRS 2015 data showed that, among men of all races, men over 65 were the most likely to die of suicides (27.67 suicides per 100,000), closely followed by men 40–64 (27.10 suicides per 100,000). Men 20–39 (23.41 per 100,000) and 15–19 (13.81 per 100,000) were less likely to die of suicides.")

# Analyze sentiment
sentiment <- analyzeSentiment(documents)

# Extract dictionary-based sentiment according to the QDAP dictionary
sentiment$SentimentQDAP
