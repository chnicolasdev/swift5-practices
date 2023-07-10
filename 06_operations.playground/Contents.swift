import UIKit

let b = 10
var a = 5
a = b

let (x,y) = (1,2)

if a == b {
    print("Los valores de a y b son iguales")
}

1+2
5-3
2*3
10.0/2.5

"Hello " + "World"

9/4 // Cociente
9.0/4.0
9%4 // Resto

9 == 4*2+1
-9%4

let five = 5
let mminusFive = -five
let plusFive = -mminusFive

let minusSix = -6
let alsoMinuxSix = +minusSix

var number = 5
number += 3 // number = number + 3
number -= 2 // number = number - 2


1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
2 <= 1
1 >= 1
2 <= 1

//let name = "Juan Gabriel"
let name = "Pedrito"

if name == "Juan Gabriel" {
    print("Bienvenido \(name), eres invitado a la fiesta!")
}else{
    print("Cuidado, ha aparecido un \(name) salvaje")
}


(1, "Juan Gabriel") < (2, "Ricardo Celis")
(3, "Juan Gabriel") < (3, "Ricardo Celis") // Juan viene antes de Ricardo por orden alfabético
(3, "Ricardo") < (3, "Juan Gabriel")

(4, "Perro") == (4, "Perro")

// No se puede , no hay orden en booleanos
//("perro", false) < ("perro", true)
("perro", false) == ("perro", true)


// Reto
(30, "Christian Ojeda") < (31, "Juan Gabriel")



// Ternario
// question ? answer1 : answer2

let contentHeight: Int = 40
var hasImage: Bool = true
var rowHeight: Int = 0

/* if hasImage {
    rowHeight = contentHeight + 50
}else{
    rowHeight = contentHeight + 10
} */

rowHeight = contentHeight + (hasImage ? 50 : 10)





// Operador Nil Coalescing
let defaultAge = 18
var userAge: Int?

var ageToBeUsed = userAge ?? defaultAge
// ageToBeUsed = (userAge != nil ? userAge! : defaultAge)

let defaultColorName = "red"
var userColorName: String? = "green"

var colorNameToUse = userColorName ?? defaultColorName

let defaultName = "Antonio Banderas"
var userName: String? = "Juanito"

var userNameToUse = userName ?? defaultName
print("Bienvenido, \(userNameToUse)!")




// Rangos
/* Hay 3 tipos de rangos:
    Cerrado: incluye inicio y final
    Abierto: array
    Semi Abierto: incluye valor inicio pero no final */

// Rango cerrado
for idx in 1...5 {
    print(idx)
}

for idx in 1..<5 {
    print(idx)
}

// Rango abierto
let names = ["Ricardo", "Juan", "Pedro"]
for i in 0..<names.count {
    print("La persona \(i+1) se llama \(names[i])")
}

// Rango semi abierto
for name in names[1...] {
    print("El nombre es: \(name)")
}

for name in names[...2] {
    print("El nombre es: \(name)")
}


let range = ...5 // -infinity....5
range.contains(7)
range.contains(4)
range.contains(-1)





// Operadores lógicos
let allowEntry: Bool = false

if !allowEntry {
    print("ACCESO DENEGADO")
}

// En variables Bool, no colocar "no" antes, solo verbos positivos.
let enterDoorCode: Bool = true
let passRetinaScan: Bool = false

if enterDoorCode && passRetinaScan {
    print("Acceso permitido!")
}else{
    print("Acceso denegado!")
}


let hasMoney = true
let hasInvitation = false

if hasMoney || hasInvitation {
    print("Bienvenidos!")
}else{
    print("No eres bienvenido!")
}


if(enterDoorCode && passRetinaScan) ||
    (hasMoney || hasInvitation) {
    print("Has entrado")
}else{
    print("No has podido entrar")
}


