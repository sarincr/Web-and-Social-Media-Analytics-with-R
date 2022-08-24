#https://developers.facebook.com/tools/explorer
#http://pablobarbera.com/blog/archives/3.html
library(Rfacebook)
token = 'EAAH7KsjZCvIcBAOorK9H4QTxMuTc118RYf1PugQg1O0j20psZBHtfhSKVeRQETAfQZAh8C7wEZBRPXiyHXouemh9VaBZAdXBc3T2O73gya8CZArjmiZBshcFtlsjfiCDSJU4rZC25LCZBoWca1hlEwE0iFrrokz3P94ZAlqruY74c2ZCYmgArNdRYADPQ1W3pN3yxV2gQ6BSJC6EgZDZD'
me <-getUsers("me", token=token, private_info=TRUE)
fb_oauth=token
me$name
pages <- searchPages( string="Bean", token=fb_oauth, n=200)

