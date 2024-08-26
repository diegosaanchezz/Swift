//
//  AppiOSApp.swift
//  AppiOS
//
//  Created by Diego Sánchez Schimmelfennig on 22/08/24.
//

import SwiftUI
// La vista se llama desde aqui, desde este archivo
@main // Tiene este @main, por que se refiere a que es la pantalla principal 
// Esto es una estructura
struct AppiOSApp: App {
    var body: some Scene { // Tiene una variable que se llama body, que lo que implementa es la escena
        WindowGroup {
            ContentView() // Lo que llama es el ContentView, que probablemente es la estructura 
        }
    }
}
