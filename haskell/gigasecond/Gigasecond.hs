module Gigasecond (fromDay) where

import Data.Time.Clock (addUTCTime)

fromDay = addUTCTime 1000000000
