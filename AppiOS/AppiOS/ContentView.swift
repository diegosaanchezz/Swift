//
//  ContentView.swift
//  AppiOS
//
//  Created by Diego Sánchez Schimmelfennig on 22/08/24.
//

// Esto es la pantalla principal, lo que esta mostrando en pantalla


// Para ver todos los componentes le tenemos que dar en shift+command+l


// con ctrl+i nos identa el codigo


// Cuando creamos un proyecto esto es con lo que nos viene por defecto
import SwiftUI

struct ContentView: View { // estructura que se llama content view
    // La idea de los proyectos es tener vistas, en los body, que van a ser las pantallas de nuestras aplicaciones, directamente desde aqui implementaremos todos los diseños
    var body: some View { // Variable body que implementa una vista
        // Dentro de las llaves vamos a tener todas nuestras vistas
        // Desde aqui implementaremos todos los diseños
        // vertical stack
        VStack { // Cuando nosotros queremos añadir componentes, podemos elegir si queremos poner componentes en fila o en columna, o en el propio eje z, uno delante de otro. se hace a traves de 3 contenedores de vista
            // Esto es una imagen
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            // Hasta aqui llega la imagen
            Text("Hola como estas").bold().frame(width: 100, height: 120) // Estamos cambiando la anchura que ocupa y tambien la alura que ocupa ese texto
            Text("Hola como estas")
            Text("Hola como estas").bold().foregroundColor(.cyan) // estos son dos modificadores que se pueden poner despues del parentesis, bold() es para poner la letra en negritas y el foregrounColor(.cyan) es para poner el texto de un color
            
        }
        .padding() // El padding ocupa toda esta vista, los modificadores
        // Con Hstack las cosas que vayamos poniendo se va a ir mostrando pero en horizontal no en vertical
        ZStack { // Si queremos meter un fragmento de codigo en un ZStack debemos de seleccionar el HStack y darle click derecho y ponerle Emb... Zstack
            HStack{
                Text("Nombre")
                VStack{ // Si ponemos un vertical stack dentro de un Horizontal stack podemos ir haciendo un tipo de tabla
                    Text("Pepe3")
                    Text("Pepe2")
                }
            }
            .padding()
            
            Text("Hola") // En este caso estamos poniendo el hola adelante de lo demas, por que sale en el eje z
        }
        
    }
}

struct Example: View {
    var body: some View{
        HStack{
            Rectangle().frame(height: 100).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) // Como no le asignamos un valor a la anchura, gracias al padding(), se acomoda del tal manera la anchura para que quepan los dos rectangulos y esten puestos correctamente alineados
            Rectangle().frame(height: 100).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

// Con esta parte del codigo, le esta pidiendo al preview que nos haga la preview del ContentView para que nosotros podamos irla viendo, podemos llamar a cualquier estructura a preview para tener la previsuzalizacion de esa estructura





struct Example2: View {
    var body: some View{
        VStack{ // Aqui podriamos hacer un inicio de sesión
            Rectangle().frame(height: 40).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) // En este podria ser el ID
            Rectangle().frame(height: 40).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) // En este podria ser la contraseña
            .padding() // Este seria para tener un espacio entre los rectangulos
            // Si se quiere un padding nada mas vertical se podria poner .padding(.vertical,20)
            // O si quiero que solamente sea abajo se puede poner padding(bottom,20)
            Rectangle().frame(height: 100).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) // En este podria ser el boton para enviar el inicio de sesión
        }
        .padding()
    }
}


struct Example3: View {
    var body: some View{
        
        VStack {
            HStack{
                Rectangle().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle().frame(height: 100).foregroundColor(.orange)
                Rectangle().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).foregroundColor(.yellow)
            }
            
            Rectangle().frame(height: 100).foregroundColor(.orange)
            HStack{
                Circle().frame(height: 150).foregroundColor(.green)
                Rectangle().frame(width:120,height: 250)
                Circle().frame(height: 150).foregroundColor(.blue)
            }
            Rectangle().frame(height: 100).foregroundColor(.orange)
            HStack{
                Rectangle().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle().frame(height: 100).foregroundColor(.orange)
                Rectangle().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).foregroundColor(.yellow)
            }
        }
        .background(.red)
    }
}
#Preview {
    ContentView()
}

#Preview {
    Example2()
}

#Preview{
    Example3()
}
