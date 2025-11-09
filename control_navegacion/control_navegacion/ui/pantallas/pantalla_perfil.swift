//
//  pantalla_perfil.swift
//  control_navegacion
//
//  Created by alumno on 16/10/25.
//

import Foundation 
import SwiftUI

struct PantallaPerfil: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea() // Fondo negro global
            
            VStack(alignment: .leading, spacing: 20){
                if let usuario_actual = controlador.usuario_actual {
                    Text("Nombre: \(usuario_actual.name)")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.green) // Acento verde
                    
                    Text("Usuario: @\(usuario_actual.username)")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Text("Correo: \(usuario_actual.email)")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                    Spacer()
                } else {
                    Text("Cargando información del usuario...")
                        .foregroundColor(.gray)
                }
            }
            .padding()
        }
    }
}

#Preview {
    PantallaPerfil()
        .environment(ControladorGeneral())
}
