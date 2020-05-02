initial_state([0,0,0,0,0,0,0]).
final_state([1,1,1,1,1,1,1]).

next_states([K1, K2, K3, S1, S2, S3, B],[NK1, NK2, NK3, NS1, NS2, NS3, NB]):-
    state([K1, K2, K3, S1, S2, S3, B],[NK1, NK2, NK3, NS1, NS2, NS3, NB]).

state([0, K2, K3, 0, S2, S3, 0],[1, K2, K3, 1, S2, S3, 1]).%1 pair
state([1, K2, K3, 1, S2, S3, 1],[0, K2, K3, 0, S2, S3, 0]).

state([K1, 0, K3, S1, 0, S3, 0],[K1, 1, K3, S1, 1, S3, 1]).%2 pair
state([K1, 1, K3, S1, 1, S3, 1],[K1, 0, K3, S1, 0, S3, 0]).

state([K1, K2, 0, S1, S2, 0, 0],[K1, K2, 1, S1, S2, 1, 1]).%3 pair
state([K1, K2, 1, S1, S2, 1, 1],[K1, K2, 0, S1, S2, 0, 0]).

state([1, K2, K3, 0, S2, S3, 0],[1, K2, K3, 1, S2, S3, 1]).%1 spearman leaves
state([0, K2, K3, 1, S2, S3, 1],[0, K2, K3, 0, S2, S3, 0]).%(1)
state([K1, 0, 0, 0, S2, S3, 0],[K1, 0, 0, 1, S2, S3, 1]).
state([K1, 1, 1, 1, S2, S3, 1],[K1, 1, 1, 0, S2, S3, 0]).

state([K1, 1, K3, S1, 0, S3, 0],[K1, 1, K3, S1, 1, S3, 1]).%1 spearman leaves
state([K1, 0, K3, S1, 1, S3, 1],[K1, 0, K3, S1, 0, S3, 0]).%(2)
state([0, K2, 0, S1, 0, S3, 0],[0, K2, 0, S1, 1, S3, 1]).
state([1, K2, 1, S1, 1, S3, 1],[1, K2, 1, S1, 0, S3, 0]).

state([K1, K2, 1, S1, S2, 0, 0],[K1, K2, 1, S1, S2, 1, 1]).%1 spearman leaves
state([K1, K2, 0, S1, S2, 1, 1],[K1, K2, 0, S1, S2, 0, 0]).%(3)
state([0, 0, K3, S1, S2, 0, 0],[0, 0, K3, S1, S2, 1, 1]).
state([1, 1, K3, S1, S2, 1, 1],[1, 1, K3, S1, S2, 0, 0]).

state([1, 1, K3, 0, 0, S3, 0],[1, 1, K3, 1, 1, S3, 1]).%2 spearmen (1, 2)
state([0, 0, K3, 1, 1, S3, 1],[0, 0, K3, 0, 0, S3, 0]).

state([1, K2, 1, 0, S2, 0, 0],[1, K2, 1, 1, S2, 1, 1]).%2 spearmen (1, 3)
state([0, K2, 0, 1, S2, 1, 1],[0, K2, 0, 0, S2, 0, 0]).

state([K1, 1, 1, S1, 0, 0, 0],[K1, 1, 1, S1, 1, 1, 1]).%2 spearmen (2, 3)
state([K1, 0, 0, S1, 1, 1, 1],[K1, 0, 0, S1, 0, 0, 0]).

state([1, K2, K3, 0, S2, S3, 1],[0, K2, K3, 0, S2, S3, 0]).%1 knight leaves
state([0, K2, K3, 1, S2, S3, 0],[1, K2, K3, 1, S2, S3, 1]).%(1)

state([K1, 1, K3, S1, 0, S3, 1],[K1, 0, K3, S1, 0, S3, 0]).%1 knight leaves
state([K1, 0, K3, S1, 1, S3, 0],[K1, 1, K3, S1, 1, S3, 1]).%(2)

state([K1, K2, 1, S1, S2, 0, 1],[K1, K2, 0, S1, S2, 0, 0]).%1 knight leaves
state([K1, K2, 0, S1, S2, 1, 0],[K1, K2, 1, S1, S2, 1, 1]).%(3)

state([1, 1, K3, 0, 0, S3, 1],[0, 0, K3, 0, 0, S3, 0]).%2 knights (1, 2)
state([1, 1, K3, 1, 1, S3, 0],[1, 1, K3, 1, 1, S3, 1]).

state([1, K2, 1, 0, S2, 0, 1],[0, K2, 0, 0, S2, 0, 0]).%2 knights (1, 3)
state([0, K2, 0, 1, S2, 1, 0],[1, K2, 1, 1, S2, 1, 1]).

state([K1, 1, 1, S1, 0, 0, 1],[K1, 0, 0, S1, 0, 0, 0]).%2 knights (2, 3)
state([K1, 0, 0, S1, 1, 1, 0],[K1, 1, 1, S1, 1, 1, 1]).

check_for_me(X):-
    findall(A, next_states(X, A), List),
    write(List).

h([K1, K2, K3, S1, S2, S3, _],H):-
    count(K1, K1H),
    count(K2, K2H),
    count(K3, K3H),
    count(S1, S1H),
    count(S2, S2H),
    count(S3, S3H),
    H is K1H + K2H + K3H + S1H + S2H + S3H.

count(X,1):-
    X = 0.
count(X,0):-
    X = 1.

