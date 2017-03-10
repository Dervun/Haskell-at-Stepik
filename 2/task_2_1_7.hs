module Test (multiSecond) where

import Data.Function

multiSecond :: (a,Integer) -> (a,Integer) -> Integer
multiSecond = g `on` h 
    where
        g = (*)
        h = snd
