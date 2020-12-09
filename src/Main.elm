module Main exposing (..)

import Browser
import Html exposing (Html, text, div, h1, img)
import Html.Attributes exposing (src)

type alias Model =
  {}

type Msg
  = NoOp

init : ( Model, Cmd Msg )
init =
  ( {}, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  ( model, Cmd.none )


view : Model -> Html Msg
view model =
  div []
      [ img [ src "/logo.svg" ] []
      , h1 [] [ text "Your Elm App is working!" ]
      ]

main : Program () Model Msg
main =
  Browser.element
    { view = view
    , init = \_ -> init
    , update = update
    , subscriptions = always Sub.none
    }
