//
//  pantalla_3.swift
//  boceto_2
//
//  Created by Jadzia Gallegos on 22/09/25.
//

import SwiftUI

enum SaboresPalomitas: String, CaseIterable, Identifiable{
    case Mantequilla
    case Natural
    case QuesoChedar
    case Doritos
    case Proteina
    
    var id: Self { self }
}


struct PantallaOpciones: View {
    @State var quiere_palomitas: Bool = false
    @State var sabor_de_palomitas: SaboresPalomitas = .Mantequilla
    
    var body: some View {
        ScrollView{
            VStack{
                Text("Formulairo para calcular la cantida de palomitas")
                
                HStack{
                    Spacer()
                    Text("¿Quieres palomitas?")
                    Spacer()
                    CajaSeleccionada(checado: $quiere_palomitas, tamaño: 25)
                    Spacer()
                }
                
                HStack{
                    Text("¿Cuál sabor?")
                    
                    Picker(selection: $sabor_de_palomitas, label: Text("Sabor de palomitas")) {
                        Text("Mantequilla").tag(SaboresPalomitas.Mantequilla)
                        Text("Naturales").tag(SaboresPalomitas.Natural)
                    }
                    
                }
                
                /// Text("Hola mundo el valor del slider es: \(valor_slider)")
                /// Slider(value: $valor_slider, in: 0...100)
                
            }
        }
        
    }
}

#Preview {
    PantallaOpciones()
        .environment(ControladorBasico())
}

