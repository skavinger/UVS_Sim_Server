extends Node

@rpc("any_peer")
func setRivalPlayerData(_rivalData):
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "setRivalPlayerData", _rivalData)
