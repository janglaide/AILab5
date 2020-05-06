initial_state([0,0,0,0,0,0,0]-2-6).
final_state([1,1,1,1,1,1,1]-_-_).

next_states([K1, K2, K3, S1, S2, S3, B],[NK1, NK2, NK3, NS1, NS2, NS3, NB],G):-
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

check_for_me(X):-
    findall(A-F-H-G, (next_states(X, A, G),h(A,H),F is G + H), List),
    write(List).

h([K1, K2, K3, S1, S2, S3, _],H):-
    count(K1, K1H),
    count(K2, K2H),
    count(K3, K3H),
    count(S1, S1H),
    count(S2, S2H),
    count(S3, S3H),
    H is K1H + K2H + K3H + S1H + S2H + S3H.

membering(_,[]).
membering(State, [Closed|T]):-
    not(equal(State,Closed)),
    membering(State, T).

equal([K1, K2, K3, S1, S2, S3, B]-_-_,[NK1, NK2, NK3, NS1, NS2, NS3, NB]-_-_):-
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
    a_star([],Opened,Path),
    writeln(Path).

run_check():-
    check_tmp([],[[1,1,1,1,1,1,1]-1-3,[2,2,2,2,2,2,2]-2-2,[3,3,3,3,3,3,3]-3-4,[4,4,4,4,4,4,4]-4-1,[5,5,5,5,5,5,5]-5-3],X),
    writeln(X).

check_tmp(_,[],[]).
check_tmp(Closed, Opened, Path):-
    min_f(Opened, Current),
    delete(Opened,Current,NewOpened),
    append_cor(Closed, Current, NewClosed),
    %expand_opened(Current,NextStates,Opened,UpdNewOpened),
    check_tmp(NewClosed,NewOpened,Path1),
    append_cor(Path1, Current, Path).

append_cor(List,State,L):- %helper for correct append of states
    append(List,[State],L).

a_star(_,Opened,Path):-
    min_f(Opened, Current),
    final_state(Current),
    append_cor([],Current,Path),
    writeln('found').
a_star(Closed,Opened,Path):-
    min_f(Opened, Current-CG-CF),
    writeln(Current),
    delete(Opened, Current-CG-CF, NewOpened),
    append_cor(Closed, Current-CG-CF, NewClosed),
    findall(A-G1-F1,(next_states(Current,A,G1), h(A,H), F1 is G1 + H,
                     membering(A-G1-F1,NewClosed)),
                     NextStates),
    %writeln(NextStates),
    expand_opened(Current-CG-CF,NextStates,NewOpened,UpdNewOpened),
    a_star(NewClosed,UpdNewOpened,Path1),
    append_cor(Path1, Current-CG-CF, Path).

expand_opened(_,[],Opened,Opened).
expand_opened(Current-GC-FC,[State-G-F|Tail], Opened, Res):-
    membering(State-G-F, Opened),
    expand_opened(Current-GC-FC,Tail,Opened,Res1),
    append_cor(Res1, State-G-F,Res).
expand_opened(Current-GC-FC,[State-G-F|Tail], Opened, Res):-
    not(membering(State-G-F, Opened)),
    %member(State-G-F, Opened),
    %GC < G,
    expand_opened(Current-GC-FC,Tail,Opened,Res).


min_f([A],A).
min_f([State-F|Tail],MinState):-
    min_f(Tail,A-AF),
    min_state(State-F, A-AF, MinState).

min_state(A-AF, _-BF, A-AF):-
    AF < BF.
min_state(_-AF, B-BF, B-BF):-
    AF >= BF.

del(Y, [Y], []).
del(X, [X|Tail],Tail).
del(X, [Y|Tail],[Y|Tail1]):-
    del(X, Tail, Tail1).

