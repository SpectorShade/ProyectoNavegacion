//
//  mi_primera_chambaApp.swift
//  mi_primera_chamba
//
//  Created by Jadzia Gallegos on 03/09/25.
//

import SwiftUI

@main
struct mi_primera_chambaApp: App {
    @State var controlador_de_juego = ControlJuego()
    
    var body: some Scene {
        WindowGroup {
            Pantalla()
                .environment(controlador_de_juego)
        }
    }
}
