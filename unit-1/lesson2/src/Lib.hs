module Lib where

simple x = x

x = 2

calcChange owed given =
  let
    change = given - owed
  in 
    if change > 0
      then change
      else 0

doublePlusTwo x = doubleX + 2
  where
    doubleX = x + x

inc n = n + 1

double n = 2 * n

square n = n * n

f n =
  if even n
    then n - 2
    else 3 * n + 1
