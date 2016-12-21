module Bob (responseFor) where
  import Data.List (isSuffixOf)
  import Data.Char (isUpper, isAlpha, isSpace)

  trim :: String -> String
  trim = f . f
     where f = reverse . dropWhile isSpace

  stringToAlphaList :: String -> String
  stringToAlphaList = filter isAlpha

  responseFor :: String -> String
  responseFor s
    |   all isUpper (stringToAlphaList cleanSentence) &&
        not (null (stringToAlphaList cleanSentence)) = "Whoa, chill out!"
    | "?" `isSuffixOf` cleanSentence = "Sure."
    | cleanSentence == "" = "Fine. Be that way!"
    | otherwise = "Whatever."
    where cleanSentence = trim s
