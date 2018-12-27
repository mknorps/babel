module Main where

import qualified LibSpec as LS

import Test.Hspec

main = hspec $ do
  LS.spec
