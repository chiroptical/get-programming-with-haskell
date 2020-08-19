module Lib where

-- Question 3.1: Write a lambda function that doubles it's argument
-- (\x -> x * 2)

-- Question 3.2: Rewrite the following to use a lambda function
-- ```
-- doubleDouble x = dubs * 2
--   where
--     dubs = x * 2
-- ```

doubleDouble x = (\dubs -> dubs * 2) (x * 2)

-- Question 3.3 -- Redefine `overwrite` using only lambdas
-- ```
-- overwrite x = let x = 2
--               in
--                let x = 3
--                in
--                 let x = 4
--                 in
--                  x
-- ```                  
overwrite x = (\x -> (\x -> (\x -> x) 4) 3) 2 

counter x = let x = x + 1
            in
             let x = x + 1
             in
              x
