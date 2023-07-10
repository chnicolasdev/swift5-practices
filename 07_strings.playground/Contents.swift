import UIKit

// Swift: Unicode

let someString = "Soy un string literal" // De una sola linea

let multiLineString = """
 Este es un\
 string multilínea\
 Saludos a todos!
"""
print(multiLineString)

let wiseWords = "\"La imaginación es más importante que el saber\" - Albert Einstein"
print(wiseWords)

let dolarSign = "\u{24}" // Unicode
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"

/* let userFirstName = "Christian Nicolás"
let userLastName = "Ojeda Díaz"
let userCountry = "Chile"
let userCountrySign = "" */
let user = (FirstName: "Christian Nicolás", LastName: "Ojeda Díaz", country: "Chile", countrySign: "\u{1F1E8}\u{1F1F1}")

print("Hola!, soy \(user.FirstName) \(user.LastName) soy de \(user.country) \(user.countrySign)")




// Inicialización y mutabilidad
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Está vacio")
}else{
    print("Tiene un valor")
}


var otherSomeString = "Un caballo"
otherSomeString += " y un carruaje"
otherSomeString += " y un soldado"

var aString = "Juan Gabriel" // No puede ser let, ya que son inmutables
aString += " y Ricardo Celis"

