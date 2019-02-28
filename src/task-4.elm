
module TaskModule2 exposing (main, view)

import Html exposing (div, h1, text, p)
import Html.Attributes exposing (..)

toStrings s =
    String.fromInt s
listToStringL list =
    List.map toStrings list |> List.foldl (++) ""
listToStringR list =
    List.map toStrings list |> List.foldr (++) ""
isPalindrome list =
    if listToStringL list == listToStringR list then "yes!" else "no :("

view model =
    div [ class "content" ]
        [ h1 [] [ text "elementAt" ]
        , div [ id "items" ]
             (  [
                    p [] [text (isPalindrome [1,2,3,3,2,1]) ]
                  , p [] [text (isPalindrome [1,2,3]) ]
                  , p [] [text (isPalindrome [4,2,3,2,4]) ]
            ])
        ]


main =
    view "no model yet"
