initial_state([0,0,0,0,0,0,0]-2-6-[]).
final_state([1,1,1,1,1,1,1]-_-_-_).

next_states([K1, K2, K3, S1, S2, S3, B],[NK1, NK2, NK3, NS1, NS2, NS3, NB],G):- %generating new states
    state([K1, K2, K3, S1, S2, S3, B],[NK1, NK2, NK3, NS1, NS2, NS3, NB],G).

state([0, K2, K3, 0, S2, S3, 0],[1, K2, K3, 1, S2, S3, 1], G):- %1 pair
    S2 = K2, S3 = K3,
    G is 2.
state([1, K2, K3, 1, S2, S3, 1],[0, K2, K3, 0, S2, S3, 0], G):-
    S2 = K2, S3 = K3,
    G is 2.

state([K1, 0, K3, S1, 0, S3, 0],[K1, 1, K3, S1, 1, S3, 1], G):- %2 pair
    S1 = K1, S3 = K3,
    G is 2.
state([K1, 1, K3, S1, 1, S3, 1],[K1, 0, K3, S1, 0, S3, 0], G):-
    S1 = K1, S3 = K3,
    G is 2.

state([K1, K2, 0, S1, S2, 0, 0],[K1, K2, 1, S1, S2, 1, 1], G):- %3 pair
    S1 = K1, S2 = K2,
    G is 2.
state([K1, K2, 1, S1, S2, 1, 1],[K1, K2, 0, S1, S2, 0, 0], G):-
    S1 = K1, S2 = K2,
    G is 2.

state([1, K2, K3, 0, S2, S3, 0],[1, K2, K3, 1, S2, S3, 1], G):- G is 1.%1 spearman leaves
state([0, K2, K3, 1, S2, S3, 1],[0, K2, K3, 0, S2, S3, 0], G):- G is 1.%(1)
state([K1, 0, 0, 0, S2, S3, 0],[K1, 0, 0, 1, S2, S3, 1], G):- G is 1.
state([K1, 1, 1, 1, S2, S3, 1],[K1, 1, 1, 0, S2, S3, 0], G):- G is 1.

state([K1, 1, K3, S1, 0, S3, 0],[K1, 1, K3, S1, 1, S3, 1], G):- G is 1.%1 spearman leaves
state([K1, 0, K3, S1, 1, S3, 1],[K1, 0, K3, S1, 0, S3, 0], G):- G is 1.%(2)
state([0, K2, 0, S1, 0, S3, 0],[0, K2, 0, S1, 1, S3, 1], G):- G is 1.
state([1, K2, 1, S1, 1, S3, 1],[1, K2, 1, S1, 0, S3, 0], G):- G is 1.

state([K1, K2, 1, S1, S2, 0, 0],[K1, K2, 1, S1, S2, 1, 1], G):- G is 1.%1 spearman leaves
state([K1, K2, 0, S1, S2, 1, 1],[K1, K2, 0, S1, S2, 0, 0], G):- G is 1.%(3)
state([0, 0, K3, S1, S2, 0, 0],[0, 0, K3, S1, S2, 1, 1], G):- G is 1.
state([1, 1, K3, S1, S2, 1, 1],[1, 1, K3, S1, S2, 0, 0], G):- G is 1.

state([1, 1, K3, 0, 0, S3, 0],[1, 1, K3, 1, 1, S3, 1], G):- G is 2.%2 spearmen (1, 2)
state([0, 0, K3, 1, 1, S3, 1],[0, 0, K3, 0, 0, S3, 0], G):- G is 2.
state([K1, K2, 0, 0, 0, S3, 0],[K1, K2, 0, 1, 1, S3, 1], G):- G is 2.%2 spearmen (1, 2)
state([K1, K2, 1, 1, 1, S3, 1],[K2, K1, 1, 0, 0, S3, 0], G):- G is 2.

state([1, K2, 1, 0, S2, 0, 0],[1, K2, 1, 1, S2, 1, 1], G):- G is 2.%2 spearmen (1, 3)
state([0, K2, 0, 1, S2, 1, 1],[0, K2, 0, 0, S2, 0, 0], G):- G is 2.
state([K1, 0, K3, 0, S2, 0, 0],[K1, 0, K3, 1, S2, 1, 1], G):- G is 2.%2 spearmen (1, 3)
state([K1, 1, K3, 1, S2, 1, 1],[K1, 1, K3, 0, S2, 0, 0], G):- G is 2.

state([K1, 1, 1, S1, 0, 0, 0],[K1, 1, 1, S1, 1, 1, 1], G):- G is 2.%2 spearmen (2, 3)
state([K1, 0, 0, S1, 1, 1, 1],[K1, 0, 0, S1, 0, 0, 0], G):- G is 2.
state([0, K2, K3, S1, 0, 0, 0],[0, K2, K3, S1, 1, 1, 1], G):- G is 2.%2 spearmen (2, 3)
state([1, K2, K3, S1, 1, 1, 1],[1, K2, K3, S1, 0, 0, 0], G):- G is 2.

state([1, 1, 1, 0, 1, 1, 1],[0, 1, 1, 0, 1, 1, 0], G):- G is 1.%1 knight leaves
state([0, 0, 0, 1, 0, 0, 0],[1, 0, 0, 1, 0, 0, 1], G):- G is 1.%(1)
state([1, 0, 0, 1, S2, S3, 1],[0, 0, 0, 1, S2, S3, 0], G):- G is 1.
state([0, 1, 1, 0, S2, S3, 0],[1, 1, 1, 0, S2, S3, 1], G):- G is 1.

state([1, 1, 1, 1, 0, 1, 1],[1, 0, 1, 1, 0, 1, 0], G):- G is 1.%1 knight leaves
state([0, 0, 0, 0, 1, 0, 0],[0, 1, 0, 0, 1, 0, 1], G):- G is 1.%(2)
state([0, 1, 0, S1, 1, S3, 1],[0, 0, 0, S1, 1, S3, 0], G):- G is 1.
state([1, 0, 1, S1, 0, S3, 0],[1, 1, 1, S1, 0, S3, 1], G):- G is 1.

state([1, 1, 1, 1, 1, 0, 1],[1, 1, 0, 1, 1, 0, 0], G):- G is 1.%1 knight leaves
state([0, 0, 0, 0, 0, 1, 0],[0, 0, 1, 0, 0, 1, 1], G):- G is 1.%(3)
state([0, 0, 1, S1, S2, 1, 1],[0, 0, 0, S1, S2, 1, 0], G):- G is 1.
state([1, 1, 0, S1, S2, 0, 0],[1, 1, 1, S1, S2, 0, 1], G):- G is 1.

state([1, 1, 0, S1, S2, 0, 1],[0, 0, 0, S1, S2, 0, 0], G):- G is 2.%2 knights (1, 2)
state([0, 0, 1, S1, S2, 1, 0],[1, 1, 1, S1, S2, 1, 1], G):- G is 2.
state([1, 1, K3, 0, 0, 1, 1],[0, 0, K3, 0, 0, 1, 0], G):- G is 2.%2 knights (1, 2)
state([0, 0, K3, 1, 1, 0, 0],[1, 1, K3, 1, 1, 0, 1], G):- G is 2.

state([1, 0, 1, S1, 0, S3, 1],[0, 0, 0, S1, 0, S3, 0], G):- G is 2.%2 knights (1, 3)
state([0, 1, 0, S1, 1, S3, 0],[1, 1, 1, S1, 1, S3, 1], G):- G is 2.
state([1, K2, 1, 0, 1, 0, 1],[0, K2, 0, 0, 1, 0, 0], G):- G is 2.
state([0, K2, 0, 1, 0, 1, 0],[1, K2, 1, 1, 0, 1, 1], G):- G is 2.

state([0, 1, 1, 0, S2, S3, 1],[0, 0, 0, 0, S2, S3, 0], G):- G is 2.%2 knights (2, 3)
state([1, 0, 0, 1, S2, S3, 0],[1, 1, 1, 1, S2, S3, 1], G):- G is 2.
state([K1, 1, 1, 1, 0, 0, 1],[K1, 0, 0, 1, 0, 0, 0], G):- G is 2.%2 knights (2, 3)
state([K1, 0, 0, 0, 1, 1, 0],[K1, 1, 1, 0, 1, 1, 1], G):- G is 2.

h([K1, K2, K3, S1, S2, S3, _],H):- %heuristic - quantity of people on the left side
    count(K1, K1H),
    count(K2, K2H),
    count(K3, K3H),
    count(S1, S1H),
    count(S2, S2H),
    count(S3, S3H),
    H is K1H + K2H + K3H + S1H + S2H + S3H.

membering(_,[]). %helper realization of member()
membering(State, [Closed|T]):-
    not(equal(State,Closed)),
    membering(State, T).

equal([K1, K2, K3, S1, S2, S3, B]-_-_-_,[NK1, NK2, NK3, NS1, NS2, NS3, NB]-_-_-_):-
    K1 = NK1,
    K2 = NK2,
    K3 = NK3,
    S1 = NS1,
    S2 = NS2,
    S3 = NS3,
    B = NB.

count(X,1):-
    X = 0.
count(X,0):-
    X = 1.
main():-
    initial_state(X),
    append_cor([],X,Opened),
    a_star([],Opened).

append_cor(List,State,L):- %helper for correct append of states
    append(List,[State],L).

a_star(_,Opened):- %A* final state
    min_f(Opened, Current-CG-CF-CHistory),
    final_state(Current-CG-CF-CHistory),
    append_cor(CHistory,Current-CG-CF,NewHistory),
    writeln('found'),
    writeln(NewHistory),
    writeln('end').
a_star(Closed,Opened):- %A*
    min_f(Opened, Current-CG-CF-CHistory),%getting state with minimal f
    delete(Opened, Current-CG-CF-CHistory, NewOpened),
    append_cor(Closed, Current-CG-CF-CHistory, NewClosed),
    findall(A-G1-F1-History1,(next_states(Current,A,G1), h(A,H), F1 is G1 + H,%generating new states and history
                     membering(A-G1-F1-History1,NewClosed), append_cor(CHistory, Current-CG-CF, History1)),
                     NextStates),
    expand_opened(Current-CG-CF-CHistory,NextStates,NewOpened,UpdNewOpened),%addition of new states
    a_star(NewClosed,UpdNewOpened).

expand_opened(_,[],Opened,Opened).
expand_opened(Current-GC-FC-CHistory,[State-G-F-History|Tail], Opened, Res):-
    membering(State-G-F-History, Opened),
    expand_opened(Current-GC-FC-CHistory,Tail,Opened,Res1),
    append_cor(Res1, State-G-F-History,Res).
expand_opened(Current-GC-FC-CHistory,[State-G-F-History|Tail], Opened, Res):-
    not(membering(State-G-F-History, Opened)),
    expand_opened(Current-GC-FC-CHistory,Tail,Opened,Res).


min_f([A],A). %getting state with minimal
min_f([State-G-F-His|Tail],MinState):-
    min_f(Tail,A-AG-AF-AH),
    min_state(State-G-F-His, A-AG-AF-AH, MinState).

min_state(A-AG-AF-AH, _-_-BF-_, A-AG-AF-AH):-
    AF < BF.
min_state(_-_-AF-_, B-BG-BF-BH, B-BG-BF-BH):-
    AF >= BF.

