import UIKit

var name: String = "rok"
var age: Int = 25

name = "roks"
age = 26

func sayHello(name: String) -> String {
    return "Nice to meet you \(name)"
    
}
sayHello(name: "rok")

func introduce(name: String, age: Int) -> String {
    return "Hello my name is \(name), and i'm \(age) years old"
}

introduce(name: name, age: age)
