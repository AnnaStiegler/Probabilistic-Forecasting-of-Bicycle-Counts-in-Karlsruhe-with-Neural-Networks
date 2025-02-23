# I want to check whether the missing data is because the meteorological data was missing or the bicycle counter data

rm(list = ls())
cwd = getwd()

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
# Install and load packages
install.packages("rdwd")
install.packages("httr")

library(rdwd)
library(httr)

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
# Get from URL ####

url <- "https://www.eco-visio.net/api/aladdin/1.0.0/pbl/publicwebpageplus/data/100126474?idOrganisme=4586&idPdc=100126474&interval=4&flowIds=100126474"

# Make a GET request to the URL and read the response content
response <- GET(url)
data_text <- content(response, "text")

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
# Data Processing ####

# remove first 2 and last 2 square brackets [[ ... ]]
txt <- substr(data_text, start=3, stop = nchar(data_text)-2)
# remove all quotation marks and backslashes
txt <- gsub('[\\"]', '', txt)
# split rows by comma and square brackets
rows <- unlist(strsplit(txt, "\\],\\["))

# save in dataframe
data <- data.frame(date = NA, bike_count = NA)
for(i in 1:length(rows)){
  data[i,] <- unlist(strsplit(rows[i], ","))
}

bike_df <- data.frame(date = as.Date(data$date, format = "%m/%d/%Y"), 
                      bike_count = as.numeric(data$bike_count))


# Generate a complete sequence of dates
complete_range <- seq.Date(from = min(bike_df$date), to = max(bike_df$date), by = "day")

# Find the missing dates by comparing the complete range with the actual dates in the dataset
missing_dates <- setdiff(complete_range, bike_df$date)

# Convert the numeric values back to Date objects
missing_dates <- as.Date(missing_dates, origin = "1970-01-01")

# Print the missing dates in a readable format
cat("Missing dates:\n")
print(missing_dates)
# Missing dates do not correspond to the missing data from the bicycle counter dataset.

bike_df$date <- as.Date(bike_df$date, format = "%Y-%m-%d")  # Change format if necessary
# Find the minimum date in the 'date' column of your dataframe
min_date <- min(bike_df$date)

# Print the minimum date
print(min_date)



