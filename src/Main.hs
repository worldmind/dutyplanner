import DutyPlanner
import Data.Time.Calendar

main = print $ planDuty persons [start..end] where
  start   = (fromGregorian 2014 06 01)
  end     = (fromGregorian 2014 06 15)
  persons = ["ashrub","scripter","iph","kaktus"]

