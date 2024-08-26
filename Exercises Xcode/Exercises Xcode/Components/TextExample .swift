//
//  TextExample .swift
//  Exercises Xcode
//
//  Created by Diego Sánchez Schimmelfennig on 25/08/24.
//

// Con option+command+corchetes  Se pueden mover lineas para arriba y para abajo
// Con command+shift+corchetes nos podemos mover entre archivos
import SwiftUI

struct TextExample_: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.largeTitle)
            Text("Custom").font(.system(size: 14, weight: .bold, design: .monospaced)).italic().bold().underline().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) // Con el .font podemos personalizar la letra, weight se refiere a la anchura, design se refiere al tipo de letra
            Text("Diego Diego Diego Diego").frame(width: 50).lineLimit(3).lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/) // el line limit es para especificar un limite de lineas que puede ocupar el text, y se pondran los 3 puntitos refiriendose que hay mas información pero no se esta mostrando por que hay un limite te linea, el line spacing es para poner un espacio entre cada renglón
        }
    }
}

#Preview {
    TextExample_()
}
