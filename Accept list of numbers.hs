import Data.Maybe
import System.Random (randomRIO)
maybeRead :: Read a => String -> Maybe a
maybeRead s = case reads s of
                  [(x,"")]    -> Just x
                  _           -> Nothing
getListFromString :: String -> Maybe [Integer]
getListFromString str = maybeRead $ "[" ++ str ++ "]"
main :: IO ()
-- show
main = do
  putStrLn "Enter a Your Lotto numbers (separated by comma):"
  input <- getLine
  let maybeList = getListFromString input in
      case maybeList of
          Just l  -> print (maybeList)
          Nothing -> error "Incorrect format. Try Again."


--enter your amount of winning numbers to be generated
randomList :: Int -> IO([Int])
randomList 0 = return []
randomList n = do
  r  <- randomRIO (1,32) --numbers generated from 1-32
  rs <- randomList (n-1)
  return (r:rs) 