#set quote(block: true)

= Theoretical Computer Science

== 1. Knights and Knaves

You wake up. Wait, where are you? You groggily come to your senses. The last thing you remember was falling asleep during a discrete math final. You look around, and spot a helpful sign:

#quote[
	THE ISLAND OF KNIGHTS AND KNAVES

	Welcome to our cozy isle! All our inhabitants are very friendly, but be warned: half of them are knaves, who always lie. The other half, happily, are knights, who always tell the truth. Have a nice time!
]

Maybe if you wander around a bit, you can figure out how to get back home...

Please justify all your answers for this section.

=== 1.1 The first encounter

You meet two inhabitants, Rémi and Miguel. Rémi says something to you, but he mumbles and you're unable to make it out. Miguel notices that you didn't catch it, and says "Rémi said that he is a knave." Is Rémi a knight or a knave? Is Miguel a knight or a knave?


#v(100pt)

=== 1.2 The second encounter

You meet another inhabitant, who says "I am about to tell you the truth about whether I'm a knight or a knave." He makes another statement, and true to his word, you then know with 100% certainty whether he's a knight or a knave. What was his second statement, and is he a knight or a knave?

#v(100pt)

=== 1.3 A conundrum

Is it possible for any inhabitant to say "You can't deduce if I'm a knight or a knave from this statement"?

#v(100pt)

== 2. SKI Combinator Calculus

In this system, there are 3 functions: $S$, $K$, and $I$.

$I$ is the identity function: $I x = x$.

$K$ is the constant function. It takes two arguments and always returns the first: $K x y = x$.

$S$ follows the rule $S x y z = x z (y z)$.

Function application is denoted by juxtaposition and is left-associative (eg. $f x y$ means $(f(x))(y)$). If a function does not have enough arguments, it will simply not reduce further (eg. $S x y$ evaluates to $S x y$).

For example, let's suppose we have a function _eq_ that returns true if its arguments are equal (like _eq_ $S S$), and false if they aren't (like _eq_ $S K$). Let's also suppose we have a function _rev_ that reverses a string. We could check if a string was a palindrome or not like so: _S eq rev_. If this was applied to a string: _S eq rev str_, the result would be _eq str (rev str)_ by $S$'s reduction rule, checking if _str_ is a palindrome. However, we actually don't have strings or booleans or _eq_ or _rev_ (all we have are the functions $S$, $K$, and $I$); this section is merely hypothetical to help explain $S$.

As another example, consider the function $M x = x x$. It takes an argument and applies the argument to itself. One way to define it using $S$, $K$, and $I$ is like this: $M = S I I$. Then, $M x = S I I x = I x (I x) = I(x)(I(x))$. Now, we know that $I x = x$, so this reduces to $x(x)$, or simply $x x$, as intended.

=== 2.1 False

One way to represent a boolean false is with a function that discards its first argument: $F x y = y$. Define this in terms of $S$, $K$, and $I$.

#v(100pt)

=== 2.2 Idiot

It turns out that you don't actually need $I$! Define it in terms of $S$ and $K$. ($I$ is sometimes known as the _idiot bird_.)

#v(100pt)

=== 2.3 Compose

Define the $B$ combinator, which follows the rule $B x y z = x (y z)$. In other words, it composes $x$ and $y$.

#v(100pt)