//
//  pantalla_noticias.swift
//  control_navegacion
//
//  Created by Jadzia Gallegos on 29/09/25.
//
import SwiftUI

struct PantallaNoticias: View {
    @State var lista_noticias = noticias
    @Environment(ControladorGeneral.self) var controlador
        
    var body: some View {
        if(controlador.publicaciones.isEmpty){
            Text("Estamos descargando los datos, por favor espera.")
        }
        else{
            NavigationStack{
                ScrollView{
                    LazyVStack{
                        ForEach(controlador.publicaciones) { publicacion in
                            
                            NavigationLink{
                                //PantallaNota(noticia: noticia)
                            } label: {
                                Encabezado(publicacion: publicacion)
                            }
                            .onTapGesture {
                                controlador.publicacion_seleccionada(publicacion.id)
                            }
                            .buttonStyle(.plain)
                            
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

