The solution involves using `take` to limit the number of elements processed from the infinite list before applying the `sum` function, preventing the stack overflow.

```haskell
import Data.List (iterate)

main :: IO ()
main = do
  let infiniteList = iterate (+1) 1
  let limitedList = take 1000 infiniteList  -- Limit the list to a finite number of elements
  print (sum limitedList) -- This will now work correctly
```

Alternatively, if you actually need to work with an infinite list for a computation (e.g., generating a stream of numbers), avoid functions like `sum` which require consuming the entire list.  Consider using functions that process the list incrementally.