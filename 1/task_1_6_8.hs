module Sum (sum'n'count) where

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count n = (summer n, counter n)
    where
        summer :: Integer -> Integer
        summer n = sumHelper 0 (abs n)
            where
                sumHelper :: Integer -> Integer -> Integer
                sumHelper s n | n == 0     = s
                              | otherwise  = sumHelper (s + mod n 10) (div n 10)
        counter :: Integer -> Integer
        counter n | n == 0     = 1
                  | otherwise  = countHelper 0 (abs n)
            where
                countHelper :: Integer -> Integer -> Integer
                countHelper s n | n == 0     = s
                                | otherwise  = countHelper (s + 1) (div n 10)
