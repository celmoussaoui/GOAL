	:- dynamic 
	place/1,
	in/1,
	at/1,
	atBlock/1,
	occupied/1,
	color/2,
	holding/1,
	holdingblocks/1,
	gripperCapacity/1,
	player/1,
	ownName/1,
	sequence/1,
	sequenceIndex/1,
	state/1,
	message/2,
	position/3,
	robot/1,
	location/2,
	zone/5.

% A room is a place with exactly one neighbour, i.e., there is only one way to get to and from that place.
room(PlaceID) :- zone(_,PlaceID,_,_,Neighbours), length(Neighbours,1).

% Exercise 2.2: insert a definition of the predicate "nextColorInSeq(Color)".
nextColorInSeq(Color) :- sequence(Colors), sequenceIndex(Index).

visited(Room) :- not(occupied(Room)).

block(Block, Color, Room) :- in(Room), color(Block, Color).
