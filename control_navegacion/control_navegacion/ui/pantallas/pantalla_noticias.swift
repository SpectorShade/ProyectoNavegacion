//
//  pantalla_noticias.swift
//  control_navegacion
//
//  Created by Jadzia Gallegos on 29/09/25.
//

import Foundation
import SwiftUI

struct PantallaNoticias: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea() // Fondo negro
            
            if controlador.publicaciones.isEmpty {
                Text("Estamos descargando los datos, por favor espera.")
                    .foregroundColor(.white)
                    .padding()
            } else {
                NavigationStack {
                    ScrollView {
                        LazyVStack(spacing: 15) {
                            ForEach(controlador.publicaciones) { publicacion in
                                NavigationLink(value: publicacion.id) {
                                    Encabezado(publicacion: publicacion)
                                        .padding()
                                        .background(Color.green.opacity(0.1))
                                        .cornerRadius(10)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding()
                    }
                    
                    .navigationDestination(for: Int.self) { id in
                        PantallaPublicacion()
                            .onAppear {
                                controlador.publicacion_seleccionada(id)
                            }
                    }
                }
            }
        }
    }
}

#Preview {
    PantallaNoticias()
        .environment(ControladorGeneral())
}
