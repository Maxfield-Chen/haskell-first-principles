# Types
Brief discussion on currying / uncurrying
*sectioning* refers to taking an infix function and partially applying either the left or the right argument.

## Polymorphism

Type signatures may be constrained, parametrically polymorphic or constrained polymorphic.

Constrained or ad-hoc polymorphism is implemented in haskell via type classes. These are type variables which have been constrained to a set of type classes. This reduces the number of types the operation can be used with, but allows for a common vocabulary of verbs.

Parametric polymorphism is broader than constrained polymorphism. It refers to type variables which are fully polymorphic. These variables are unconstrained by any type classes and could be literally anything.

Concrete types allow for more computational flexibility since type classes are additive. If you have an Int, you can use methods from Num and Integral, since Int has instances of both typeclasses. In this case, Num is a *superclass* of Int. 

Note that this only flows downward. A subclass cannot override the methods of a superclass.

Polymorphic constants are instances of a type class. For instance, Num is a polymorphic constants since it could be any type of number.

If you have types which are too concrete, and you'd like them to be more polymorphic, haskell does have functions to help. *fromIntegral* is an example, taking a more concrete Integral number and returning a type variable constrained only to Num. 

# Typeclasses
Types and typeclasses can be thought of as opposites. A type declaration defines how to create a type, and typeclasses define how to consume types. Typeclasses are similar to interfaces in other languages. Type classes are an ad-hoc polymorphism, since they are constrained by type.

Used to generalize over multiple types by defining a standard set of operations on that type.

## Don't use the Read typeclass. ever.

## Defining your own Typeclasses
"minimial complete definition" specifies what exactly you need to have a valid instance. 

### Keep your typeclass instances in the same file as the type's definition.

#### Reminder to go lookup how to turn on -Wall and other useful flags for HFP.
Got bit by the "non-exhaustive pattern" bug at runtime when defining a custom typeclass.


#### Num
Defines + - \*, abs, negate, fromInteger. Note that it doesn't implement divide.
#### Eq
Only need to define == or \=
#### Ord
Needs to implement compare, <, >, <=, >=, max, min
When writing ord, it's enough to implement compare
Ensure that ord compare agrees with Eq instance
Be careful not to write partial instances
#### Enum
Describes things which have successors and predecessors. 
#### Show
Describes methods to show things for humans. Explicitly not for serialization.
minimial implementation requires only show or showsPrec 
#### Why Read is a pile of garbage
Read takes strings and turns them into things. 
Read is a partial function, since lots of types implementing Read can't possibly deal with all possible strings as inputs. 
This will produce runtime errors which sucks.

*Type classes are dispatched by type.*
Type classes are defined by a set of operations and values that all instances provide
type class instances are unique pairings of the type class and a type. They are implementations of the type class methods for a specific type.

Shadowing occurs when a variable is defined with the same name in a closer lexical scope. This is often seen when function parameters are shadowed by let definitions

## Chapter 7

### Pattern Matching
