import UIKit

class Person{
    var name:String
    weak var job:Job?       // solution memory leak
    
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

class Job{
    var jobDescription:String
    var person: Person?
    
    init(jobDescription:String){
        print("init method of Job called")
        self.jobDescription = jobDescription
    }

    deinit{
        print("deinit called for job class")
    }
}

if( 1 == 1){
    let objPerson = Person(name: "ABC")         // RC = 1
    let objJob = Job(jobDescription: "Swift")   // RC = 2
    objPerson.job = objJob                      // Strong Reference
    objJob.person = objPerson                   // Strong Reference
}       //   RC = 0
