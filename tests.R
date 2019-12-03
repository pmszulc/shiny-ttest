set.seed(1)
nA <- 100 # liczba przebadanych osob lekiem A
nB <- 100 # liczba przebadanych osob lekiem B
lekA <- rnorm(nA, mean = 1) # lek A obniza temperature srednio o 1 stopien
lekB <- rnorm(nB, mean = 2) # lek B obniza temperature srednio o 2 stopnie

wykres(lekA, lekB)
wykres(rnorm(100), rnorm(10))
wykres(rnorm(100), rnorm(2))
wykres(rnorm(100), rnorm(1))
wykres(rexp(100), rbeta(50, 1, 2))
lekA[7] <- NA
wykres(lekA, lekB)

test(lekA, lekB)
test(rnorm(100), rnorm(10))
test(rnorm(100), rnorm(2))
test(rnorm(100), rnorm(1))
test(rexp(100), rbeta(50, 1, 2))