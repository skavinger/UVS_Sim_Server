extends Node

@rpc("any_peer")
func recieveFirst(_firstBool):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "recieveFirst", _firstBool)
	
@rpc("any_peer")
func updateRivalsPhase(_newPhase):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "updateRivalsPhase", _newPhase)
	
@rpc("any_peer")
func swapPlayerTurn(_toPhase):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "swapPlayerTurn", _toPhase)
