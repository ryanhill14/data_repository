data <- c(1, 2, 4)
data_doubled <- 2*c(1, 2, 4)
data_doubled

# Aiming to plot this data
# Correct, this would be a good idea

# ---- Generate toy data ----
set.seed(123)                     # for reproducibility
x <- 1:50                         # x-axis values
y <- cumsum(rnorm(50, 0, 1))      # random walk for something visually interesting
toy_data <- data.frame(x, y)

# ---- Plot and save as PNG ----
png("toy_line_plot.png", width = 800, height = 600)   # open PNG device

plot(
  toy_data$x, toy_data$y,
  type = "l",
  col = "steelblue",
  lwd = 2,
  xlab = "Index",
  ylab = "Value",
  main = "Toy Data Line Plot"
)

dev.off()   # close PNG device
