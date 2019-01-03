module Lib
    ( someFunc,
      q1, q2,
      w
    ) where


q1 :: Num a => a -> a ->a -> a -> a -> a
q1 y0 y1 y2 d1 xi = (y1 - y0 - d1 * (y2 - y0)) * xi + y0 * (1 - d1)

q2 :: Num a => a -> a ->a -> a -> a -> a
q2 y0 y1 y2 d2 xi = (y2 - y1 - d2 * (y2 - y0)) * xi + y1 - y0*d2

ustart :: Num a => a-> a-> a-> a 
ustart xi y0 y2= (y2-y0)*xi + y0

w d1 d2 q1i q2i u xi
    | xi>=0.0 && xi<0.5  = d1 * u (2*xi) + q1i d1 (2*xi)
    | xi>=0.5 && xi<=1.0 = d2 * u (2*xi-1) + q2i d2 (2*xi)
    | otherwise = error $ show xi ++ " is not in [0,1]"
    

someFunc :: IO ()

someFunc = putStrLn "someFunc"

