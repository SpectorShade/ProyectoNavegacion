//
//  pantalla_3.swift
//  boceto_2
//
//  Created by Jadzia Gallegos on 22/09/25.
//

import SwiftUI

struct PantallaOpciones: View {
    @State var valor_slider = 50.0
    
    var body: some View {
        ScrollView{
            VStack{
                Text("Hola mundo el valor del slider es: \(valor_slider)")
                Slider(value: $valor_slider, in: 0...100)
                
            }
        }
        
    }
}

#Preview {
    PantallaOpciones()
        .environment(ControladorBasico())
}

