module Autocomplete where

import Html exposing (Html, Attribute, text, toElement, div, input)
import Html.Attributes exposing (..)
import Html.Events exposing (on, targetValue)
import Signal exposing (Address)
import String


-- MODEL

type alias Model = String


-- UPDATE

update newStr oldStr =
  newStr

-- VIEW

view : Address String -> String -> Html
view address string =
  div [ containerStyle ]
        [ input
          [ placeholder "Text to reverse"
          , value string
          , on "input" targetValue (Signal.message address)
          , myStyle
          ]
          []
        , div [ myStyle ] [ text (String.reverse string) ]
        ]
      
      
containerStyle : Attribute
containerStyle =
  style
    [ ("max-width", "1024px")
    , ("margin", "auto")
    ]
 
  

myStyle : Attribute
myStyle =
  style
    [ ("width", "25rem")
    , ("height", "1.5em")
    , ("padding", "0.2rem")
    , ("font-size", "2em")
    , ("text-align", "center")
    ]

