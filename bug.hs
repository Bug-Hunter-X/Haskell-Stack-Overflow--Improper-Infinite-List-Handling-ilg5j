This Haskell code uses an infinite list, but doesn't handle it correctly, leading to a stack overflow.

```haskell
import Data.List (iterate)

main :: IO ()
main = do
  let infiniteList = iterate (+1) 1
  print (take 5 infiniteList) -- This will work
  print (sum infiniteList) -- This will cause a stack overflow
```