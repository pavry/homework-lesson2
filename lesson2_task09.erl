-module(lesson2_task09).
-export([pack/1]).

pack(L) -> 
	pack(L, []).

pack([], _) -> 
	[];
pack([H, H|T], L) -> 
	pack([H|T], [H|L]);
pack([H|T], L) -> 
	[[H|L]|pack(T,[])].