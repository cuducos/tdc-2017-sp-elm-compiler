module Main exposing (..)

import Html exposing (Html, button, p, text)
import Html.Events exposing (onClick)


type alias User =
    { name : String
    , twitter : String
    }



-- getSocialMedia : User -> String
-- getSocialMedia user =
--     user.facebook


getSocialMedia : User -> String
getSocialMedia user =
    user.twitter



-- firstUserName : List User -> String
-- firstUserName users =
--     let
--         firstUser =
--             List.head users
--     in
--         firstUser.name


firstUserName : List User -> String
firstUserName users =
    case List.head users of
        Just user ->
            user.name

        Nothing ->
            "User not found"



-- tomorrow : String -> Int
-- tomorrow today =
--     (String.toInt today) + 1


tomorrow : String -> Int
tomorrow today =
    case String.toInt today of
        Ok day ->
            day + 1

        Err _ ->
            Debug.crash "TODO"


type Msg
    = Increment
    | Decrement
    | Double


update : Msg -> Int -> Int
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        Double ->
            model * 2


view : Int -> Html Msg
view model =
    p
        []
        [ button [ onClick Increment ] [ text "+" ]
        , text (toString model)
        , button [ onClick Decrement ] [ text "-" ]
        , button [ onClick Double ] [ text "2x" ]
        ]
