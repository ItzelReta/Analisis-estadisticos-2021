# Itzel Reta Heredia
# 8/31/2021
# 2124992
############
#Laboratorio 6

teams = c('UtJ', 'PhS', 'DnN', 'LAC', 'DlM', 'PTB', 'LAL', 'MeG', 'GSW', 'SAS', 'NOP', 'SaK', 'MiT', 'OCT', 'HoR')

wins <- c(52, 51, 47, 47, 42, 42, 42, 38, 39, 33, 31, 31, 23, 22, 17)

losses <- c(20, 21, 25, 25, 30, 30, 30, 34, 33, 39, 41, 41, 49, 50, 55)

points_scored <- c(116.4, 115.3, 115.1, 114.0, 112.4, 116.1, 109.5, 113.3, 113.7, 111.1, 114.6, 113.7, 112.1, 105.0, 108.8)

points_against <- c(107.2, 109.5, 110.1, 107.8, 110.2, 114.3, 106.8, 112.3, 112.7, 112.8, 114.9, 117.4, 117.7, 115.6, 116.7)

rating <- c(8.97, 5.67, 4.82, 6.02, 2.26, 1.81, 2.77, 1.07, 1.10, -1.58 -0.20, -3.45, -5.25, -10.13, -7.50)

games_behind <- wins[1] - wins

win_loss_perc = wins / (wins + losses)
win_loss_perc

length(teams)
teams[length(teams)]
sort(wins, decreasing = TRUE)
rev(wins)

dat = data.frame(Teams = teams, Wins = wins, Losses = losses, WLperc = win_loss_perc)

standings <- data.frame(wins, losses, win_loss_perc, games_behind, points_scored, points_against)

sort(points_scored, decreasing = TRUE)

