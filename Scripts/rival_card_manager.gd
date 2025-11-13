extends Node

@rpc("any_peer")
func flipCard(_cardMeta):
	pass
	
@rpc("any_peer")
func unflipCard(_cardMeta):
	pass
	
@rpc("any_peer")
func commitCard(_cardMeta):
	pass
	
@rpc("any_peer")
func readyCard(_cardMeta):
	pass
	
@rpc("any_peer")
func flashRivalCard(_indexID):
	pass
