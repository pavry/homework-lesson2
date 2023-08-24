-module(lesson2_task15).
-export([replicate/2]).

replicate(L, R) -> 
	replicate(L, R, R).

replicate([_H|T], R, 0) -> replicate(T, R, R);
replicate([H|T], R, N) -> [H|replicate([H|T], R, N-1)];
replicate([],_,_) -> [].
