import UIKit


let name: String = "Renê" // Constante
var age: Int = 25 // Variaveis

age += 1

class Person {
    var name: String
    var age: Int
    var sex: String?
    
    init(name: String, age: Int, sex: String? = nil) {
        self.name = name
        self.age = age
        self.sex = sex
    }
    
    public func getNameAndAge() -> String {
        return "\(name), \(age)"
    }
}

let rene: Person = Person(name: "Renê Soares", age: 33)
let antonio: Person = Person(name: "Antônio", age: 4, sex: "Masculino")

func getSex(personSex: Person) -> String {
    guard let sexPerson = personSex.sex else {
        print("Atualize o genero do usuario")
        return ""
    }
    print(sexPerson)
    return sexPerson
}

getSex(personSex: antonio)

if let sexAntonio = antonio.sex, let sexRene = rene.sex {
    if sexAntonio == sexRene {
        print("Mesmo genero")
    } else {
        print("Generos diferentes")
    }
} else {
        print("Uma das informações não existe")
}
