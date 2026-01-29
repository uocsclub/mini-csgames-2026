= Solutions: Theoretical Computer Science

== 1. Knights and Knaves

Answers must be correctly justified. A correct answer with incorrect justification does not show understanding.


=== 1.1 The first encounter

No inhabitant would claim to be a knave, so Rémi could not have said that. Miguel must be lying, and hence a knave. Nothing can be determined about Rémi.


=== 1.2 The second encounter

It may be temping to respond "the inhabitant is a knight, and his second statement was 'I am a knight.'". However, this is wrong: both knights _and_ knaves could say "I am a knight" as their second statement in this context. So, if that was the second statement, you would have no way of knowing if the inhabitant was a knight or a knave.

The inhabitant must be a knave, and his second statement must have been completely unrelated (eg. "I don't have a ring in my pocket"). Since the second statement was unrelated, that makes the first statement a lie. A knight could have never lied in the first statement like this, so from these statements, you can deduce that the inhabitant must be a knave.


=== 1.3 A conundrum

This statement is equivalent to the statement $S$ = "both knights and knaves can make this statement."

Assume $S$ is true. Then both knights and knaves could make it. But then we would have knaves making a true statement, which is a contradiction.

Assume $S$ is false. Then knights couldn't say it, and knaves could. No contradiction.

$therefore$ knaves can say the statement (and $S$ is false).

== 2. SKI Combinator Calculus

=== 2.1 False

$F = K I$ or $F = S K$.

=== 2.2 Idiot

$I = S K x$, where $x$ is any arbitrary expression. For example, $S K K$, $S K S$, or $S K (K (S K K))$ are all solutions.

Could also be $F x$ with $F$ from 2.1.

=== 2.3 Compose

$B = S (K S) K$