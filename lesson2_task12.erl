-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified(L) -> 
	decode_modified(L, 1).

decode_modified([], 1) -> 
	[];
decode_modified([{N, S}|T], 1) -> 
	decode_modified([S|T], N);
decode_modified([H|T], 1) -> 
	[H|decode_modified(T, 1)];
decode_modified([S|T], N) -> 
	[S|decode_modified([S|T], N-1)].