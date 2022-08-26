library(rvest)
library(readr)
x <- read_html("https://www.amazon.in/gp/bestsellers/electronics/1805560031")
x
y <- x%>% html_elements("._cDEzb_p13n-sc-price_3mJ9Z")
ad <- x%>% html_elements("._cDEzb_p13n-sc-css-line-clamp-3_g3dy1")

z=html_text(y)
z

ad1=html_text(ad)
ad1

df=data.frame(z)
m <- sub('₹','',df)
m=parse_number(df$z)
m
dfn=data.frame(m,ad1)
dfn

library(writexl)
write_xlsx(dfn, "people.xlsx")
