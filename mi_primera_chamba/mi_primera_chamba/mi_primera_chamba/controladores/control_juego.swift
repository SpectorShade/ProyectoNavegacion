//
//  control_juego.swift
//  mi_primera_chamba
//
//  Created by Jadzia Gallegos on 12/09/25.
//

import SwiftUI

@Observable
@MainActor
class ControlJuego{
    var estado_actual: EstadosJuego = EstadosJuego.esta_jugando
    
    var lista_jugadores = jugadores_falsos
    
    var numero_secreto = Int.random(in: 1...100)
    
    var intentos: Int = 0
    
    init() {}
    
    func validar_intento(_ intento: String) -> String{
        let numero_del_usuario = Int(intento)
        
        if let numero_del_usuario = numero_del_usuario{
            intentos += 1
            
            if(numero_del_usuario == numero_secreto){
                estado_actual = .ha_ganado
                return "Has ganado"
            }
            else if (numero_del_usuario > numero_secreto){
                return "Tu intento es mayor"
            }
            else {
                return "Tu intento es menor"
            }
        }
        else {
            return "Por favor introduce un numero valido"
        }
    }
    
    func reiniciar_juego(){
        intentos = 0
        numero_secreto = Int.random(in: 1...100)
        
        estado_actual = .esta_jugando
    }
    
    /*
    func loop_juego(){
        switch(estado_actual){
            case .esta_jugando:
                validar_intento()
            
            case .ha_ganado: // Aqui reiniciamos variables
                intento_del_usuario = 0
                estado_del_juego = .esta_jugando
                numero_aleatorio = Int.random(in: 1...100)
                comentario = ""
                entrada_del_usuario = ""
        }
    }
     */
}
