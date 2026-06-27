class_name PlayerWork extends Node

enum WORKS {
	DESEMPLEADO,
	MINERO,
	TALADOR,
	MAESTRO,
	COCINERO,
	ESTUDIANTE,
	DOCTOR,
}

const WORKS_NAMES = [
	"DESEMPLEADO",
	"MINERO",
	"TALADOR",
	"MAESTRO",
	"COCINERO",
	"ESTUDIANTE",
	"DOCTOR",
]

var work: WORKS = WORKS.DESEMPLEADO

func get_name_work() -> String:
	return (WORKS_NAMES[work])
