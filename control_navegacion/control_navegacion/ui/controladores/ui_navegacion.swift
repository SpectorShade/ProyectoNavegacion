//
//  ui_navegacion.swift
//  control_navegacion
//
//  Created by Jadzia Gallegos on 29/09/25.
//

import SwiftUI

enum Pestañas{
    case Configuracion
    case Galeria
    case Noticias
    case Inicio
}

struct NavegacionPrincipal: View {
    @State var pestaña_actual: Pestañas = .Inicio
    
    var body: some View {
        TabView(selection: $pestaña_actual){
            Tab("Watch Now", systemImage: "play", value: .Inicio){
                NavigationStack{
                    PantallaInicio(pestaña_actual: $pestaña_actual)
                }
            }
            .badge("STFU")
            
            Tab("Gallery", systemImage: "photo.stack", value: .Galeria){
                NavigationStack{
                    PantallaGaleria()
                }
            }
            .badge("$")
            
            Tab("Noticias", systemImage: "newspaper", value: .Noticias){
                NavigationStack{
                    PantallaNoticias()
                }
            }
            .badge(noticias.count)
            
            Tab("System", systemImage: "gear", value: .Configuracion){
                NavigationStack{
                    PantallaConfiguracion()
                }
            }
            .badge("!")
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}


#Preview {
    NavegacionPrincipal()
}




