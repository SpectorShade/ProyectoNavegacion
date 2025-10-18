//
//  Pantalla Inicio
//  control_navegacion
//
//  Created by Jadzia Gallegos on 29/09/25.
//

import SwiftUI


struct PantallaInicio: View{
    var body: some View{
        NavigationStack{
            VStack{
                Text("Bienvenidos al Himalaya")
                
                NavigationLink {
                    PantallaConfiguracion()
                } label: {
                    Text("Ir a pantalla configuracion")
                }
                
                NavigationLink {
                    PantallaGaleria()
                } label: {
                    Text("Ir a pantalla galeria")
                }

                NavigationLink {
                    PantallaNoticias()
                } label: {
                    Text("Ir a pantalla noticias")
                }
                
                NavigationLink {
                    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "No encontrado"))
                } label: {
                    Text("Ir a pantalla publicación")
                }
                
                NavigationLink {
                    PantallaPerfil()
                } label: {
                    Text("Ir a pantalla perfil de usuario")
                }
            }
        }
    }
}


#Preview {
    PantallaInicio()
}

