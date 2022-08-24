library(Rfacebook)
fb_oauth = 'EAAO19daln5MBADYYsiBKI8K6TlXWhIqpJED9EELY7RcYgRwY9sCBPgBiDjCeJnfWqxRYwpCHS1Ymz0zOK4UNaq6AYq3WZCinLjmxi9crn1B3SuUX11TiVKzZCMHZB0zEnnx6TSUPxHtkXvPcFxC7CqEBXil8ZAdnpv6jgipnyaGLy0PXpuOS2Pg3uMkpPjnxZCVD8GXiUvx7fBYN8AJWZC'
me <-getUsers("me", token=fb_oauth, private_info=TRUE)
#https://developers.facebook.com/tools/explorer
#http://pablobarbera.com/blog/archives/3.html
me$hometown
my_friends <- getFriends(token, simplify = TRUE)
head(my_friends$id)
my_friends_info <- getUsers(my_friends$id, token, private_info = TRUE)
table(my_friends_info$gender) 
posts <- searchFacebook(string = "India", token, n = 500)
page <- getPage("humansofnewyork", token, n = 5000)
