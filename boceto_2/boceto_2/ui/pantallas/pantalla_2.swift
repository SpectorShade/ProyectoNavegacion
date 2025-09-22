//
//  pantalla_2.swift
//  boceto_2
//
//  Created by Jadzia Gallegos on 22/09/25.
//

import SwiftUI

struct Pantalla2: View {
    @Environment(ControladorBasico.self) var controlador
    
    var body: some View {
        VStack {
            Image(systemName: "square.and.arrow.up")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("BIenvendio a la pantalla dos donde clicks vale: \(controlador.clicks)")
        }
        .onTapGesture {
            controlador.clicks += 1 ///  clicks.establacer_valor(nuevo_valor)
        }
        .padding()
    }
}

#Preview {
    Pantalla2()
}
