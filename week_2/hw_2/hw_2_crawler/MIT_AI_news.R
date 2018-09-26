library(magrittr)
library(rvest)
library(XML)
result = list()
news_pages <- read_html("http://news.mit.edu/topic/artificial-intelligence2")
for (i in 1 : 20){ 
  item = paste(".views-row-",i, sep = "")
  result[i] = news_pages %>% html_nodes(".view-news-items") %>% html_node(item) %>% html_node(".dek") %>% html_text()
}
result

