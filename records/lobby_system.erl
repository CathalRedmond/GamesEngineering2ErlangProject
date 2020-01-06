-module(lobby_system).
-export([lobby/0]).
-export([checkIfPlayersHaveAchievment/1]).

% Include the player record file
-include_lib("player.hrl").

% Export the function lobby()


	

lobby() ->
	% Setup the Achievements

	A1 = [{"A1", "B1"}, {"A2", "B3"}],
	A2 = [{"A2", "B2"}],

	% Setup the players

	P1 =#player{name="Joe", gamer_tag="KillerJoe", points=100, achievements=A1},
	P2 =#player{name="Jane", gamer_tag="KillerJane", points=100, achievements=A2},
	
	% Check if elements match

	R5 = element(5, P1) == element(5, P2),
	R4 = element(4, P1) == element(4, P2),
	R3 = element(3, P1) == element(3, P2),
	R2 = element(2, P1) == element(2, P2),
	R1 = element(1, P1) == element(1, P2),

	% Assign Elements to variables
	R1R = element(1, P1),
	R2R = element(2, P1),
	R3R = element(3, P1),

	% Find out how many points a player has
	% Player 1 Element 4 see player record file
	R4R = element(4, P1),
	R5R = element(5, P1),
	
	% Define a new Record P3 and update the
	% Points for the first player
	
	P3 = P1#player{points=R4R + 10},
	R6R = element(4, P3),

	io:fwrite("Element of R1: ~p~n",[R1R]),
	io:fwrite("Element of R2: ~p~n",[R2R]),
	io:fwrite("Element of R3: ~p~n",[R3R]),
	io:fwrite("Element of R4: ~p~n",[R4R]),
	io:fwrite("Element of R5: ~p~n",[R5R]),

	io:fwrite("Element of R6: ~p~n",[R6R]),

	io:fwrite("Value of R1: ~p~n",[R1]),
	io:fwrite("Value of R2: ~p~n",[R2]),
	io:fwrite("Value of R3: ~p~n",[R3]),
	io:fwrite("Value of R4: ~p~n",[R4]),
	io:fwrite("Value of R5: ~p~n",[R5]).
	
	
checkIfPlayersHaveAchievment(Achievements) ->
	% Setup the Achievements

	A1 = "Best Gamer",
	A2 = "Worst Gamer",

	% Setup the players

	P1 =#player{name="Phil", gamer_tag="TestPlayer1", points=100, achievements=A1},
	P2 =#player{name="Philippa", gamer_tag="TestPlayer2", points=100, achievements=A2},
	
	EQUAL1 = element(5, P1) == Achievements,
	EQUAL2 = element(5, P2) == Achievements,
	
	io:fwrite("Player Name: ~p~n",[element(2,P1)]),
	io:fwrite("Has Inputted Achievement: ~p~n",[EQUAL1]),
	io:fwrite("Player Name: ~p~n",[element(2,P2)]),
	io:fwrite("Has Inputted Achievement: ~p~n",[EQUAL2]).