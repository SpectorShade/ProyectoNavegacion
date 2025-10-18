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
        VStack(alignment: .leading, spacing: 20){
            if let usuario = app.usuario_actual {
                Text("Nombre: \(usuario.name)")
                    .font(.title2)
                    .bold()
                
                Text("Usuario: @\(usuario.username)")
                    .font(.headline)
                
                Text("Correo: \(usuario.email)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Spacer()
            } else {
                Text("Cargando información del usuario...")
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

#Preview {
    PantallaPerfil()
        .environment(ControladorGeneral())
}
