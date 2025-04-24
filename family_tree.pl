% Basic Facts
parent(john, mary).
parent(john, mike).
parent(susan, mary).
parent(susan, mike).
parent(mary, alice).
parent(mary, bob).
parent(mike, charlie).
parent(mike, emma).

male(john).
male(mike).
male(bob).
male(charlie).

female(susan).
female(mary).
female(alice).
female(emma).

% Rules
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2),
    X \= Y.

child(X, Y) :-
    parent(Y, X).

descendant(X, Y) :-
    parent(Y, X).
descendant(X, Y) :-
    parent(Z, X),
    descendant(Z, Y).


