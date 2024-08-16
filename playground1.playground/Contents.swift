import UIKit
// los 'var' se pueden modificar
// los 'let' no se pueden modificar
// El 'var' es de variable, 'greeting' es el nombre de la variable y lo que va despues del igual es lo que se va a guardar en la variable
var greeting = "Hello, playground"
// con var se declara una variable
var name = "Diego"
// let es una constante
let age = 22
print(age)

// Tipos de variables


// Char

// Hay que obligar a que el IDE lo clasifique como un tipo de variable y esto se hace poniendo var (el nombre de la variable): (el tipo de la variable) = "y el valor que se quiere guardar en la variable"
// Char un único caracter
// En el caso de la variable "char" se hace como sale en el siguiente renglón:
var symbol:Character = "e"

print(symbol)
// Si pones un codigo, por ejemplo el codigo de un emoji, el IDE se lo traga por que termina siendo al final un valor, por lo tanto sigue siendo un char
var symbol2:Character = "\u{2665}"
print(symbol2)

// String

// El 'string' acepta todo tipo de texto
var dogName = "Pelusa"
print(dogName)

// Int
var year:Int = 2024

// FLOAT

// El 'float' nos sirve para numeros con punto decimal pero hasta cierto punto, ya que acepta solamente una cantidad de caracteres, el float redondea las cosas
var pi:Float = 3.1416983928392893829382398
print(pi)

// Double

// El 'Double' nos sirve tambien para numeros con punto decimal hasta cierto punto pero acepta el doble de cantidad de caracteres que el 'Float'
var pi2:Double = 3.1416983928392893829382398
print(pi2)

// Bool

// Variables con dos valores 'verdadero' o 'falso'
var feliz = true
var triste = false



// Operadores aritmeticos



var a:Int = 5
var b:Int = 10

var sum = a + b // para hacer una operacion y el resultado asignarlo a una variable se debe de poner lo de ese renglon, la variable seria 'result' y va a almacenar el valor de la operacion
print(sum)

// se puede sumar un 'var' y un 'let'

var substract = a - b // resta
var multiply = a * b // multiplicación
var divide = a / b // division
var module = a % b // Módulo
print(sum, substract, multiply, divide, module)



// Operadores de asignación
var example = 5
 
example += 10 // se le asigna a la variable example, el valor anterior de example + 10
example -= 10 // resta
example *= 10 // multiplicación
example /= 10 // división
example %= 10 // modulo

print(example)



// Operadores Lógicos Comparación

// Esto devuelve true por que es correcto que 30 es mayor a 18
let age2 = 35

let isOlder = age2 > 18
let isYounger = age2 < 18
let isEqueal = age2 == 35
let isNotEqual = age2 != 35   // decir si 'age2' es distinta de 35
let isOlderOrEqual = age2 >= 18
let isYoungerOrEqual = age2 >= 18
print(isOlder)


let isSunny:Bool = true
let temperature:Int = 25
// Se tienen que cumplir las dos condiciones para que sea 'true'
let isPleasant:Bool = temperature > 25 && isSunny // && --> AND
let goToBeach:Bool = temperature > 25 || isSunny // || --> OR
let wearHat:Bool = !isSunny
print(isPleasant)
print(goToBeach)
print(isSunny)
print(wearHat)


// Conversiones
var numero:Int = 9
let nuevavariable = String(numero)

