-module(lesson2_task07).
-export([flatten/1]).

flatten(L) -> 
    flatten(L, []).

flatten([], L) -> 
    L;
flatten([H|T], L) ->  
    flatten(H, flatten(T,L));
flatten(H, L) ->  
    [H|L].

