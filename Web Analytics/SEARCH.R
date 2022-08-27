library(pacman)
pacman::p_load(gtrendsR)

trend.data <- gtrends(
  c('life of pi book', 'nudge book', 'man booker prize'),
  geo='GB')

plot(trend.data)
