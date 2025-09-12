//
//  juego_adivina_numero.swift
//  mi_primera_chamba
//
//  Created by Jadzia Gallegos on 05/09/25.
//

import SwiftUI


struct JuegoAdivinaNumero: View{
    @Environment(ControlJuego.self) var juego
    @State var entrada_del_usuario: String = ""
    @State var mostrar_spoiler = false
    @State var comentario: String = ""
    @State var leyenda_advertencia = false
    
    var body: some View{
        VStack{
            Spoiler(texto: "Numero \(juego.numero_secreto)")
            
            Spacer()
            
            Text("REGLAS")
                
            Text("Cantidad de intentos: \(juego.intentos)")
            
            Spacer()
            
            Botonexto(accion: {
                if juego.estado_actual != .ha_ganado{
                               comentario = juego.validar_intento(entrada_del_usuario)
                            }
                            
                        },
                      texto: $entrada_del_usuario,
                      place_holder: "Introduce un numero",
                      etiqueta: "Intentar"
                      )
            
            if(juego.estado_actual == .ha_ganado){
                Spacer()
                
                Button(action: {}){
                    Text("Reiniciar juego")
                }
            }
            
            Leyenda(peligro: $leyenda_advertencia, texto: comentario)
            
            Spacer()
            
            VStack{
                RenglonColumna2(columna_1: "Nombre", columna_2: "Puntuacion")
                ForEach(jugadores_falsos){ jugador in
                    RenglonColumna2(columna_1: jugador.nombre, columna_2: "\(jugador.puntuacion)")

                }
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    JuegoAdivinaNumero()
        .environment(ControlJuego())
}

