library(rvest)
webpage = read_html("https://www.facebook.com/microlearnx")
# Using CSS selectors to scrape the heading section
heading = html_node(webpage, 'title')

# Converting the heading data to text
text = html_text(heading)
print(text)
class(text)
