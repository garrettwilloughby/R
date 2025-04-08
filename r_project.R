library(caret)

# Load the data
df <- read.csv("Advertising.csv")

head(df)

# Get rid of the column of indices by name
df$X <- NULL

# Remove NA values
nrow(df) - sum(complete.cases(df))
df <- df[complete.cases(df),]
nrow(df) - sum(complete.cases(df))

# Check for any "" values
apply(df == "", 2, sum)

# Get the summary statistics
summary(df)

# Histograms
par(mfrow = c(2, 2))
for (i in 1:ncol(df)) {
  hist(df[, i], main = paste0("Histogram of ", names(df)[i]), xlab = names(df)[i])
}
par(mfrow = c(1, 1))

# Display the first 10 observations
head(df, 10)

#
