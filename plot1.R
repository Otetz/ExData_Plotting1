load_data <- function(s = 66637, n = 2880) {
  dt <- read.csv("household_power_consumption.txt", header = FALSE, sep = ";", dec = ".", col.names = c("Date", "Time", "GActP", "GReactP", "V", "GInt", "SM1", "SM2", "SM3"), na.strings = "?", colClasses = c("character", "character", rep("numeric", times = 7)), nrows = n, skip = s)
  dt
}

make_graph1 <- function(dt) {
  hist(dt$GActP, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
  dev.copy(png, file = "ExData_Plotting1/plot1.png")
  dev.off()  
}

dt <- load_data()
make_graph1(dt)
