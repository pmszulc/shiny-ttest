wykres <- function(x, y) {
  # wykresy gestosci dla dwoch zmiennych
  # x -- 1. zmienna
  # y -- 2. zmienna
  nA <- length(x)
  nB <- length(y)
  df <- data.frame(
    temperatura = c(x, y),
    lek = rep(c("A", "B"), c(nA, nB))
  )
  ggplot(df, aes(temperatura, fill = lek)) +
    geom_density(alpha = 0.6)
}

test <- function(x, y) {
  # test t dla prob niezaleznych: srednie i p-wartosc
  # x -- 1. zmienna
  # y -- 2. zmienna
  nA <- length(x)
  nB <- length(y)
  df <- data.frame(
    temperatura = c(x, y),
    lek = rep(c("A", "B"), c(nA, nB))
  )
  res <- t.test(temperatura ~ lek, df)
  cat("Srednia A =", res$estimate[1], "\n")
  cat("Srednia B =", res$estimate[2], "\n")
  cat("p =", res$p.value)
}
