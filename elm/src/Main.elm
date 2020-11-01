module Main exposing (..)

import Html exposing ( Html, button, div, text)
-- import Browser exposing (sandbox)

initModel = 0

type Msg = Increment | Decrement

update msg model = 
  case msg of
    Increment -> 
      model + 1

    Decrement ->
      model - 1

view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]

main = Html { model = initModel, view = view, update = update }

{-- 
main : HTML () Model Msg
main = Browser.sandbox
       { init = initialModel
       , view = view
       , update = update
       }
--}
