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
// En los arrays empieza desde la posición 0
let names:[String] = ["Fulanito", "Diego", "Pepe", "David"] // el nombre del array es names, se declara que es string y se guarda dentro del array las variables que estan en los corchetes
print(names[1]) // Para acceder a las variables que estan guardades dentro del array se debe de poner como lo muestra, el nombre del array y entre corchetes el numero de posicion en el array que se quiere tomar, empezando desde el 0

var daysWeek:[String] = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]

// Se pueden modificar, borrar, añadir elementos del array

print(daysWeek[3]) // Se imprime el valor que esta en la posicion 3 del array
daysWeek[3] = "Juernes"// Se modifica el valor que esta en la posición 3 por "Juernes" que es el valor que ahora esta cambiando
print(daysWeek[3]) // Se imprime el valor nuevo que se le dio a la posición 3 del array

print(daysWeek[0])
// daysWeek.removeAll() // Se imprime el array vacio por que se borraron todos los datos dentro del array
daysWeek.remove(at: 0)
print(daysWeek[0]) // Se imprime el martes por que ya se borro el elemento 0 del array que era lunes

daysWeek.append("Diego") // Con el append se agrega un nuevo elemento al final de la fila
print(daysWeek)



// Bucles
var daysWeek2:[String] = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]

// Para recorrer un array se usan los bucles, con los bucles se va en busca de un valor que queremos encontrar


// EL I SON CADA UNA DE LAS POSICIONES, LE DECIMOS QUE VAYA DEL 1 HASTA AL 5, ES COMO SI POR CADA VEZ QUE SE CORRE SE LE SUMARA UN +1 A LA I ASI HASTA LLEGAR AL 5
for i in daysWeek2{ // Con el bucle for, en este caso se puede imprimir la pantalla 5 veces sin necesidad de hacer 50 prints, ya que el bucle for lo hace por nosotros y lo imprime las veces que nosotros le indiquemos
    print("Dia:", i) // Lo que imprime es el mensaje dias y por cada ves que lo imprime, imrpime un dia de lo semana, con esto estamos recorriendo el array con todos los valores que tiene dentro
}



// El for se usa cuando sabemos el numero de veces que queremos iterar, el numero de veces es el mismo que el tamaño del array, iterar es cada una de las veces que el for cambia de valor, el numero de vueltas del for es igual al tamaño del array



for day in daysWeek2{ // En el ciclo for se declara en vez de i, day que solamente es como el valor que se le asigna por cada espacio en el array que recorre, cuando hace la primera pasada el valor de day es lunes, en la segunda es martes y asi con cada uno de los dias de la semana y agregamos un if anidado que lo que hace es que el for va a recorrer el array y en el if se dice que cuando encuentre que day sea igual a jueves nos avise con el print que el jueves esta en el listado
    if day == "Jueves"{
        print("Esta el jueves en el listado")
    }
}

// Cuando no tenemos el caso anterior, que no sabemos cuantas veces va a iterar se usa el siguiente:

var count = 0 // Se declara la variable count y se iguala a 0, ya que va a empezar en 0
while count < 10{ // Lo vamos a utilizar cuando queramos esperar a que una condicion sea verdadera, dice que se haga el bucle hasta que count deje de ser -10
    print("Hola soy un contador y valgo", count) // Se va a imprimir esto por cada vez que se recorra el bucle completo, y podemos observar que el valor de count va a ir cambiando de valor por que por cada vez que pase se le va a sumar 1, empieza en 0, completa el recorrido y ahora count vale 1, y se guarda que vale 1, despues hace el recorrido y ahora a ese 1 se le suma otro por que por cada que se complete se suma 1 y asi se seguira ejecutando hasta que que el while sea verdadero
    count += 1
}

// El ultimo bucle es muy parecido al while

// Este siempre se repite al menos 1 vez
// Si queriamos que el while no se repitiera se pone count = 10 y en ningun momento es verdadero entonces nunca se imprime nada, por que acabo todo el escaneo y nunca fue verdadero pero con el while repeat si se hace el escaneo al menos 1 vez

var count2 = 5 // Declaramos la variable count2
// es como un do while, se hace mientras que...
// En este caso con el repeat siempre se va a cumplir 1 vez
repeat {
    print("Pepe")
} while count2 < 0

// Hay dos formas de salir de los bucles, nosotros estamos dando vuelta en el bucle hasta cuando vemos lo que nos interesa y otro cuando decimos hay muchas condiciones pero como se acaba de pasar esto pasate a lo siguiente

// En este caso tenemos un array de tipo string con los dias de la semana dentro del array
var daysWeek3:[String] = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]

// Tenemos un for que va a recorrer el array daysWeek3
// Tenemos un if anidado que lo que va a hacer es que si day, que es la variable que cambia de valor por cada pasada que hace es igual a jueves va a imprimir que es jueves y tiene un break que cuando esa condicion se cumpla va a salir del bucle y tenemos un else por si el if no se cumple se vaya al else e imprima que no es jueves y va a seguir dando vueltas hasta que la condicion se cumpla y si no es jueves va a seguir entrando al else hasta que se cumpla el if y entrando el if el break va a sacar automaticamente del bucle
for day in daysWeek3{
    if day == "Jueves"{
        print("Es jueves")
        break
    }
    else{
        print("No es jueves ")
    }
}

print()


// Tenemos otro caso, cuando en el bucle tenemos un continue, que significa que pare con la vuelta que esta dando y pase a la siguiente vuelta de recorrer el bucle, con el continue cuando pase por la vuelta en donde se cumpla el if, va a entrar al if y cuando vea el continue, va a saltarse el resto del codigo, entonces no va a imprimir el day, entonces no va a imprimir el valor de day que hay en esa vuelta entonces no va a imprimir Jueves, por que es lo que le corresponderia al day en esa pasada
for day in daysWeek3{
    if day == "Jueves"{
        print("Es jueves")
        continue
    }
    print(day)
}



/* Ejercicio 7
 Escribe una función que reciba un número e imprima su tabla de multiplicar del 1 al 10
 
*/
var numerosTablas:[Int] = [1,2,3,4,5,6,7,8,9,10]
var cuenta = 0
func num(n:Int){
    for a in numerosTablas{
        var resultadoTabla = a * n
        cuenta += 1
        print(n, "x", a, "=", resultadoTabla)
    }
}

num(n: 4)

// RECUERDA QUE EL FOR TAMBIEN LE PUEDES PONER LOS VALORES QUE QUIERES QUE TOME, for a in 1..10 y lo va a tomar hasta el 10 y asi puedes eliminar los arreglos
 */
/* Ejercicio 8
 Escribe un programa que calcule la suma de todos los números pares del 1 al 100 y muestre el resultado.
 Para saber si un número es par se tiene que dar la siguiente condicion (numero % 2 == 0)
*/
var resultado = 0
for num in 1...100{
        if num % 2 == 0{
            resultado = resultado + num
        }
}

print("La suma de todos los numeros pares del 1 al 100 es:", resultado)


/* Ejercicio 9
 Escribe una función que cuente el número de vocales en una palabra y lo pinte.
 Tip: Las palabras (strings) pueden recorrerse con bucle for
*/

var cuenta:Int = 0
func vocales(palabra:String){
    for vocal in palabra{
        switch vocal.lowercased(){ // Con el .lowercased lo que se hace es que todo el texto se pasa a minusculas y entonces ahora si ya no va a haber el problema de mayusculas y minusculas
            case "a", "e", "i", "o", "u": cuenta += 1
            default: continue
        }
        }
    print("El numero de vocales en la palabra:", palabra, "son:", cuenta)
}
vocales(palabra: "Jacobo"
)



// TUPLAS



// Es una variable que puede contener muchas cosas, es como un array pero acepta cualquier tipo de variable
// Cuando se hagan aplicaciones, una vista va a necesitar un nombre una edad, etc y se lo vamos a pasar en una tupla
var tupla = ("Diego", 21, true, "Calle mi casa", 2323243, 1.98)

print(tupla.0) // Para acceder a las tuplas se pone el nombre de la tupla seguida de un punto y se pone el numero de la posicion a la que se quire acceder en la tupla



// Diccionarios



// Es una especie de tupla pero funciona con clave y valor

// Se declara un diccionario que la clave va a ser string y el valor va a ser de tipo any lo que se traduce como que el valor puede ser te cualquier tipo
var diccionario:[String: Any] = ["name": "Diego", "age": 21, "imHappy": true, "address": "Calle mi casa"]

var miNombreEnDiccionario:String = diccionario["name"] as? String ?? "Error por que no es un string el valor" // Se declara una variable de tipo string y se le asigna el valor que hay en el diccionario cuando la clave es name pero como a xcode le dijimos que el valor podia ser un any hay que hacer una conversion a string se hace con el as? string, pero si lo dejas hasta ahi dice que es un Diego optional pero que pasa si no es un string, entonces hay que darle un valor por defecto y eso se da con el ?? y entre parentesis el valor opcional que se le da
// Por esto mismo no es lo mejor usar un diccionario, para evitar problemas y se usa una tupla pero hay casos especificos en los que se debe de usar un diccionario
print(miNombreEnDiccionario)

// Con el for tambien podemos recorrer diccionarios

for (key, value) in diccionario{ // Lo recorremos pero necesitamos los valores de key y value en el diccionario y asi podemos sacar los valores relaciones de key value y utilizarlos
    print("La clave: ", key, "contiene:", value)
}



// Nulabilidad



var variable:String = "lo que sea" // No permite valores opcionales
var variablenula:String? = nil // Esto es una variable nula, esta variable permite valores opcionales

print(variable)
print(variablenula)

// Si intentamos acceder a una variable y esta vacia nos revienta la aplicacion
// Cuando recuperemos info de internet siempre esta la posibilidad de que venga ese valor vacio, null o nil

func ejemploNil(text:String){
    
}

ejemploNil(text: variable)
// Da error por que espera que le pasemos un string, y esa variable es nula
// ejemploNil(text: variablenula)
// Una forma en la que podemos arreglar esto es pasandole la variable nula y en caso que el valor sea nulo se puede poner ?? para tener ese valor opcional  en caso de que sea nula, para evitar errores en la aplicacion
ejemploNil(text: variablenula ?? "la variable es nula")

// EXTREMO CUIDADO

// (text:variablenula!) // Cuando estamos seguros de que la variable no va a ser nula, de esta manera decimos que estamos seguros que es un string y si no es asi, la aplicacion va a reventar

func ejemploNil2(text:String?){
    // Aqui vamos a ver como trabajar con la variable nil, por que como puede ser nula, puede causar que la aplicacion se rompa
    if let example = text{ // Se declara la variable example y se dice que si la variable example es igual a text se va a imprimir la variable example, con esto nos aseguramos que si la variable es nula podamos desviarlo para que la aplicacion no se rompa
        print(example) // Se pone por que solo queremos pintarlo cuando sea una variable real, no un nil
    }
    else{// Esta dedicado por si quieres hacer una cosa u otra
        print("Introduce un nombre para continuar")
    }
    // Si solo quremos que haga una cosa:
    guard let example2 = text else{ // el codigo va a avanzar pero si text es nil, no va a continuar a hacer el resto de las cosas
        return // necesita un return por que si se da la condicion va a salir y ya no va a hacer el resto de las cosas
    }
    print("Hola example2") // Esto solo se va a llamar si la variable es una real, no nil, o sea si la variable tiene un valor
}

ejemploNil(text: variable)
ejemploNil2(text: variablenula)



// Clases



// El codigo de una aplicacion es muy grande y por lo tanto no se suele tener todo en el mismo fichero y por lo tanto se usan funciones mas potentes

// Las clases son un molde, la clase es como un muñeco y dentro de la clase podemos crear diferentes atributos y asi le damos caracteristicas al muñeco y aparte podemos crear diferentes muñecos

class Persona{
    var name:String
    var age:Int
    // El init es un constructor, es como el modelo para crear una funcion, cuando queremos crear una persona, lo que vamos a crear es un objeto
    // Este metodo, el metodo constructor se va a llamar cada vez que se instancie a la clase persona, cuando se crea un objeto, lo que esta en el constructor se pide que se den valores en el objeto de la clase
    init(name: String, age: Int) { // En el metodo constructor, lo que esta adentro del parentesis son parametros de entrada
        self.name = name
        self.age = age
    }
    // greetings = saludos
    func greetings(){
        print("Hola soy", name, "y tengo", age, "años")
    }
}
// Aqui se creo un objeto de tipo persona y se le poen el valor de la variable Nombre como Diego y el valor de la edad 21
var Diego:Persona = Persona(name: "Diego", age: 21)
Diego.greetings() // Como Diego es un objeto de la clase Persona, se le puede pedir que haga las cosas que estan declaradas en la clase persona, por lo tanto las funciones que estan en la clase las puede realizar el objeto, se llama al objeto Diego . greetings() y por lo tanto se le pide que haga la función greetings(), pero siendo el objeto Diego, por lo tanto se van a tomar los atributos del objeto Diego

// Para crear un objeto de tipo persona, obligatoriamente debes de pasarle los atributos



// Por ejemplo cuando estemos creando aplicaciones un juego puede tener un objeto jugador y ese jugador va a tener toda su información, si hay 4 jugadores, va a haber 4 objetos de la clase jugador



// Struct



// Una estructura es una forma de almacenar infomración, es como si fuera una tupla pero mas potente y al final es como tener un modelo de datos
// Se declara una estructura con dos variables adentro
struct ExampleStruct{
    var name:String
    var age:Int
}
// Se declara una variable que es de tipo struct, example struct y se pide que se den valores para las variables que estan dentro de la estructura
var exampleStruct:ExampleStruct = ExampleStruct(name: "Diego", age: 21)
var nombree = exampleStruct.name // Se crea la variable nombree para guardar la infomacion que hay en el objeto exampleStruct y que es el nombre por eso el .name
print(nombree)


