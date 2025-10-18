//
//  pantalla_configuracion.swift
//  control_navegacion
//
//  Created by Jadzia Gallegos on 29/09/25.
//

import Foundation
import SwiftUI

truct PantallaConfiguracion: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea() // Fondo negro
            
            VStack {
                Text("Pantalla de configuración")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.green) // Acento verde
            }
            .padding()
        }
    }
}

#Preview {
    PantallaConfiguracion()
}
