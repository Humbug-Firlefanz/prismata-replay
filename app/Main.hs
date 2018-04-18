module Main where

import Lib
import Control.Monad
import Happstack.Server (nullConf, simpleHTTP, toResponse, ok, dir, path)

main :: IO ()
main = simpleHTTP nullConf $ msum [ dir "replay" $ path $ \s -> ok $ "Replay: " ++ s
                                  , ok "Hello, World!"
                                  ]

