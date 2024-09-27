extends CanvasLayer


func set_score(score: int) -> void:
	$Margin/Header/Label.text = str(score)
