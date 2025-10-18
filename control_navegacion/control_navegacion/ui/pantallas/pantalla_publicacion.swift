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
        ZStack {
            Color.black.ignoresSafeArea() // Fondo negro global
            
            VStack(alignment: .leading, spacing: 20){
                if let publicacion = controlador.publicacion_actual {
                    Text(publicacion.title)
                        .font(.title)
                        .bold()
                        .foregroundColor(.green) // Título en verde
                    
                    if let usuario = controlador.usuario_actual {
                        Text("Autor: \(usuario.name)")
                            .font(.subheadline)
                            .foregroundColor(.green) // Autor en verde también
                    } else {
                        Text("Cargando autor...")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    Text(publicacion.body)
                        .font(.body)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    
                    Divider()
                        .background(Color.green.opacity(0.5))
                    
                    Text("Comentarios:")
                        .font(.headline)
                        .foregroundColor(.green)
                    
                    if controlador.comentarios.isEmpty {
                        Text("Cargando comentarios...")
                            .foregroundColor(.gray)
                    } else {
                        ScrollView{
                            VStack(alignment: .leading, spacing: 15){
                                ForEach(controlador.comentarios){ comentario in
                                    VStack(alignment: .leading, spacing: 5){
                                        Text(comentario.name)
                                            .bold()
                                            .foregroundColor(.green)
                                        Text(comentario.body)
                                            .font(.body)
                                            .foregroundColor(.white)
                                        Text("Por: \(comentario.email)")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    }
                                    .padding()
                                    .background(Color.green.opacity(0.1))
                                    .cornerRadius(10)
                                }
                            }
                        }
                    }
                } else {
                    Text("Selecciona una publicación.")
                        .foregroundColor(.white)
                }
            }
            .padding()
        }
    }
}

#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "No encontrado"))
        .environment(ControladorGeneral())
}
