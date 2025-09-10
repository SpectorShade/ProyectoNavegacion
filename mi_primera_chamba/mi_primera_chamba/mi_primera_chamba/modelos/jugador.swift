import Foundation

struct Jugador: Identifiable{
    let id = UUID()
    
    let nombre: String
    let puntuacion: Int
}


let jugadores_falsos = [
    Jugador(nombre: "Pepito Pistoletes", puntuacion: 88),
    Jugador(nombre: "Manolo el del Bombo", puntuacion: 92),
    Jugador(nombre: "Felipe Escupetapias", puntuacion: 76),
    Jugador(nombre: "Luisa la Liosa", puntuacion: 95),
    Jugador(nombre: "Juan Sin Miedo", puntuacion: 83),
    Jugador(nombre: "María la Cachonda", puntuacion: 89),
    Jugador(nombre: "Paco Merengue", puntuacion: 79),
    Jugador(nombre: "Lola Mento", puntuacion: 91),
    Jugador(nombre: "Chema el Estrella", puntuacion: 84),
    Jugador(nombre: "Teresa la Traviesa", puntuacion: 87)
]

