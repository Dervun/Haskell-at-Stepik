module ClassesOfNumbers where

avg :: Int -> Int -> Int -> Double
avg a b c = fromIntegral (toInteger a + toInteger b + toInteger c) / 3
