# Chapter 7 - Let's write some python

From https://wiki.xxiivv.com/#development:
> Prototype before polishing. Get it working before optimizing it.
> Separate policy from mechanism; separate interfaces from engines.
> Write simple modular parts connected by clean interfaces.
> Design programs to be connected to other programs.
> Write programs to write programs when you can.
> Design for the future, because it will be here sooner than you think.
> In interface design, always do the least surprising thing.
> When a program has nothing surprising to say, it should say nothing.
> When a program must fail, it should fail noisily and as soon as possible.
> Write big programs only when it is clear by demonstration that nothing else will do.

Programming can seem scary at first but [TODO]

## The building blocks of programming

All programming is just chaining logic, for example using treatments like "if a is b, then make c hold the value of a-3" followed by "if c is negitive then say hello"

Well, that's actually an easy program

```python
a = 1
b = 1
c = 1

if a == b:
    c = a-3

if c < 0:
    print('hello')
```

you should notice a few weird things here though, namely, on line 5 we used two equal signs to check equality. This is the case in most programming languages because a single equal sign, like is used on the first two lines, is used for assignment that is assigning the value of `a` to 1 and `b` to 1 or as on line 6 assigning the value of `( a - 3 )` to `c`, because we've already used a single equal sign for assignment, two equal signs is used for checking equality.

If you follow the logic here, `a` and `b` are both 1, so line 4 checks that to be true, so line 5 does happen. Now  c which previously was equal to 1 is now equal to a-3, where a is 1, so c becomes -2. on line 8 we check if c is less than 0, and it is so we print the word 'hello'. Here, you'll notice 'hello' is in quotes. This is because if it were not, that is if it were `print(hello)` it would try to print the value of the variable 'hello' which since hello isn't defined, wouldn't work. Let's try this:

Open up VSCode and [TODO] try without quotes, then define hello to be something else  

[TODO]
if, while, for (and specialized), assignment, comparison, combined ops (+=), mod, exponent, floor,
in/not in, is/is not, data types, functions
libraries

## Common methods used

commenting-out
print debugging
Recursion, object orientation
while(true)
try/catch

## Some simple programs

### Hello World

fully discect each line and call and why each line is used, ASCII table

add greating and input

### Even or Odd, prime,

### Calculating sine and pi

### Sorting a list

### Palindromes

### Cypher

## Making a full project

### Part 1, Starting easy

[TODO] guide to write an OO python program with libraries to read and write entries to a database-like file and a real database
the database should have 3 tables, a to-do list, a time-tracker list, and a list of articles

To-do: NAME, DUEDATE
time-tracker: 2types, either manually enterend with NAME, TSTART, TSTOP or NAME, TTOTAL for the following program
articles: NAME, PUBLISHED, TPUB, TEDIT

we'll need some way to track what items in the time tracker were started, but never stopped

for now, everything should be strictly command line arguments and print statments

## More advanced topics

lambdas(high level only), threads/ parrallelization(high level only), interupts (actually, let's save this until embbeded), apis,

## A little more practice

https://www.youtube.com/watch?v=Cp5WWtMoeKg
https://www.youtube.com/watch?v=M3iI2l0ltbE


