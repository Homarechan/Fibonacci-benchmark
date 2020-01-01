module Main where

foreign import ccall "fibonacci" fibonacci :: Int -> Int

main = print $ fibonacci 40
