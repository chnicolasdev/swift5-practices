import UIKit

let orangesAreOrange = true
let foodIsDelicious = false

var isAged : Bool

//isAged = false
isAged = true

if isAged {
    print("Puedes entrar a la fiesta!")
} else {
    print("No puedes ingresar.")
}


var age = 15
if age >= 18 {
    print("Eres mayor de edad")
} else {
    print("No eres mayor de edad")
}


// Tuplas
let http404Error = (404, "Página no encontrada")
// Se asignan a variables
let (statusCode, statusMessage) = http404Error

print("El código del estado es \(statusCode)")
print("El mensaje del servidor es \(statusMessage)")

// Va a extraer solo la primera parte
let (justStatusCode, _) = http404Error
print("El código del estado es \(justStatusCode)")

// Se imprime directo, sin variable.
print("El código de error es \(http404Error.0) y el mensaje es \(http404Error.1)")

// Se asignan nombres
let http200Status = (statusCode: 200, description: "OK")
print("El código del estado es \(http200Status.statusCode) y el mensaje es \(http200Status.description)")

// Ejercicio
// Edad, nombre apellido, dales nombres significativo y utiliza el print para saludar.
let chnicolasdev = (age: 30, firstName: "Christian", lastName: "Ojeda")
print("Hola, mi nombre es \(chnicolasdev.firstName) \(chnicolasdev.lastName) y tengo \(chnicolasdev.age) años de edad, bienvenido !")



// Optionals y Nil (Ausencia de valor)
let possibleAge = "31"
// Casting de string a numero entero
let convertedAge = Int(possibleAge) // Int?, devuelve un entero opcional, la diferencia es que con ? puede tomar nil (ausencia de valor) e int tiene que tener un valor

// Si es string, no se puede convertir
let possibleAgeString = "paco"
// No se puede convertir ya que no es entero.
let convertedAgeString = Int(possibleAgeString) // devuelve nil

// No se puede ya que se declara que debe ser numero entero
var serverResponseCode: Int = 404
//serverResponseCode = nil

// No se puede ya que se declara que debe ser numero entero
var serverResponseCodeOptional: Int? = 404
serverResponseCodeOptional = nil

var surveyAnswer : String?
surveyAnswer = "42"
//print(surveyAnswer) //Optional
//print(surveyAnswer!) // Error ya que no se valido que no es nil

// Fuerza bruta: Force unwrapping de una variable optional
if convertedAge != nil {
    print("La edad del usuario no es nula: \(convertedAge)")
} else {
    print("La edad del usuario es nula")
}

// Conversión
if convertedAge != nil {
    print("La edad del usuario no es nula: \(convertedAge!)")
} else {
    print("La edad del usuario es nula")
}

// Ternario
print(convertedAge != nil ? convertedAge! : "Valor nulo")




// Optional Binding
// Las constanstes no pueden ser nulas. Significa que no era nil
if let actualAnswer = surveyAnswer {
    // Al llegar aquí, surveyAnswer != nil
    print("El string \(surveyAnswer) tiene el valor \(actualAnswer)")
    // Aqui ya no debería ir el surveyAnswer, solo el actualAnswer ya que ya está casteado.
} else {
    // Al llegar aquí surveyAnswer = nil
    print("El string \(surveyAnswer) es nil...")
}

// Anidados
if let firstNumber = Int("4"),
    let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber < 100 {
        print("\(firstNumber) < \(secondNumber) < 100")
} else {
    print("No se puede hacer casting")
}


// Unwrap Implícito (cuidado, muy facil usarlo mal)
let possibleString: String? = "Un string opcional"
let forcedString: String = possibleString!


let assummedString: String! = "Tiene que ser un string"
let implicitString: String = assummedString

if assummedString != nil {
    print(assummedString)
}

// Casting de forma segura.
if let definitiveString = assummedString {
    print(definitiveString)
}
