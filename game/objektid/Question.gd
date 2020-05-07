extends Control
export (String, FILE, "*.tscn") var level_scene
export (String) var question
export (String) var answer1
export (String) var answer2
export (String) var answer3


var questionList1 = { 
	1:{
	"number": "1.",
	"label": "Mida peaksid oma arvutis olevate oluliste failidega tegema? ",
	"answer1": "Mitte kellelegi neist rääkima.",
	"answer2": "Salvestama need igaks juhuks mitmesse erinevasse kohta.",
	"answer_right": "Tegema neist varukoopiad"

	},
	2:{
	"number": "2.",
	"label": "Kas veebis avaldatud pilti on võimalik kustutada?",
	"answer2": "Jah, alati.",
	"answer_right": "Ei ole.",
	"answer1": "Pole teada."
	},
	3:{
	"number": "3.",
	"label": "Kas internetist leitud pilte võib sotsiaalmeedias vabalt avaldada?",
	"answer_right": "Võib kui piltide omanik seda lubab.",
	"answer1": "Ei või mitte kunagi.",
	"answer2": "Internetis võib kõike vabalt avaldada."
	},
	4:{
	"number": "4.",
	"label": "Kuidas reageerid kui sõber kirjutab sulle Messengeris: “Olen lollakas ja hüppan aknast alla.”?",
	"answer1": "Kirjutad vastuseks naeratavad emojid.",
	"answer_right": "Helistad sõbrale ja uurid, kas see oli ikka tema ise kes kirjutas.",
	"answer2": "Ignoreerid teda."
	},
	5:{
	"number": "5.",
	"label": "Sõber tahab sinult sinu Facebooki konto parooli saada. Kas annad?",
	"answer1": "Kindlasti - ta ju hea sõber!",
	"answer_right": "Üritad leida viisaka võimaluse keelduda.",
	"answer2": "Annad sõbrale vale parooli."
	}
}
onready var button_right = get_node("VASTA")

func _ready():

	randomize()

	var randomList1 = questionList1[randi() % questionList1.size()+1]

	question = randomList1.get("label")	
	answer1 = randomList1.get("answer1")
	answer2 = randomList1.get("answer2")
	answer3 = randomList1.get("answer_right")

	get_node("Question").set_text(question)
	get_node("Vastusevariant1").set_text(answer1)
	get_node("Vastusevariant2").set_text(answer2)
	get_node("Vastusevariant3").set_text(answer3)


		
	button_right.connect("pressed", self, "_on_VASTA_pressed", [get_name()])
var counter = 0	

func _on_Vastus1_pressed():
	if answer1 == answer3:
		counter += 1
		print(counter)
	else:
		print("Ei ole õige vastus")
	
func _on_Vastus2_pressed():
	
	if answer2 == answer3:
		counter += 1
		print(counter)
	else:
		print("EI ole õige vastus")

func _on_Vastus3_pressed():
	
	if answer3 == answer3:
		counter += 1
		print(counter)
	else:
		print("Ei ole õige vastus")
	

func _lihtsalt():
	if counter >= 1:
		get_tree().change_scene(level_scene)
	else:
		get_tree().change_scene("res://objektid/Question_AnswerWrong.tscn")


func _on_VASTA_pressed():
	if counter >= 1:
		get_tree().change_scene("res://objektid/Question_AnswerRight.tscn")
	else:
		get_tree().change_scene("res://objektid/Question_AnswerWrong.tscn")	
