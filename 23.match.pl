match([], []).
match([H|PatternTail], [H|ListTail]) :-
    match(PatternTail, ListTail).
match([|PatternTail], [|ListTail]) :-
    match(PatternTail, ListTail).
match(['*'|PatternTail], List) :-
    match(PatternTail, List).
match(['*'|PatternTail], [_|ListTail]) :-
    match([''|PatternTail], ListTail).
