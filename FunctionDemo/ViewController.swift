//
//  ViewController.swift
//  FunctionDemo
//
//  Created by PanshulK on 16/06/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // function with multiple parameter
        detailRecord(name: "jony", dob: "15 August 1987")
        
        // function without parameter
         print(printSimple())
        
        // function without return type
        print(withoutReturnType(name: "sumit"))
        
        // Functions with Multiple Return Values -- tuple
        print(calculateResult(result: [10]))
        
        // Functions with Multiple Return Values -- optional
        print(calculateResultWithOptional(EmailId: "", password: "") )
        
        //Argument Label With Parameter Name
        print(argumentLabelWithParameterName(argumentName: "Jony", argumentFrom: "Tohana"))
        
        //Default Parameter Values
        print(defaultParameterValue(parameterWithoutDefault: "Vipin"))
        
        // veriodic parameter value
        print(veriodicParameter(names: "Jony","Vikrant","Vipin","Ankur"))
        
//        print(swapNumber(&<#T##a: Int##Int#>, &<#T##b: Int##Int#>))
        
    }

    // function with multiple parameter
    func detailRecord(name: String, dob: String) -> String
    {
        print(name)
        print(dob)
        //        print(detailRecord(name: "jony", dob: "15August 1989"))
        return (name)
    }
    
    // function without parameter
    func printSimple() -> String {
        return "Hello world!"
    }
    
    // function without return type
    func withoutReturnType(name: String) {
        print("Mention name \(name)")
    }
    
    
    // Functions with Multiple Return Values -- tuple
    func calculateResult(result: [Int]) -> (min:Int, max:Int, sum:Int) {
        
        let min = 10
        let max = 20
        let sum = min + max
//        print(sum)
        return (min, max, sum)
    }
    
    // Functions with Multiple Return Values -- optional
    func calculateResultWithOptional(EmailId: String, password: String) -> (String, String)? {
        
//        var min
//        var max
//        let sum = min + max
//        //        print(sum)
        return (EmailId, password)
    }

    //Argument Label With Parameter Name
    func argumentLabelWithParameterName(argumentName paramterName: String, argumentFrom parameterCity: String) -> String {
    
        return ("Hello \(paramterName) which city you are \(parameterCity)")
    }

    
    //Default Parameter Values
    func defaultParameterValue(parameterWithoutDefault: String,  parameterWithDefault: String = "Karnal") -> String {
        
        return ("Hello \(parameterWithoutDefault) which city you are \(parameterWithDefault)")
    }
    
    // veriodic parameter
    func veriodicParameter(names: String...) {
        for name in names{
            print("Name \(name)")
        }
    }

    // inout parameter
    func swapNumber(_ a: inout Int, _ b: inout Int) -> Int
    {
        var temporaryA = a
        a = b
        b = temporaryA
        return temporaryA
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

