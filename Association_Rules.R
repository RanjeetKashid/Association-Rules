library(arules)

library(arulesViz)



########## Book ##########

book <- read.csv(file.choose())

rules_book <- apriori(as.matrix(book), parameter = list(support = 0.05, confidence = 0.7, minlen = 5))
inspect(rules_book)
plot(rules_book, method = "grouped")
plot(rules_book, method = "scatterplot")

rules_book <- apriori(as.matrix(book), parameter = list(support = 0.1, confidence = 0.5, minlen = 3))
inspect(rules_book)
inspect(sort(rules_book,by="lift"))
plot(rules_book, method = "grouped")

rules_book <- apriori(as.matrix(book), parameter = list(support = 0.08, confidence = 0.5, minlen = 4))
inspect(rules_book)
inspect(sort(rules_book,by="lift"))
plot(rules_book, method = "grouped")


########## Movies ##########

movies <- read.csv(file.choose())

rules_movies <- apriori(as.matrix(movies[,6:15]),parameter = list(support = 0.4, confidence = 0.5, minlen = 3))
inspect(rules_movies)
inspect(sort(rules_movies,by="lift"))
plot(rules_movies, method = "grouped")

rules_movies <- apriori(as.matrix(movies[,6:15]),parameter = list(support = 0.6, confidence = 0.5, minlen = 2))
inspect(rules_movies)
inspect(sort(rules_movies,by="lift"))
plot(rules_movies, method = "grouped")
