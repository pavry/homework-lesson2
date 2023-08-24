-module(lesson2_task14).
-export([dublicate/1]).

dublicate([]) -> 
	[];
dublicate([H|T]) -> 
	[H,H|dublicate(T)].
