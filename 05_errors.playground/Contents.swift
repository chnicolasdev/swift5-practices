import UIKit

/* Aqui puede ser que algo falle y lanzaré un error
    cuando alguien llame a la función, lo tiene que gestionar, se hace con try/catch */
func canThrowError() throws{
    
}

//canThrowError() no se puede ejecutar

do{
    try canThrowError()
    // Si llegamos aquí,no ha habido error
    print("Exito!")
}catch{
    print("Error")
}



/*
func makeASandwich() throws {
    
}

do{
    try makeASandwich()
     // Me como el sandwich
}catch{
    // tengo platos limpios...
    // tengo ingredientes
    // tengo hambre
}
*/


// Reto
var cleanDishes = 1
var ingredients = 10
var haveHungry: Bool = true

enum sandwichError: Error{
    case noCleanDishes
    case noIngredients
    case noHungry
}

func makeASandwich()
    throws{
        if cleanDishes < 1 {
            throw sandwichError.noCleanDishes
        }
        
        if ingredients < 4 {
            throw sandwichError.noIngredients
        }
        
        if haveHungry == false {
            throw sandwichError.noHungry
        }
}

do{
    try makeASandwich()
        // Me como el sandwich
        print("Me como el sandwich")
}catch(sandwichError.noCleanDishes) {
    print("No tengo platos limpios")
}catch(sandwichError.noIngredients) {
    print("No tengo ingredientes")
}catch(sandwichError.noHungry) {
    print("No tengo hambre")
}
        




// Aserciones (debug) y Precondiciones (build)

/* La función assert() te permite verificar el estado de tu programa en tiempo de ejecución y fallar si las cosas no son como deberían ser. Una de las características interesantes de assert() es que se elimina automáticamente cuando construyes tu aplicación en modo de lanzamiento, pero si no queres que eso suceda, si queres que tu aplicación se bloquee si algo está muy mal, entonces deberías usar la función precondition() en su lugar. */

let age  = -5
//assert(age>=0,"La edad de una persona no puede ser negativa")
// ... aquí el código sigue

if age > 10 {
    print("Puedes subir a la montaña rusa")
}else if age >= 0 {
    print("Eres demasiado pequeño para subir")
}else {
    //assertionFailure("La edad de una persona no puede ser negativa")
}



// Precondition
let agePrecondition  = -5
//precondition(agePrecondition>=0,"La edad de una persona no puede ser negativa")
