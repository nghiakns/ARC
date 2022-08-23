import UIKit

class Person{
    var name:String
    
    init(name:String){
        print("init method of Person called")
        self.name = name
    }
    
    func printName(){
        print("name is \(name)")
    }
    
    deinit{
        print("deinit called for person class")
    }
}

var objPerson1:Person?
var objPerson2:Person?

if(1 == 1){
    let objPerson = Person(name: "ABC")   // RC = 1
    objPerson1 = objPerson                // RC = 2
    objPerson2 = objPerson                // RC = 3
    objPerson.printName()
} // RC = 2



objPerson1 = nil     // RC = 1
objPerson2 = nil     // RC = 0



