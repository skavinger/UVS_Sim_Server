extends Node

var multiplayer_peer = ENetMultiplayerPeer.new()

var rooms = {}

var roomCount = 0

func _ready() -> void:
	multiplayer_peer.create_server(25555, 999)
	multiplayer.multiplayer_peer = multiplayer_peer
	multiplayer.peer_connected.connect(
		func(_playerID):
			sendUpdatedRooms()
	)
	multiplayer.peer_disconnected.connect(
		func(playerID):
			closeRoom(playerID)
	)

func sendUpdatedRooms():
	var roomList = []
	var roomkeys = rooms.keys()
	for i in range(roomkeys.size()):
		roomList.append(rooms[roomkeys[i]].players)
	rpc("roomsUpdated", roomList)

func closeRoom(playerID):
	rooms.erase(playerID)
	sendUpdatedRooms()

@rpc("any_peer")
func createRoom(playerName, playerDeck, password):
	print("CreateRoom Pressed by " + str(multiplayer.get_remote_sender_id()))
	rooms[multiplayer.get_remote_sender_id()] = {
		"players": {
			"creatingPlayerID": multiplayer.get_remote_sender_id(),
			"creatingPlayerName": playerName,
			"playerDeck": playerDeck,
			"joinedPlayer": null,
		},
		"password": password
	}
	sendUpdatedRooms()

@rpc("any_peer")
func joinRoom(creatingPlayerID, password):
	if rooms[creatingPlayerID].players.joinedPlayer != null:
		rpc_id(multiplayer.get_remote_sender_id(), "joinReply", "occupied")
	elif rooms[creatingPlayerID].password != password:
		rpc_id(multiplayer.get_remote_sender_id(), "joinReply", "invalidPassword")
	else:
		rpc_id(multiplayer.get_remote_sender_id(), "joinReply", "joined")
		rpc_id(creatingPlayerID, "rivalJoined")
		rooms[creatingPlayerID].players.joinedPlayer = multiplayer.get_remote_sender_id()

@rpc("any_peer")
func roomsUpdated(_rooms):
	pass
	
@rpc("any_peer")
func rivalJoined():
	pass

@rpc("any_peer")
func joinReply(_status):
	pass
