import UIKit
/*

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

let integerNumber:Int = 24
let decimalNumber:Double = 25.43433434
let superNumber:Double = Double(integerNumber) + decimalNumber // Se convierte el 'int' a double por que no se puede sumar dos numeros de diferentes tipos, entonces se cambia el 'int' a 'double'
let superNumber2:Int = integerNumber + Int(decimalNumber) // En este caso se convierte el 'double' a 'int' para que se pueda hacer la suma entre los dos numeros
print(superNumber)
print(superNumber2)
 



// Ejercicio 1

/* Registro de asistencia: Declara una variable asistencias y asígnarle un número de asistencias a una clase, o sea la cantidad de alummnos que han asistido a la clase             y se va a declarar una variable de total de alumnos que estan inscritos a la clase y asignarle un número al total de alumnos que hay deberian de asistir a la clase. Imprimir en pantalla el porcentaje de asistencias que hubo en la clase*/

let totalAsistencias:Float = 10
let totalInscritos:Float = 20
var porcentajeAsistencia:Float = (totalAsistencias / totalInscritos) * 100
print("El porcentaje de asistencias fue del:", porcentajeAsistencia,"%")


// Ejercicio 2

/* Calculadora de IMC (Indice de Masa Corporal):
 Declara dos variables: peso (en kilogramos) y altura (metros).
 Calcula el IMC utilizando la fórmula: IMC = peso / (altura*altura)
 Imprimir el resultado del IMC
 */

let peso:Float = 95
let altura:Float = 1.85
var IMC:Float = peso / (altura*altura)
print("El IMC de la persona es: \(IMC)")


// Ejercicio 3

/* Calculo de Descuento
 
 Declara dos variables: precioOriginal y porcentajeDescuento.
 Calcula el precio después del descuento utilizando la fórmula: PrecioDescuento = precioOriginal - (PrecioOriginal * PorcentajeDescuento / 100)
 Imprime el precio original y el precio con descuento
 */
let precioOriginal:Float = 500
let porcentajeDescuento:Float = 25
var precioDescuento:Float = precioOriginal - (precioOriginal * porcentajeDescuento / 100)
print("El precio original es: \(Int(precioOriginal)) y el precio con descuento es: \(Int(precioDescuento))")



// Funciones



func showMyName(){ // Los parentesis sirve para pasarle parametros de entrada, para realizar algunas operaciones
    print("Hola, es mi primera funcion")
}
showMyName()
// Es importante pasarle un parametro de entrada (el parametro de entrada es como una variable pero no es una variable por que no hay que ponerle var o let ya que solo es un parametro de entrada) a la funcion para no tener que crear una función por cada nombre que hay en el mundo
func showMyCustomName(nombre:String){
    print("Hola \(nombre)")
}

showMyCustomName(nombre: "Diego") // Cuando mandas a llamar la función te pide que asignes una variable al nombre
showMyCustomName(nombre: "Andres") // nombre es un parametro de entrada y por lo tanto lo puedes ir cambiando cada vez que llames a la función y hay que especificar el nombre por que se puede tener varios parametros


// El 'Calculate' y el 'Calculate 2' son 2 formas de hacer la función, en la primera cuando llames a la función tienes que especificar a que parametro de entrada le vas a asignar el valor y esto se hace para que la gente no se confunda y asigne valores al reves

func Calculate(a:Int, b:Int){ // En la función se ponen dos parametros de entrada de tipo Int (a) y (b)
    let result = a+b // Se pone una variable que se llama 'result' y se le asigna que va a tener el valor de la suma de los parametros de entrada 'a' y 'b'
    print("El resultado es: \(result)") // Se va a imprimir el mensaje + la variable result
}

Calculate(a: 10, b: 20) // Se manda a llamar la función 'Calculate' y se tienen que especificar los valores de los dos parametros de entrada.

// En esta calculate se pone el '_' adelante de los parametros de entrada para que no haga falta indicar que valor vas a asignar a que parametro de entrada
func Calculate2(_ a:Int, _ b:Int){
    let result = a+b
    print("El resultado es: \(result)")
}
Calculate2(20, 2)
// Para el parametro de salida se tiene que especificar que valor va a regresar la función
func Calculate3(a:Int, b:Int) -> Int{ // En este caso hay dos parametros de entrada de tipo 'Int' y hay uno de salida de tipo 'Int'
    let result = a + b
    return result // este return esta indicando que va a regresar un parametro, aqui se indica que el parametro de salida debe de ser retornado
}

let mySuperResult:Int = Calculate3(a: 5, b: 10) // se declara la variable mySuperResult de tipo int y se le pone el valor de lo que hace la función Calculate3 con los parametros de entrada 5 y 10 ya que los parametros de entrada no se habian puesto, también en la función Calculate3 se dice que va a haber un parametro de salida de tipo int, ese es el que se guarda en la variable mysuperResult
print(mySuperResult) // Se imprime lo que se pide que haga en Calculate3

print("El super resultado es:",mySuperResult + 10) // Se suma el valor de Calculate3 + 10 y se imprime



// IF-ELSE



let userAge = 19 // Se declara la variable que no va a cambiar de valor
if userAge >= 18{ // Se pone un if que si se cumple se va a hacer lo que esta dentro del if
    print("El usuario es mayor de edad por que tiene:", userAge)
}
else{ // Se pone el else para que si no se cumple el if se haga lo que esta en el else
    print("El usuario es menor de edad por que tiene:", userAge)
}

func greeting(hour:Int){
    if hour < 12{
        print("Buenos días")
    }
    else if hour < 18{
        print("Buenas tardes")
    }
    else{
        print("Buenas noches")
    }
}


// Ejercicio de practica

func Obtenercalif(primeraCalifacion:Float, segundaCalificacion:Float) -> Float{ // Funcion que tiene como parametros de entrada primera y segunda califcacion y tiene como parametro de salida un entero
    var calif:Float = (primeraCalifacion + segundaCalificacion) / 2 // Se declara la variable calificacion final y se dice que la calificacion final va a ser igual a la primera calificacion + la segunda calificacion / 2
    return calif // La funcion va a regresar calificacion final que es de tipo entero
}


let calificacionFinal:Float = Obtenercalif(primeraCalifacion: 8, segundaCalificacion: 6)


let sitienecalifextra:Int = 1

if sitienecalifextra == 1{
    let calificacionExtra:Float = 2 // variable que no va a cambiar por que es la calificacion que se va a dar extra
    var califpunextra:Float = (calificacionFinal + calificacionExtra)
    if califpunextra > 10{
        califpunextra = 10
        print("La calificacion final del alumno era:", calificacionFinal, " y la calificación ya con los puntos extra es:", califpunextra)
    }
    else{
        print("La calificacion final del alumno era:", calificacionFinal, " y la calificación ya con los puntos extra es:", califpunextra)
    }
 
}
else{
    calificacionFinal
    print("La calificación del alumno es:", calificacionFinal)
}
*/


func getMonth(month:Int){ // Se declara la funcion getMonth con parametro de entrada month de tipo int
    // Hay 3 ifs que se va a hacer cada uno dependiendo de el valor de la variable month y se pone el else en caso de que se ingrese un numero que no esta
    if month == 1{
        print("Enero")
    }
    else if month == 2{
        print("Febrero")
    }
    else if month == 3{
        print("Marzo")
    }
    else{
        print("Numero invalido, pon otro")
    }
}
getMonth(month: 5)



// Switch
func getMonthSwitch(_ month:Int){
    switch month{
    case 1: print("Enero")
    case 2: print("Febrero")
    case 3: print("Marzo")
    default: print("Inroduce un mes válido")
    }
}

getMonthSwitch(2)

func getTrimester(_ month:Int){
    switch month{
    case 1, 2, 3: print("Primer trimestre")
    case 4, 5, 6: print("Segundo trimestre")
    case 7, 8, 9: print("Tercer trimestre")
    case 10, 11, 12: print("Cuarto trimestre")
    default: print("Ingresaste un mes erroneo")
    }
}

getTrimester(4)

func estadoCuenta(_ estado:Int){ // Se declara una función para saber el estado de cuenta
    switch estado{ // es un switch que va a variar en base al parametro de entrada estado y hay diferentes casos para determinar si hay o no hay presupuesto en base a un rango que se establece en cada caso, en caso de que el valor no este dentro de lo que se pone, se va a hacer el default
    case 1...500: print("No hay presupuesto")
    case 501...10000: print("Empieza a haber presupuesto")
    case 10001...100000: print("Hay presupuesto de sobra")
    default: print("El numero ingresado no es correcto")
    }
}
estadoCuenta(100000) // Se llama a la funcion estadoCuenta y se le pione un valor a estado



// Ejercicios

/* Ejercicio 4
 Calcula el area de un circulo:
 Crea una función que reciba el radio de un círculo y devuela su área (Pi * Radio * Radio)
 Luego pinta el resultado por pantalla. */

func radioCirculo(radio:Float) -> Float{
    let pi:Float = 3.1416
    var area = (pi * radio * radio)
    return area
}

print("El radio del circulo es:",radioCirculo(radio: 10))




/* Ejercicio 5
 Crea una función que reciba un número y con la ayuda de un IF pinte en pantalla si el número es positivo, negativo o cero
 */

func tipoNumero(numero:Int){
    if numero < 0{
        print("El numero es negativo")
    }
    else if numero == 0{
        print("El numero es 0")
    }
    else{
        print("El numero ingresado es positivo")
    }
}
tipoNumero(numero: 10)

/* Ejercicio 6
 Crea una función que reciba un número y con la ayuda de un SWITCH printe en pantalla si el número es positivo, negativo o cero
*/


// Se declara una función que se llama "numType"
func numType(number:Int){ // Tiene un parametro de entrada que es number de tipo int
    switch number{ // El switch va a trabajar con la variable number
    case let number where number > 0: print("El numero es positivo") // Se dice que se va a hacer este caso cuando la variable number sea mayor a 0 se va a imprimir lo que esta puesto y asi para cada caso
    case let number where number == 0: print("El numero es igual a 0")
    case let number where number < 0: print("El numero es negativo")
    default: print("El numero que ingresaste no esta en el parametro de numeros posibles") // el default se hace por si lo que se ingresa no corresponde a ningun caso entonces todo lo que no entre en los otros casos se va a hacer lo del default
    }
}
numType(number: 1) // Se llama la funcion numType y se pone que el parametro de entrada va a ser igual a 1



// Array
// Es un listado de variables
// Se pueden guardar muchas variables en una variable
let name1 = "pepe"
let name2 = "andres"
let names




