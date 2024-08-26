//
//  ImageExample.swift
//  Exercises Xcode
//
//  Created by Diego Sánchez Schimmelfennig on 25/08/24.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("swiftlogo").resizable().frame(width: 150, height: 160).scaledToFit() // Scale to fit la imagen se va a meter en el cuadrito que tiene y con scale to fill, se va a estirar hasta que cumpla la altura necesaria aunque se salga del cuadrito
        Image(systemName: "figure.run").resizable().frame(width: 80, height: 100)
    }
}

#Preview {
    ImageExample()
}
