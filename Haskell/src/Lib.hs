module Lib
    ( someFunc,
      q1, q2
    ) where


q1 :: Num a => a -> a ->a -> a -> a -> a
q1 d1 xi u0 u1 u2 = (u1 - u0 - d1 * (u2 - u0)) * xi + u0 * (1 - d1)

q2 :: Num a => a -> a ->a -> a -> a -> a
q2 d2 xi u0 u1 u2 = (u2 - u1 - d2 * (u2 - u0)) * xi + u1 - u0*d2

ustart :: Num a => a-> a-> a-> a 
ustart xi u0 u2= (u2-u0)*xi + u0

someFunc :: IO ()

someFunc = putStrLn "someFunc"

