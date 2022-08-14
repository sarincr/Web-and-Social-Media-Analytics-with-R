#install.packages("SentimentAnalysis")
library(SentimentAnalysis)

documents <- c("This is a good thing!",
               "This is a very good thing!",
               "This is okay.",
               "This is a bad thing.",
               "This is a very bad thing.")
response <- c(1, 0.5, 0, -0.5, -1)

# Generate dictionary with LASSO regularization
dict <- generateDictionary(documents, response)

dict
write(dict, file="dictionary.dict")
dict <- read("dictionary.dict")
compareDictionaries(dict,
                    loadDictionaryQDAP())

sentiment <- predict(dict, documents)
sentiment

compareToResponse(sentiment, response)


test_documents <- c("This is neither good nor bad",
                    "What a good idea!",
                    "Not bad")
test_response <- c(0, 1, 1)

pred <- predict(dict, test_documents)


pred


compareToResponse(pred, test_response)
