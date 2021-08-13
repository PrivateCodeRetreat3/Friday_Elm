{-
   This is a "stub" file.  It's a little start on your solution. It's not a
   complete solution though; you have to write some code.

   The module name is expected by the test program and must match the name of this
   file. It has to stay just the way it is.
-}


module HelloWorld exposing (..)

-- It's good style to include any types at the top level of your modules.


helloWorld : String
helloWorld =
    "Hello, World!"

-- multThree : number -> number -> number -> number
-- multThree x y z = x * y * z

-- applyTwice : (a -> a) -> a -> a
-- applyTwice f x = f (f x)
 
advance : (Int -> Int -> Bool) -> (Int -> Int -> Bool)
advance board =
    -- return a new function
    -- the counts the nieghbor of xy in the old function
    -- and detirmins if they are alive
    \x y-> let count = List.length <| List.filter (\n -> n) [
                    board (x-1) (y-1), 
                    board (x-1) (y-0), 
                    board (x-1) (y+1), 
                    board (x-0) (y-1), 
                    board (x-0) (y+1),
                    board (x+1) (y-1), 
                    board (x+1) (y-0), 
                    board (x+1) (y+1)
                    ]
                in
                count == 3 || (count == 2 && board x y)
