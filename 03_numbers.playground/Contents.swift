import UIKit

let age = 31


// El numero entero menor que puedo crear
let minValue = UInt8.min
// El numero más grande que puedo crear
let maxValue = UInt8.max



// El numero entero menor que puedo crear
let minValue16 = UInt16.min
// El numero más grande que puedo crear
let maxValue16 = UInt16.max



// El numero entero menor que puedo crear
let minValue32 = UInt32.min
// El numero más grande que puedo crear
let maxValue32 = UInt32.max



// El numero entero menor que puedo crear
let minValue64 = UInt64.min
// El numero más grande que puedo crear
let maxValue64 = UInt64.max




/* Float (32) sirve para especificar el tipo de dato en forma decimal pero al llegar a un cierto punto redondea las cifras.
 
 Double (64) define tambien las variables o constantes en forma decimal pero sin redondear las cifras y otorga mayor precisión */


// Por defecto, swift lo deja en double.
let f1: Float  = 3.14159265
let d1: Double = 3.14159265 // Más preciso



let meaningOfLife = 42 // Int (64)
let pi = 3.14159 // Double
let anotherPi = 3 + 0.14159 // Suma entero con double, swift lo convierte en double ambos. Lo deja en Double.

// Literales Numéricos Integer
let decimalInteger = 17 // 1x10 + 7
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

// Literales Numéricos Double
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0


let paddedDouble = 000123.456
let someNumber = 00000432.450

let oneMillion = 1_000_000
let justMoreThanAMillion = 1_000_000_000.001

// Errores de tipos de datos
// let cannotBeNegative: UInt8 = -1
// let tooBig: UInt8 = UInt8.max+1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
// No se puede sumar distintos tipos
//let twoThousandAndOne = twoThousand + one

// Se hace casting para pasar el de 8 a 16 para sumar.
let twoThousandAndOne = twoThousand + UInt16(one)



let three = 3
let decimalNumber = 0.14159
//let piNum = three + decimalNumber
let piNum = Double(three) + decimalNumber


let piInteger = Int(piNum)



// Type Alias
//typealias type name = type expression
typealias AudioSample = UInt16

var maxAmplitude = AudioSample.max // UInt16.max

