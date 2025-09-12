
import SwiftUI

struct Spoiler: View{
    var texto = ""
    
    @State var mostrar: Bool = false
    
    var body: some View{
        Text("SPOILER: \(texto)")
            .onTapGesture {
                mostrar = !mostrar
            }
            .foregroundStyle((mostrar) ? Color.black : Color.white)
            .padding([.top], 15)
    }
    
}

#Preview {
    Spoiler(texto: "Hola mundo")
}
