extends Node

@rpc("any_peer")
func addToOtherPlayerChatLog(_rivalname, _text):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "addToOtherPlayerChatLog", _rivalname, _text)
	
@rpc("any_peer")
func addToOtherPlayerEventLog(_rivalName, _publicEvent, _privateEvent):
	if Server.checkPair(multiplayer.get_remote_sender_id()):
		rpc_id(Server.playerPairs[multiplayer.get_remote_sender_id()], "addToOtherPlayerEventLog", _rivalName, _publicEvent, _privateEvent)
