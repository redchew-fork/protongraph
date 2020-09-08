extends ConceptNode


func _init() -> void:
	unique_id = "convert_heightmap_to_texture"
	display_name = "Heightmap to Texture"
	category = "Converters/Heightmap"
	description = "Creates a 2D texture from a heightmap object"

	set_input(0, "Heightmap", ConceptGraphDataType.HEIGHTMAP)
	set_output(0, "", ConceptGraphDataType.TEXTURE_2D)


func _generate_outputs() -> void:
	var heightmap: ConceptGraphHeightmap = get_input_single(0, null)
	if heightmap:
		output[0].append(heightmap.get_image())
