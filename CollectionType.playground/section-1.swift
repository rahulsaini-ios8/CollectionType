// Collection Types

import UIKit

var str = "Hello, playground"


// Swift provides two collection types, known as arrays and dictionaries, for storing collections of values. 

// Arrays store ordered lists of values of the same type

var shopingList: [String] = ["Eggs", "Milk"]
println("The List \(shopingList.count) itmes")
var shoppingList = ["Eggs", "Milk"]
println("The list \(shoppingList)")

if(shopingList.isEmpty)
{
    println("Empty")
}
else
{
    println("Non Empty")
}

// You can add a new item to the end of an array by calling the array’s append method
shoppingList.append("Flour")
println("The list \(shoppingList)")

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
println("The list \(shoppingList)")

var item = shoppingList[4]

//You can also use subscript syntax to change a range of values at once, even if the replacement set of values has a different length than the range you are replacing.

shoppingList[3...3] = ["Bananas", "Apples"]  //[3...4]
println("The list \(shoppingList)")

//To insert an item into the array at a specified index, call the array’s insert(atIndex:) method

shoppingList.insert("Maple Syrup", atIndex: 2)
println("The list \(shoppingList)")

shoppingList.removeAtIndex(3)
println("The list \(shoppingList)")

shoppingList.removeLast()

// Iterating Over an Array
for itemLists in shoppingList
{
    println(itemLists)
}

// If you need the integer index of each item as well as its value, use the global enumerate function to iterate over the array instead. The enumerate function returns a tuple for each item in the array composed of the index and the value for that item. 

for(index, value) in enumerate(shoppingList)
{
    println("Item \(index + 1) : \(value)")
}

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
println("The Array \(threeDoubles)")

// Dictionaries

// Dictionaries store unordered collections of values of the same type, which can be referenced and looked up through a unique identifier (also known as a key).

/**

Swift dictionaries are specific about the types of keys and values they can store. They differ from Objective-C’s NSDictionary and NSMutableDictionary classes, which can use any kind of object as their keys and values and do not provide any information about the nature of those objects. In Swift, the type of keys and values that a particular dictionary can store is always made clear, either through an explicit type annotation or through type inference.

*/


// The type of a Swift dictionary is written in full as Dictionary<KeyType, ValueType>, where KeyType is the type of value that can be used as a dictionary key, and ValueType is the type of value that the dictionary stores for those keys.

var airports : [String: String] = ["TYO" : "Tokyo" , "DUB" : "Diubin"]
println("The airports dictornary \(airports.count) items")


if(airports.isEmpty)
{
    println("Empty");
}
else
{
    println("Not Empty")
}

airports["LRH"] = "London"


// updateValue(forKey:) method
if let oldValue = airports.updateValue("Dublin International", forKey: "DUB")
{
    println("The old Value for DUB \(oldValue)")
}

if let airPotname = airports["DUB"]
{
    println("The name iof the airport is  \(airPotname)")
}

// remove a key-value

if let removedValue = airports.removeValueForKey("DUB")
{
       println("The removed airport's name is \(removedValue).")
}

// Iterating Over a Dictionary

for(airKey, airValue) in airports
{
    println("\(airKey) : \(airValue)")
}

// You can also retrieve an iterable collection of a dictionary’s keys or values by accessing its keys and values properties:
for airkey in airports.keys
{
    println("The Keys : \(airkey)")
}


// If you need to use a dictionary’s keys or values with an API that takes an Array instance, initialize a new array with the keys or values property:


let airkey = [String](airports.keys)
 println("Keys : \(airkey)")
 
let airValue = [String] (airports.values)
println("VAlues : \(airValue) ")

