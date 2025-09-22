//
//  boceto_2App.swift
//  boceto_2
//
//  Created by Jadzia Gallegos on 22/09/25.
//

import SwiftUI

@main
struct boceto_2App: App {
    @State var controlador = ControladorBasico()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(controlador)
        }
    }
}
