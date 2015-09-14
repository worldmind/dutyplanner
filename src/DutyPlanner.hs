module DutyPlanner where

import Data.List( zip, permutations )
import Data.Time.Calendar

type Person   = String
type Persons  = [Person]
type DutyDays = [Day]
type DutyPlan = [(Day, Person)]
type RandomInteger = Int

makeDutyPlan :: Persons -> DutyDays -> RandomInteger -> DutyPlan
makeDutyPlan persons4duty days rndint = zip days unlimitedHumans
  where
    unlimitedHumans = cycle $ shuffle persons4duty rndint

shuffle :: Persons -> RandomInteger -> Persons
shuffle persons4duty rndint = permutations persons4duty !! rndint
