//
//  pantalla_noticias.swift
//  control_navegacion
//
//  Created by Jadzia Gallegos on 29/09/25.
//

import Foundation
import SwiftUI

struct PantallaNoticias: View {
    @State var lista_noticias = noticias
    @Environment(ControladorGeneral.self) var controlador
        
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea() // Fondo negro 
            
            if controlador.publicaciones.isEmpty {
                Text("Estamos descargando los datos, por favor espera.")
                    .foregroundColor(.white)
                    .padding()
            } else {
                NavigationStack{
                    ScrollView{
                        LazyVStack(spacing: 15){
                            ForEach(controlador.publicaciones) { publicacion in
                                
                                NavigationLink{
                                    PantallaPublicacion(publicacion_actual: publicacion)
                                } label: {
                                    Encabezado(publicacion: publicacion)
                                        .padding()
                                        .background(Color.green.opacity(0.1))
                                        .cornerRadius(10)
                                }
                                .onTapGesture {
                                    controlador.publicacion_seleccionada(publicacion.id)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding()
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
