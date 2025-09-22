import SwiftUI

struct Botonexto: View {
    var accion: () -> Void
    
    @Binding var texto: String
    
    var place_holder: String = "ADVERTENCIA: NO HAY CALIENTASILLAS"
    var etiqueta: String = "NO HAY ETIQUETA"
    
    var body: some View {
        VStack{
            TextField(place_holder, text: $texto)
                .frame(width: 250)
                .multilineTextAlignment(.center)
            
            Button(action: accion){
                HStack{
                    Text(etiqueta)
                        .aspectRatio(16/9, contentMode: .fit)
                    Image(systemName: "paperplane.fill")
                }
                .onTapGesture {
                    
                    
                }
                
            }
        }
    }
}


#Preview {
    @Previewable @State var texto = ""
    
    Botonexto(accion: { print("HOla mundo") }, texto: $texto )
}

