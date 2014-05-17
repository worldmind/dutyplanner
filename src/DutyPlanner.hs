module DutyPlanner where

import Data.List( zip )
import Data.Time.Calendar

type Person   = String
type Persons  = [Person]
type DutyDays = [Day]
type DutyPlan = [(Day, Person)]

planDuty :: Persons -> DutyDays -> DutyPlan
planDuty persons4duty days = zip days unlimitedHumans
  where
    unlimitedHumans = cycle persons4duty
