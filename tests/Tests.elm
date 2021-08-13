module Tests exposing (..)

import Expect
import HelloWorld exposing (..)
import Test exposing (..)


grid : Test
grid =
    describe "grid"
        [
        test "something" <|
            \_ -> False |> Expect.equal True
        ]