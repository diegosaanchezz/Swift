//
//  LabelExample.swift
//  Exercises Xcode
//
//  Created by Diego Sánchez Schimmelfennig on 26/08/24.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label("Avion", systemImage: "airplane") // Con este label podemos tener un texto junto con una imagen o en este caso un icono de la aplicación y por eso necesitamos usar systemImage
        // En este label, title icon podemos hacer que una imagen quede como el label y systemImage pero asi lo hacemos con una imagen que es la que nosotros queramos escoger 
        Label(title: { /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/ }, icon: { Image("swiftlogo").resizable().scaledToFit().frame(height: 30) }
        )
    }
}

#Preview {
    LabelExample()
}
