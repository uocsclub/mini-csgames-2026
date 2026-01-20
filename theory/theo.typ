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

In this system, there are 3 rules: $S$, $K$, and $I$.

$I$ is the identity combinator: the pattern $I x$ for any $x$ is replaced with $x$. \
$K$ is constant combinator. The pattern $K x y$ for any $x$ and $y$ is replaced with $x$. \
$S$ follows the rule $S x y z = x z (y z)$, for any $x$, $y$, and $z$.
#footnote[
	$S$'s rule may seem arbitrarily, but it encodes the very common pattern of calling a function with some input and the same input but modified. For example, a string if is a palindrome if it's equal to its reverse. Here, the function is equality, the string is the input, and the modified input is the reversed string.
```python
def eq(x, y): return x == y
def reverse(s): return s[::-1]
def S(x, y, z): return x(z, y(z))
def palindrome(s): return S(eq, reverse, s)

print(palindrome("racecar"))  # True
print(palindrome("starling"))  # False
print(palindrome(re.sub("\\W","","A man, a plan, a canal - Panama!").lower()))  # True
```
]

The leftmost pattern is always reduced, and expressions can be grouped with brackets. For example, $I K I S$ is the same as $(I K) I S$ because $I K$ is the leftmost pattern. We can reduce the $I K$ inside the brackets to $K$, leaving us with $K I S$. The, by $K$'s rule, this leaves us with $I$.

As another example, consider the combinator $M x = x x$, which replaces something with two copies of itself. One way to define it using $S$, $K$, and $I$ is like this: $M = S I I$. Then, $M x = S I I x = I x (I x) = x (I x) = x x$, as intended. This can no longer be reduced further, as $x$ is an arbitrary variable, and its reduction rule is unknown. Perhaps $x$ is $S$, perhaps it is $K$, perhaps it is something else entirely.

Note that $x (I x)$ is _not_ the same as $x I x$. In fact, we can't reduce $x I x$ at all, because once again $x$ is a variable and we don't know what it does.

More examples:
- $K x (S z)$ reduces to $x$
- $K (S x y z) I$ reduces to $x z (y z)$
- $K S$ reduces to $K S$ (we don't have enough info to continue reduction, so we leave it)

=== 2.1 False

One way to represent a boolean false is with a function that discards its first argument: $F x y = y$. Define this in terms of $S$, $K$, and $I$.

#v(40pt)

=== 2.2 Idiot

It turns out that you don't actually need $I$! Define it in terms of $S$ and $K$. ($I$ is sometimes known as the _idiot bird_.)

#v(40pt)

=== 2.3 Compose

Define the $B$ combinator, which follows the rule $B x y z = x (y z)$. In other words, it composes $x$ and $y$.

#v(40pt)