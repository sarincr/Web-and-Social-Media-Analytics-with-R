#https://developers.facebook.com/tools/explorer
#http://pablobarbera.com/blog/archives/3.html
library(Rfacebook)
token = 'EAAIokK5CQBkBAJZBPtKwItKKGWW4JIqFOh90WDEwDoixmbUTwnUZAGfZAj3HtaJJVsyEzkbOIgZBldjv3FARvOL1AhzwOcZAA7jTsU4BBML8RlpZCJFBiPgrmnOLIBF0jk9UrXNuuAf7ZA5oxij2bu0UTZCSCl5hmiIgCyiuutMnejuXYpn8WNuv8ZAECJAqmfEig8eZBluo79ZBAZDZD'
me <-getUsers("me", token=token, private_info=TRUE)
fb_oauth=token
me$name
posts <- searchFacebook( string="facebook", token=fb_oauth, n=100 )
