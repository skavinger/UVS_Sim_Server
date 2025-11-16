extends Node

@rpc("any_peer")
func recieveFirst(_firstBool):
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "recieveFirst", _firstBool)
	
@rpc("any_peer")
func updateRivalsPhase(_newPhase):
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "updateRivalsPhase", _newPhase)
	
@rpc("any_peer")
func swapPlayerTurn(_toPhase):
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "swapPlayerTurn", _toPhase)
