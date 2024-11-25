parent(john, mary).
parent(john, michael).
parent(susan, mary).
parent(susan, michael).
parent(mary, sophie).
parent(mary, daniel).
parent(michael, tom).
parent(michael, emily).
male(john).
male(michael).
male(daniel).
male(tom).
female(susan).
female(mary).
female(sophie).
female(emily).
child(X, Y) :-
    parent(Y, X).
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.
brother(X, Y) :-
    sibling(X, Y),
    male(X).
sister(X, Y) :-
    sibling(X, Y),
    female(X).
uncle(X, Y) :-
    parent(Z, Y),
    brother(X, Z).
aunt(X, Y) :-
    parent(Z, Y),
    sister(X, Z).
grandchild(X, Y) :-
    grandparent(Y, X).
cousin(X, Y) :-
    grandparent(Z, X),
    grandparent(Z, Y),
    \+ sibling(X, Y),
    X \= Y.
