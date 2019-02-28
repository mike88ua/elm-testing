module TaskModule1 exposing (main, view)


import Html exposing (div, h1, img, text, p)
import Html.Attributes exposing (..)

onlyLast list =
     List.reverse list
       |> List.head
       |> Maybe.map(\n -> [n])
       |> Maybe.withDefault ([p [] [ text "No image to display" ]])



view model =
    div [ class "content" ]
        [ h1 [] [ text "myLast function" ]
        , div [ id "thumbnails" ]
            (onlyLast [ img [ src "http://elm-in-action.com/1.jpeg" ] []
                , img [ src "http://elm-in-action.com/2.jpeg" ] []
                , img [ src "http://elm-in-action.com/3.jpeg" ] []
                ])
        ]


main =
    view "no model yet"
