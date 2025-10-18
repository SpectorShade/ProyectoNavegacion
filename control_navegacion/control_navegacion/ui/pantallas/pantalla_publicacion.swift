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
    
    var body: some View{
        VStack(alignment: .leading, spacing: 20){
            if let publicacion = app.publicacion_actual{
                Text(publicacion.title)
                    .font(.title)
                    .bold()
                
                if let usuario = app.usuario_actual{
                    Text("Autor: \(usuario.name)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                } else {
                    Text("Cargando autor...")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Text(publicacion.body)
                    .font(.body)
                    .padding(.bottom, 10)
                
                Divider()
                
                Text("Comentarios:")
                    .font(.headline)
                
                if app.comentarios.isEmpty{
                    Text("Cargando comentarios...")
                        .foregroundColor(.gray)
                }
                else{
                    ScrollView{
                        VStack(alignment: .leading, spacing: 15){
                            ForEach(app.comentarios){ comentario in
                                VStack(alignment: .leading, spacing: 5){
                                    Text(comentario.name)
                                        .bold()
                                    Text(comentario.body)
                                        .font(.body)
                                    Text("Por: \(comentario.email)")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                .padding()
                                .background(Color(white: 0.95))
                                .cornerRadius(10)
                            }
                        }
                    }
                }
            }
            else{
                Text("Selecciona una publicación.")
            }
        }
        .padding()
    }
}

#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "No encontrado"))
        .environment(ControladorGeneral())
}
