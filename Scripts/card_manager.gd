extends Node

@rpc("any_peer")
func flashRivalCard(_indexID):
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "flashRivalCard", _indexID)
