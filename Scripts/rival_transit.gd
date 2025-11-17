extends Node

@rpc("any_peer")
func move_to(_sourceZone, _destinationZone, _card_oldRef, _faceup):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "move_to", _sourceZone, _destinationZone, _card_oldRef, _faceup)
