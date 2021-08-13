module Tests exposing (..)

import Expect
import HelloWorld exposing (..)
import Test exposing (..)


grid : Test
grid =
    describe "grid"
        [
        test "empty grid stays empty" <|
            \_ -> advance(\x y -> False) 0 0  |> Expect.equal False
        ,test "square dies" <|
            \_ -> advance(\x y -> x==0 && y==0) 0 0  |> Expect.equal False
        ,test "blinker dies" <|
            \_ -> advance(\x y -> (0 <= x) && (x <= 2) && (y == 0)) 1 0  |> Expect.equal True
      ]