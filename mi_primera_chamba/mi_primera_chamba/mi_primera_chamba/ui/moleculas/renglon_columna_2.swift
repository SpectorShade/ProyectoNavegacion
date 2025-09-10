//
//  renglon_columna_2.swift
//  mi_primera_chamba
//
//  Created by Jadzia Gallegos on 10/09/25.
//
import SwiftUI

struct RenglonColumna2: View{
    var columna_1: String
    var columna_2: String
    
    var body: some View{
        HStack(alignment: .firstTextBaseline){
            Text(columna_1)
                .padding(15)
                .multilineTextAlignment(.trailing)
                .frame(width: 200, alignment: .leading)
                .foregroundStyle(Color.blue)
                .background(Color.red)
                //.mask(Circle().offset(x: 35))
            
            Spacer()
            
            Text(columna_2)
                .padding(.horizontal, 20)
        }
    }
}

#Preview {
    RenglonColumna2(columna_1: "PLACEHOLDER", columna_2: "PLACE HOLDER 2")
}
