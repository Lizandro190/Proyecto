class_name BuildingUbication extends RefCounted

var current_build: Build

func enter_build(build: Build) -> void:
	current_build = build

func exit_build(build: Build) -> void:
	if current_build == build:
		current_build = null

func is_in_build() -> bool:
	return current_build != null
