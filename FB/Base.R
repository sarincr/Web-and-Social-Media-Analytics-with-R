install.packages("rfacebookstat")
library(rfacebookstat)

fbAuth()
print(fbAuth(), show_token = T)
x=fbGetAdAccounts()
my_fb_bm   <- fbGetBusinessManagers()
my_fb_bm
my_fb_camp <- fbGetCampaigns()
my_fb_camp
my_fb_adsets <- fbGetAdSets()
my_fb_adsets
my_fb_ads    <- fbGetAds()
my_fb_ads
my_fb_ad_content <- fbGetAdCreative()
my_fb_ad_content
my_fb_page <- fbGetPages()
my_fb_apps <- fbGetApps()
fbGetAdAccountsConversions(
  accounts_id  = getOption("rfacebookstat.accounts_id"),
  api_version  = getOption("rfacebookstat.api_version"), 
  username     = getOption("rfacebookstat.username"),
  access_token = getOption("rfacebookstat.access_token"))
conversions <- fbGetAdAccountsConversions()
