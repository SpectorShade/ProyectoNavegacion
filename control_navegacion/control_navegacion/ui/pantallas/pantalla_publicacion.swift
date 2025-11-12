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

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(alignment: .leading, spacing: 20) {
                if let publicacion = controlador.publicacion_actual {
                    Text(publicacion.title)
                        .font(.title)
                        .bold()
                        .foregroundColor(.green)

                    if let usuario = controlador.usuario_actual {
                        NavigationLink{
                            PantallaPerfil()
                        } label: {
                            Text("Autor: \(usuario.name)")
                                .font(.subheadline)
                                .foregroundColor(.green)
                        }
                    } else {
                        Text("Cargando autor...")
                            .foregroundColor(.gray)
                    }

                    Text(publicacion.body)
                        .foregroundColor(.white)

                    Divider()
                        .background(Color.green.opacity(0.5))

                    Text("Comentarios:")
                        .font(.headline)
                        .foregroundColor(.green)

                    if controlador.comentarios.isEmpty {
                        Text("Cargando comentarios...")
                            .foregroundColor(.gray)
                    } else {
                        ScrollView {
                            ForEach(controlador.comentarios) { comentario in
                                VStack(alignment: .leading, spacing: 5) {
                                    Text(comentario.name)
                                        .bold()
                                        .foregroundColor(.green)
                                    Text(comentario.body)
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
    PantallaPublicacion()
        .environment(ControladorGeneral())
}
