extends Node

@rpc("any_peer")
func syncHealth(_health):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "syncHealth", _health)

@rpc("any_peer")
func sendMessageToRival(message):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "sendMessageToRival", message)

@rpc("any_peer")
func sendRivalMessageReply(answer):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "sendRivalMessageReply", answer)

@rpc("any_peer")
func rivalSetTracker(speedNew, zoneNew, damageNew):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "rivalSetTracker", speedNew, zoneNew, damageNew)
