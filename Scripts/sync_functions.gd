extends Node

@rpc("any_peer")
func syncHealth(_health):
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "syncHealth", _health)
