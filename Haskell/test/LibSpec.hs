module LibSpec (spec) where

import Control.Arrow
import Test.Hspec

import Lib


spec = do
  describe "Fractal library tests" pFractalLibSpec

pFractalLibSpec = do
  it "for q1"  $ do
    let q1l [x1, x2, x3, x4, x5] = q1 x1 x2 x3 x4 x5
    let correct = map (q1l *** \x -> x)
                [ ([0.5, 1, 1.0, 1.0, 1.0], 0.5)
                , ([0.5, 1, 1.0, 2.0, 3.0], 0.5) ]
    let wrong = map (q1l *** \x ->x)
                [ ([1, 0.5, 1, 1, 1], 3)
                , ([1, 0.5, 1, 1, 1], 1) ]
    mapM_ (`shouldSatisfy` uncurry (==)) correct
    mapM_ (`shouldNotSatisfy` uncurry (==)) wrong
