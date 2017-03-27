	:- dynamic 
	place/1,
	in/1,
	at/1,
	atBlock/1,
	color/2,
	holding/1,
	sequence/1,
	sequenceIndex/1,
	state/1,
	zone/5, 
	visited/1,
	block/3.

% A room is a place with exactly one neighbour, i.e., there is only one way to get to and from that place.
room(PlaceID) :- zone(_,PlaceID,_,_,Neighbours), length(Neighbours,1).

% Exercise 2.2: insert a definition of the predicate "nextColorInSeq(Color)".
nextColorInSeq(Color) :- sequence(Sequence), sequenceIndex(Index), nth0(Index, Sequence, Color).
