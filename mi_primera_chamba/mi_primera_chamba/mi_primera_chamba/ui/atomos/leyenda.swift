import SwiftUI


struct Leyenda: View {
    @Binding var peligro: Bool
    var texto: String
    
    var body: some View {
        Text(texto)
            .foregroundStyle((peligro) ? Color.red: Color.black)
    }
}

#Preview {
    @Previewable @State var peligro = true
    Leyenda(peligro: $peligro, texto: "HOla mnundo")
}
