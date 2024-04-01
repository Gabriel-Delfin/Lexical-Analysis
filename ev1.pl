% States
state(q0).
state(q1).
state(q2).
state(q3).
state(q4).
state(q5).
state(q6).
state(q7).
state(q8).

% Starting state
initial(q0).

% Accepting states
accepting(q4).
accepting(q5).
accepting(q7).
accepting(q8).

% Transitions
transition(q0, e, q1).
transition(q1, l, q2).
transition(q2, d, q3).
transition(q3, a, q4).
transition(q4, r, q5).
transition(q5, i, q6).
transition(q6, n, q7).
transition(q2, e, q6).
transition(q2, e, q3).
transition(q3, n, q7).
transition(q7, i, q8).
transition(q8, o, q6).
transition(q7, y, q3).
transition(q1, m, q7).
transition(q4, y, q7).

% Recognize a word
recognize(State, []) :- accepting(State).
recognize(State, [X|Rest]) :-
    transition(State, X, NextState),
    recognize(NextState, Rest).

% Predicate to check if a word is in the language
in_language(Word) :- initial(State), recognize(State, Word).

% Words
%Eldarin
%Elear
%Elen
%Eleni
%Elenion
%Elenya
%Emyn

