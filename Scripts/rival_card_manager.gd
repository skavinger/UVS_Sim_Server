extends Node

@rpc("any_peer")
func flipCard(_cardMeta):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "flipCard", _cardMeta)
	
@rpc("any_peer")
func unflipCard(_cardMeta):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "unflipCard", _cardMeta)
	
@rpc("any_peer")
func commitCard(_cardMeta):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "commitCard", _cardMeta)
	
@rpc("any_peer")
func readyCard(_cardMeta):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "readyCard", _cardMeta)

@rpc("any_peer")
func transformCard(indexID):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "transformCard", indexID)

@rpc("any_peer")
func flashRivalCard(_indexID):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "flashRivalCard", _indexID)

@rpc("any_peer")
func rivalConterUp(_indexID):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "rivalConterUp", _indexID)

@rpc("any_peer")
func rivalConterDown(_indexID):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "rivalConterDown", _indexID)
