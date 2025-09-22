import SwiftUI


struct Leyenda: View {
    @Binding var peligro: Bool
    var texto: String
    
    var body: some View {
        Image(imagen_1)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200)
            .clipShape(Circle())
        
        ZStack{
            Circle()
                .border(.blue)
            Rectangle()
                .foregroundStyle(Color.cyan)
                .frame(width: 100, height: 50)
            Rectangle()
                .foregroundStyle(Color.cyan)
                .frame(width: 50, height: 100)
        }
        
       
        
        Text(texto)
            .foregroundStyle((peligro) ? Color("color_a"): Color.black)
    }
}

#Preview {
    @Previewable @State var peligro = true
    Leyenda(peligro: $peligro, texto: "HOla mnundo")
}
