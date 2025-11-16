extends Node

@rpc("any_peer")
func clientChangeZone():
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "clientChangeZone")
