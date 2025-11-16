extends Node

@rpc("any_peer")
func flipCard(_cardMeta):
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "flipCard", _cardMeta)
	
@rpc("any_peer")
func unflipCard(_cardMeta):
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "unflipCard", _cardMeta)
	
@rpc("any_peer")
func commitCard(_cardMeta):
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "commitCard", _cardMeta)
	
@rpc("any_peer")
func readyCard(_cardMeta):
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "readyCard", _cardMeta)
	
@rpc("any_peer")
func flashRivalCard(_indexID):
	rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "flashRivalCard", _indexID)
