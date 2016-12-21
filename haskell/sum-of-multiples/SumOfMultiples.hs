module SumOfMultiples (sumOfMultiples, sumOfMultiplesDefault, multiplesOf) where
  import Data.List (nub)

  multiplesOf :: Int -> [Int]
  multiplesOf n = zipWith (*) [1..] (repeat n)

  sumOfMultiples :: [Int] -> Int -> Int
  sumOfMultiples nums limit = sum (nub (concatMap (takeWhile (< limit)) (map multiplesOf nums)))

  sumOfMultiplesDefault :: Int -> Int
  sumOfMultiplesDefault =  sumOfMultiples [3, 5]
