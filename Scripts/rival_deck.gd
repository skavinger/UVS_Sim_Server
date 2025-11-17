extends Node

@rpc("any_peer")
func setUpRivalDeck(_rivalDecklist):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "setUpRivalDeck", _rivalDecklist)
