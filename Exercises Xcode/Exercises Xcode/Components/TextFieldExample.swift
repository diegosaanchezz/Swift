//
//  TextFieldExample.swift
//  Exercises Xcode
//
//  Created by Diego Sánchez Schimmelfennig on 26/08/24.
//



// Con command+shift+k podemos abrir el teclado



import SwiftUI

struct TextFieldExample: View {
    @State var email = ""
    var body: some View {
        // El textfield necesita un titlekey que es lo que va a aparecer mientras el usuario no a escrito nada y el Binding va a necesitar un estado que es el que almacene lo que escribe el usuario
        TextField("Escribe tu mail", text: $email).keyboardType(.emailAddress)
    }
}

#Preview {
    TextFieldExample()
}
