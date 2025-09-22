//
//  pantalla_1.swift
//  boceto_2
//
//  Created by Jadzia Gallegos on 22/09/25.
//
import SwiftUI

struct Pantalla1: View {
    @Environment(ControladorBasico.self) var controlador
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! cantidad de clicks es: \(controlador.clicks)")
        }
        .onTapGesture {
            controlador.clicks += 1 ///  clicks.establacer_valor(nuevo_valor)
        }
        .padding()
    }
}

#Preview {
    Pantalla1()
        .environment(ControladorBasico())
}
