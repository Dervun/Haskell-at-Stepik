module Test (seqA) where

seqA :: Integer -> Integer
seqA n | n == 0     = 1
       | n == 1     = 2
       | n == 2     = 3
       | n > 0      =
         let
             for :: Integer -> Integer -> Integer -> Integer -> Integer
             for a1 a2 a3 i | i == 2     = a3
                            | otherwise  = for a2 a3 (a2 + a3 - 2 * a1) (i - 1)
         in for 1 2 3 n
       | otherwise  = error "expected positive argument"
