count_vowels([], 0).
count_vowels([H|T], Count) :-
    is_vowel(H),
    count_vowels(T, TailCount),
    Count is TailCount + 1.
count_vowels([H|T], Count) :-
    \+ is_vowel(H),
    count_vowels(T, Count).
is_vowel(a).
is_vowel(e).
is_vowel(i).
is_vowel(o).
is_vowel(u).
is_vowel(A) :- char_type(A, upper), is_vowel_lower(A).
is_vowel_lower(A) :- char_lower(A, Lower), is_vowel(Lower).
