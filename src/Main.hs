import DutyPlanner (makeDutyPlan)
import Data.Time.Calendar (fromGregorian)
import System.Random

main = do
  let start   = (fromGregorian 2014 06 01)
  let end     = (fromGregorian 2014 06 15)
  let persons = ["ashrub","scripter","iph","kaktus"]
  rndNumber <- randomRIO (0, length persons)
  print $ makeDutyPlan persons [start..end] rndNumber
