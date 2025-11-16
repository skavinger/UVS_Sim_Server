extends Node

@rpc("any_peer")
func adjustValueOnClient():
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "adjustValueOnClient")
