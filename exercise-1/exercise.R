# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
points <- c(9, 12, 27, 46)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
allowed_points <- c(17, 9, 33, 18)

# Combine your two vectors into a dataframe called `games`
games <- data.frame(points, allowed_points)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games[,"diff"] <- c(points - allowed_points)

# Create a new column "won" which is TRUE if the Seahawks won the game
games[,"won"] <- c(points > allowed_points)

# Create a vector of the opponent names corresponding to the games played
opponent <- c("packers", "49ers", "titans", "colts")

# Assign your dataframe rownames of their opponents
assign(row.names.data.frame(games), opponent)

# View your data frame to see how it has changed!
View(games)
