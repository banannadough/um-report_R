# This next line is loading the tidyverse package
library(tidyverse)
# read in data in a csv file
gapminder_1997 <- read_csv(file = "data/gapminder_1997.csv")

add_two <- 2+2
add_two
name <- "Anna"
name <- "Brah"
(?filter)

Sys.Date()
getwd()
?read_csv()
sum(5,6)


?round()
round(3.14516)

round(x = 3.1415, digits = 2)
round(digits = 2, x = 3.1415)
read_excel()

# How to know which columns are available in your data set
colnames(gapminder_1997) 

# Using ggplot to make a plot
ggplot(data = gapminder_1997) +
  aes(x = gdpPercap) +
  labs(x = "GDP Per Capita") +
  aes(y = lifeExp) +
  labs(y = "lifeExp")

# You can include the variables in the same function, using comma to separate them
ggplot(data = gapminder_1997) +
  aes(x = gdpPercap, y = lifeExp) +
  labs(x = "GDP Per Capita", y = "Life Expectancy", title = "Do people in wealthy countries live longer?") +
  geom_point() +
  aes(color = continent) +
  scale_color_brewer(palette = "Set1") +
  aes(size = pop/1000000) +
  labs(continent = "Continent", size = "Population (in millions)")

# List all palettes
RColorBrewer::display.brewer.all()

ggplot(data = gapminder_1997) +
  aes(x = gdpPercap, y = lifeExp, 
      color = continent, 
      size = pop/1000000) +
  labs(x = "GDP Per Capita", y = "Life Expectancy", 
       title = "Do people in wealthy countries live longer?",
       continent = "Continent", 
       size = "Population (in millions)") +
  geom_point()  + 
  scale_color_brewer(palette = "Set1") +
  theme_minimal()

# Load in full gapminder dataset
gapminder_data <- read_csv("data/gapminder_data.csv")
# Use the below functions to view really big data, instead of preview
dim(gapminder_data)
head((gapminder_data))
glimpse(gapminder_data)

ggplot(data = gapminder_data) + 
  aes(x = year, y = lifeExp, color = continent,
      group = country) +
  geom_line(alpha = 0.3) +
  theme_minimal() + # gives you white background, x grey
  theme_classic() # gets rid of the grid lines

ggplot(data = gapminder_data) +
  aes(x = year, y = pop, color = continent,
      group = country) +
  geom_line()

ggplot(data = gapminder_data) +
  aes(x = pop, y = lifeExp, color = continent,
      group = country) +
  geom_line()


# Bloxplot of distribution of life expectancies per continent
ggplot(data = gapminder_data) +
  aes(x = continent, y = lifeExp) +
  geom_boxplot()

# Violin plot of distribution of life expectancies per continent
ggplot(data = gapminder_data) +
  aes(x = continent, y = lifeExp) +
  geom_violin() +
  geom_jitter(width = 0.1, alpha = 0.15) # jitter spreads off the points, X directly on top of each other

  
  
  
  
  
  

























