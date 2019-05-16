{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE OverloadedStrings #-}

module BuildSteps where

import           Data.Aeson
import           Data.Text    (Text)
import           GHC.Generics

import qualified Builds

data BuildStep = NewBuildStep {
    step_name     :: Text
  , step_id :: Builds.BuildStepId
  , build :: Builds.Build
  } deriving (Show, Generic)

instance ToJSON BuildStep
instance FromJSON BuildStep


