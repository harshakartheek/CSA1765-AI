bird(sparrow, can_fly).
bird(penguin, cannot_fly).
bird(eagle, can_fly).
bird(ostrich, cannot_fly).
bird(parrot, can_fly).
bird(kiwi, cannot_fly).
can_fly(Bird) :-
    bird(Bird, can_fly).
cannot_fly(Bird) :-
    bird(Bird, cannot_fly).
is_bird(Bird) :-
    bird(Bird, _).
