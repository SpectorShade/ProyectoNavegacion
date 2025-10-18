//
//  pantalla_noticia_en_singular.swift
//  control_navegacion
//
//  Created by Jadzia Gallegos on 01/10/25.
//

import SwiftUI

struct PantallaNota: View {
    @State var noticia: Noticia
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea() // Fondo negro 
            
            VStack(spacing: 20){
                Text(noticia.titular)
                    .fontWeight(.bold)
                    .fontWidth(.expanded)
                    .foregroundColor(.green) // Título en verde
                
                HStack(alignment: .top, spacing: 20){
                    Image(systemName: "square.and.arrow.down")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .foregroundColor(.green)
                    
                    Text(noticia.cuerpo)
                        .foregroundColor(.white) // Cuerpo en blanco
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    PantallaNota(noticia: noticias[3])
}

