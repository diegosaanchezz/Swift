//
//  ButtonExample.swift
//  Exercises Xcode
//
//  Created by Diego Sánchez Schimmelfennig on 26/08/24.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        // Con este boton lo que dice es Hola y cuando lo presionas imprime un Hola
        Button("Hola"){
            print("Hola")
        }
        // En este boton tiene la acción de imprimir el hola como estas y El mensaje que sale en el boton es boton, tiene una anchura y una altura, tiene un color de letra, tambien el boton tiene un fondo y tiene un corner radious que sirve para que el boton tenga radio y salga circular en vez de que salga como un rectangulo con sus bordes en punta
        Button(action: {print("Hola como estas?")}, label: {
            Text("Boton").frame(width: 65, height: 30).foregroundColor(.white).background(.gray).cornerRadius(20)
        })
    }
}

struct Counter: View{
    // Cada vez que corre la aplicación se reinicia la aplicacion entonces se reinicia la variable asi que necesitamos poner el @State para que esto funcione, con el arroba state ya podemos acceder y modificar las variables
    @State var suscribersNumber = 0 // La variable se tiene que poner por encima de la vista por que si la pones abajo ya no va a funcionar la variable 
    var body: some View{
        // Se crea el boton con la acción de que +1 a la variable cada vez que se presiona el boton y lo demas en label es para ponerle estilo al boton
        Button(action: {
            suscribersNumber += 1
        }, label: {
            Text("Suscriptores: \(suscribersNumber)").bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(height:50).foregroundColor(.white).background(.red).cornerRadius(10)
        })
    }
}
#Preview {
    ButtonExample()
}

#Preview {
    Counter()
}
