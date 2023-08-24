-module(lesson2_task13).
-export([decode/1]).

decode([]) -> 
	[];
decode([{0, S}|T]) -> 
	decode(T);
decode([{N, S}|T]) -> 
	[S|decode([{N-1, S}|T])].