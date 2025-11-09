//
//  Pantalla Inicio
//  control_navegacion
//
//  Created by Jadzia Gallegos on 29/09/25.
//

import Foundation
import SwiftUI

struct PantallaInicio: View{
    var body: some View{
        ZStack {
            Color.black.ignoresSafeArea() // Fondo negro global
            
            NavigationStack{
                VStack(spacing: 20){
                    Text("Bienvenidos al Himalaya")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.green) // Acento verde
                    
                    NavigationLink {
                        PantallaConfiguracion()
                    } label: {
                        Text("Ir a pantalla configuración")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green.opacity(0.3))
                            .cornerRadius(8)
                    }
                    
                    NavigationLink {
                        PantallaGaleria()
                    } label: {
                        Text("Ir a pantalla galería")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green.opacity(0.3))
                            .cornerRadius(8)
                    }

                    NavigationLink {
                        PantallaNoticias()
                    } label: {
                        Text("Ir a pantalla noticias")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green.opacity(0.3))
                            .cornerRadius(8)
                    }
                    
                    NavigationLink {
                        PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "No encontrado"))
                    } label: {
                        Text("Ir a pantalla publicación")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green.opacity(0.3))
                            .cornerRadius(8)
                    }
                    
                    NavigationLink {
                        PantallaPerfil()
                    } label: {
                        Text("Ir a pantalla perfil de usuario")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green.opacity(0.3))
                            .cornerRadius(8)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    PantallaInicio()
        .environment(ControladorGeneral())
}
