library(rvest)

webpage = read_html("https://www.r-project.org/about.html")

webpage
starwars <- read_html("https://rvest.tidyverse.org/articles/starwars.html")




films <- starwars %>% html_elements("section")


films


episode <- films %>% 
  html_element("h2") %>% 
  html_attr("data-id") %>% 
  readr::parse_integer()
episode



html <- read_html("https://en.wikipedia.org/w/index.php?title=The_Lego_Movie&oldid=998422565")

html


html %>% 
  html_element(".tracklist") %>% 
  html_table()


page <- read_html("https://en.wikipedia.org/w/index.php?title=The_Lego_Movie&oldid=998422565")
my.table = html_node(page, ".wikitable")
print(my.table)


my.table = html_table(my.table, fill = TRUE)
my.table
class(my.table)
colnames(my.table)



link <-paste0("https://en.wikipedia.org/w/index.php?title=The_Lego_Movie&oldid=998422565")
webpage <- read_html(link)
data <- html_nodes(webpage,".wikitable")
data
class(data)
table<- html_table(data)
table


#install.packages("writexl")

library(writexl)
write_xlsx(table, "people.xlsx")


link <-paste0("https://en.wikipedia.org/wiki/",
              "Student%27s_t-distribution")
webpage <- read_html(link)
data <- html_nodes(webpage,".wikitable")
table<- html_table(data[[1]],header = FALSE)

library(writexl)
write_xlsx(table, "people.xlsx")



library(XML)

url <- "http://www.bls.gov/web/empsit/cesbmart.htm"

# read in HTML data
tbls_xml <- readHTMLTable(url)

typeof(tbls_xml)
## [1] "list"

length(tbls_xml)



x <- read_html("https://www.amazon.in/gp/bestsellers/electronics/1805560031")

films <- x %>% html_elements("_cDEzb_p13n-sc-price_3mJ9Z")
films=html_text(films)

films
