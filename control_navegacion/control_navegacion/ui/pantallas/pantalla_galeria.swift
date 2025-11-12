//
//  pantalla_galeria.swift
//  control_navegacion
//
//  Created by Jadzia Gallegos on 29/09/25.
//

import Foundation
import SwiftUI

struct PantallaGaleria: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea() // Fondo negro
            
            VStack(spacing: 20) {
                Text("Pantalla de galería")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.green) // Acento verde
                
                NavigationLink{
                    PantallaInicio(pestaña_actual: .constant(.Inicio))
                } label: {
                    Text("Ir a inicio")
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

#Preview {
    PantallaGaleria()
        .environment(ControladorGeneral())
}
