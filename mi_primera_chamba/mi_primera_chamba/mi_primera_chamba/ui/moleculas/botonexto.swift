import SwiftUI

struct Botonexto: View {
    var accion: () -> Void
    
    @Binding var texto: String
    var place_holder: String = "ADVERTENCIA: NO HAY CALIENTASILLAS"
    var etiqueta: String = "NO HAY ETIQUETA"
    
    var body: some View {
        HStack{
            TextField(place_holder, text: $texto)
                .frame(width: 250)
                .multilineTextAlignment(.center)
            
            Button(action: accion){
                VStack{
                    Text(etiqueta)
                    Image(systemName: "paperplane.fill")
                }
                
            }
        }
    }
}


#Preview {
    @Previewable @State var texto = ""
    
    Botonexto(accion: { print("HOla mundo") }, texto: $texto )
}

