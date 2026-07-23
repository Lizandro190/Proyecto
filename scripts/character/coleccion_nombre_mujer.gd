class_name ColeccionNombresMujer extends RefCounted

static var nombres: Array[String] = [
	"Ada", "Adela", "Adriana", "Agata", "Agustina", "Aitana", "Alba",
	"Alessandra", "Alexandra", "Alicia", "Alina", "Alma", "Amanda",
	"Amelia", "Ana", "Anabel", "Andrea", "Angela", "Angélica",
	"Antonia", "Araceli", "Ariadna", "Ariana", "Aurora",
	
	"Barbara", "Beatriz", "Belén", "Bianca", "Blanca", "Brenda",
	"Camila", "Carla", "Carlota", "Carmen", "Carolina", "Catalina",
	"Cecilia", "Celeste", "Celia", "Clara", "Claudia", "Constanza",
	"Cristina",
	
	"Dalia", "Daniela", "Danna", "Debora", "Diana", "Dolores",
	"Dominga", "Dora",
	
	"Elena", "Eliana", "Elisa", "Elisabeth", "Ella", "Ema",
	"Emilia", "Emma", "Erika", "Estela", "Esther", "Eva",
	
	"Fabiana", "Fabiola", "Fátima", "Fernanda", "Fiona",
	"Florencia", "Frida",
	
	"Gabriela", "Gaia", "Gema", "Genoveva", "Gloria", "Graciela",
	
	"Helena", "Hilda", "Irene", "Inés", "Iris", "Isabel",
	"Isabella", "Ivana",
	
	"Jacinta", "Jimena", "Josefina", "Julia", "Juliana", "Julieta",
	
	"Karen", "Karla", "Kiara",
	
	"Laura", "Leandra", "Leonor", "Leticia", "Lidia", "Liliana",
	"Lola", "Lorena", "Lucía", "Luisa", "Luna",
	
	"Macarena", "Magdalena", "Maite", "Manuela", "Marcela",
	"Mariana", "Marina", "Marta", "Martina", "Matilda", "Maya",
	"Micaela", "Milena", "Mónica",
	
	"Nadia", "Natalia", "Nerea", "Nicole", "Nina", "Noelia",
	"Nora", "Norma",
	
	"Olga", "Olivia", "Oriana", "Ofelia",
	
	"Paloma", "Paola", "Patricia", "Paulina", "Paz", "Penélope",
	
	"Queralt",
	
	"Raquel", "Rebeca", "Regina", "Renata", "Rita", "Rocío",
	"Rosa", "Rosalía",
	
	"Sabrina", "Salma", "Samantha", "Sandra", "Sara", "Selena",
	"Serena", "Silvia", "Sofía", "Sol", "Susana",
	
	"Tamara", "Tatiana", "Teresa", "Triana",
	
	"Valentina", "Valeria", "Vanessa", "Vera", "Verónica",
	"Victoria", "Violeta",
	
	"Ximena", "Yolanda", "Zoe", "Zulema"
]

static var apellidos: Array[String] = [
	"Acosta", "Aguilar", "Alarcón", "Alonso", "Álvarez",
	"Amador", "Andrade", "Arias", "Arroyo",
	
	"Barrios", "Beltrán", "Benítez", "Blanco", "Bravo",
	"Bustos",
	
	"Cabrera", "Calderón", "Campos", "Cano", "Carrasco",
	"Carrillo", "Castillo", "Castro", "Cervantes", "Cisneros",
	"Contreras", "Cornejo", "Cortés", "Cruz",
	
	"Delgado", "Díaz", "Domínguez", "Durán",
	
	"Escobar", "Espinosa", "Estrada",
	
	"Fajardo", "Fernández", "Figueroa", "Flores", "Fuentes",
	
	"Galindo", "Gallardo", "García", "Garza", "Gómez",
	"González", "Guerrero", "Gutiérrez",
	
	"Hernández", "Herrera", "Hidalgo",
	
	"Ibarra", "Iglesias",
	
	"Jiménez", "Juárez",
	
	"Lara", "León", "López", "Lorenzo",
	
	"Maldonado", "Márquez", "Martínez", "Medina", "Mendoza",
	"Méndez", "Molina", "Montero", "Montes", "Morales",
	"Moreno", "Muñoz",
	
	"Navarro", "Nava", "Nieto", "Núñez",
	
	"Ortega", "Ortiz",
	
	"Pacheco", "Palacios", "Paredes", "Parra", "Pascual",
	"Pérez", "Peña", "Ponce",
	
	"Quintero",
	
	"Ramírez", "Ramos", "Reina", "Reyes", "Rivas",
	"Rivera", "Robles", "Rodríguez", "Rojas", "Romero",
	"Rosales", "Rubio",
	
	"Salas", "Salazar", "Sánchez", "Santana", "Santos",
	"Serrano", "Silva", "Soto", "Suárez",
	
	"Tapia", "Tejada", "Torres", "Treviño",
	
	"Valencia", "Valdés", "Valencia", "Vargas", "Vázquez",
	"Vega", "Velasco", "Velázquez", "Vera", "Vidal",
	"Villanueva",
	
	"Zamora", "Zapata", "Zúñiga"
]

static func get_nombre_aleatorio() -> String:
	return nombres.pick_random()

static func get_apellido_aleatorio() -> String:
	return apellidos.pick_random()
