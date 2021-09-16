extends CanvasLayer


func play_track(track):
	for node in $Music.get_children():
		node.playing = node.name == track
	
#	if $Music.get_node_or_null(track) != null and track != "stop":
#		$Music.get_node(track).play()
	
	



