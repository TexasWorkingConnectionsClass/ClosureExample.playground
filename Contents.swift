
import UIKit

//Closures are self-contained blocks of functionality that can be passed around and used in your code.

//Closures take one of three forms:
//
//Global functions are closures that have a name and do not capture any values.
//
//Nested functions are closures that have a name and can capture values from their enclosing function.
//
//Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context.

//Swift’s standard library provides a method called sort(_:), which sorts an array of values of a known type, based on the output of a sorting closure that you provide. Once it completes the sorting process, the sort(_:) method returns a new array of the same type and size as the old one, with its elements in the correct sorted order. The original array is not modified by the sort(_:) method.




// Some data
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

// A normal function to sort the list 

func backwards(s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

// Then pass it as an argument to the sort method

var reversed = names.sort(backwards)

// Define your closure
    // Closure expression syntax has the following general form:
    
//{ (parameters) -> return type in
//    statements
//}

reversed = names.sort({ (s1: String, s2: String) -> Bool in
    return s1 > s2
})

// Inferring Type From Context

reversed = names.sort( { s1, s2 in return s1 > s2 } )

// Implicit Returns from Single-Expression Closures drop the return

reversed = names.sort( { s1, s2 in s1 > s2 } )




