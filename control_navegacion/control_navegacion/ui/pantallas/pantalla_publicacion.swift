//
//  pantalla_publicacion.swift
//  control_navegacion
//
//  Created by alumno on 08/10/25.
//
import Foundation
import SwiftUI

struct PantallaPublicacion: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var publicacion_actual: Publicacion
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Titulo: \(publicacion_actual.title)")
                .onAppear{
                    controlador.publicacion_seleccionada(publicacion_actual.id)
                }
            Text("\(publicacion_actual.body)")
            
            if let usuario = controlador.usuario_actual {
                    Text("Por: \(usuario.name)")
                } else {
                    Text("Cargando autor...")
                }
            
            ScrollView{
                VStack{
                    ForEach(controlador.comentarios){comentario in
                        Text("\(comentario)")
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "No encontrado"))
        .environment(ControladorGeneral())
}
