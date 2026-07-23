class_name BuildsAsigned extends RefCounted

var work_build: Build
var house_build: Build
var leisure_build: Build

func has_house_build() -> bool:
	return house_build != null
	
func has_work_build() -> bool:
	return work_build != null
	
func has_lesire_build() -> bool:
	return leisure_build != null

func set_work_build(build: Build) -> void:
	work_build = build

func set_house_build(build: Build) -> void:
	house_build = build
