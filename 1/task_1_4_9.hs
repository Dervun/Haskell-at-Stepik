module Test ( twoDigitsToInt ) where

import Data.Char

twoDigitsToInt :: Char -> Char -> Int
twoDigitsToInt a b = if isDigit a && isDigit b then digitToInt a * 10 + digitToInt b else 100
