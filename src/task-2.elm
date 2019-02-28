module TaskModule2 exposing (main, view)

import Html exposing (div, h1, text, p)
import Html.Attributes exposing (..)


dropAllExceptLastTwo list =
    List.drop ((List.length list) - 2) list

myButLast list =
    dropAllExceptLastTwo list
      |> List.head
      |> Maybe.map(\n -> [n])
      |> Maybe.withDefault ([p [] [ text "No items to display" ]])


view model =
    div [ class "content" ]
        [ h1 [] [ text "myButLast" ]
        , div [ id "items" ]
             (myButLast [
                  p [] [text "item 1 of 4"]
                , p [] [text "item 2 of 4"]
                , p [] [text "item 3 of 4"]
                , p [] [text "item 4 of 4"]
            ])
        ]


main =
    view "no model yet"
