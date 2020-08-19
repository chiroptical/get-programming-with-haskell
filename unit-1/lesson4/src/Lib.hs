module Lib where

import Data.List

ifEvenApply :: Integral a => (a -> a) -> a -> a
ifEvenApply f x = if even x
                     then f x
                     else x

-- Question 4.1 - Write a lambda function for cubing x and pass it to `ifEvenApply`

cubeIfEven :: Integral a => a -> a
cubeIfEven = ifEvenApply (\x -> x ^ 3)

author = ("Will", "Kurt")

names = [("Ian", "Curtis"),
         ("Bernard","Sumner"),
         ("Peter", "Hook"),
         ("Stephen","Morris")]

sorter :: (String, String) -> (String, String) -> Ordering
sorter (first, last) (first', last')
  | last == last' = compare first first'
  | otherwise = compare last last'

sorter' :: (String, String) -> (String, String) -> Ordering
sorter' (f, l) (f', l') = case compare l l' of
                            EQ -> compare f f'
                            x -> x

sortedByLastName = sortBy (\t t' -> compare (snd t) (snd t')) names
