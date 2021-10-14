# Simple Haskell functions by Emil Hultcrantz

Proposed solutions to the Kattis problem: [Uppvärmning](https://kth.kattis.com/problems/kth.progp.warmup).

## Questions

### 1. Why can you write expresions like this in Haskell

```haskell
let evenNumbers = [ 2 * n | n <- [1..]]
print (take 1000000 evenNumbers)
```

Becasue Haskell is a lazyly executed language.

### 2. What does recursion mean?

>"a computer programming technique involving the use of a procedure, subroutine, function, or algorithm that calls itself one or more times until a specified condition is met at which time the rest of each repetition is processed from the last one called to the first" - Merriam-Webster Dictionary

### 3. Why does the following function work in languages like Haskell and not in e.g. Javascript

```haskell
sum :: Integral n, Num n => n -> n -> n
sum s 0 = s
sum s n = sum (s + n) (pred n)
```

```javascript
function sum(s, n) {
     if(n == 0){
         return s;
     } else{
         return sum(s + n, n - 1);
     }
}
```

It does work to a certain extent in javascript as well but once the numbers grow large the recursion depth of javascript will be met. In Haskell that depth is **much** larger.

This is due to how Haskell creates a function tree and then start at the end of the recursion tree collapsing it as it goes along. Javascript on the other hand calculates each function and keep them in memory while calling the next one.
