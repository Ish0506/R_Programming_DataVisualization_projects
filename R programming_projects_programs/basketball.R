
Games
rownames(Games)
colnames(Games)
Games["LeBronJames", "2012"]inutesPlayed/Games)
#plotting

matplot(t(FieldGoals), type="b", pch=15:18, col = c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)
matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col = c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)

Games
Games[1:3, 6:10]
Games[c(1,10)]
myplot<-function(data, rows)
  {
Data <- data[rows,,drop= F]
matplot(t(Data), type="b", pch=15:18, col = c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players[rows], col = c(1:4,6), pch = 15:18, horiz = F)
}
myplot(Salary, 1:2)














