//
//  moelcula_encabezado.swift
//  control_navegacion
//
//  Created by Jadzia Gallegos on 29/09/25.
//

import SwiftUI


struct Encabezado: View {
    var noticia_presentar: Noticia = Noticia(
        titular: "404|", cuerpo: "No encontrado", imagen: "una_salchipapa", prioridad: .importante
    )
    
    var body: some View {
        HStack(spacing: 10){
            Image(systemName: "list.bullet.rectangle")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            
            VStack{
                HStack{
                    Text(noticia_presentar.titular)
                    Spacer()
                }
                
                HStack{
                    Text(noticia_presentar.cuerpo)
                    Spacer()
                }
            }
        }
        .padding(15)
    }
}

#Preview {
    Encabezado()
}
