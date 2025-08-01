/*:
## Exercise - Memberwise and Custom Initializers
 
 If you completed the exercise Structs, Instances, and Default Values, you created a `GPS` struct with default values for properties of `latitude` and `longitude`. Create your `GPS` struct again, but this time do not provide default values. Both properties should be of type `Double`.
 */
struct GPS {
 var latitude: Double
 var longitude: Double
}
//:  Now create a constant instance of `GPS` called `somePlace`, and use the memberwise initializer to set `latitude` to 51.514004, and `longitude` to 0.125226. Print the values of `somePlace`'s properties.
let somePlace = GPS(latitude: 51.514004, longitude: 0.125226)
print("Latitude= \(somePlace.latitude)")
print("Longitude= \(somePlace.longitude)")

//:  In Structs, Instance, and Default Values, you also created a `Book` struct with properties `title`, `author`, `pages`, and `price`. Create this struct again without default values. Give each property the appropriate type. Declare your `favoriteBook` instance and pass in the values of your favorite book using the memberwise initializer. Print a statement about your favorite book using `favoriteBook`'s properties.
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
}
let favoriteBook = Book(title: "Atomic Habits", author: "James Clear", pages: 320, price: 130)
print("My favorite book is \(favoriteBook.title) by \(favoriteBook.author)")
/*:
 Make a `Laptop` struct with three variable properties, `screenSize` of type `Int`, `repairCount` of type `Int`, and `yearPurchased` of type `Int`. Give `screenSize` a default value of `13` and `repairCount` a default value of `0`, and leave `yearPurchased` without a default value. Declare two instances of `Laptop`, using the two provided memberwise initializers.
 */

struct Laptop {
    var screenSize: Int = 13
    var repairCount: Int = 0
    var yearPurchased: Int
    
}
let laptop1 = Laptop(yearPurchased: 2020)                 // uses default screenSize and repairCount
let laptop2 = Laptop(screenSize: 15, repairCount: 1, yearPurchased: 2019)

/*:
 Make a `Height` struct with two variable properties, `heightInInches` and `heightInCentimeters`. Both should be of type `Double`.
 
 Create two custom initializers. One initializer will take a `Double` argument that represents height in inches. The other initializer will take a `Double` argument that represents height in centimeters. Each initializer should take the passed in value and use it to set the property that corresponds to the unit of measurement passed in. It should then set the other property by calculating the right value from the passed in value. Hint: *1 inch = 2.54 centimeters*.

 - Example: If you use the initializer for inches to pass in a height of 65, the initializer should set `heightInInches` to 65 and `heightInCentimeters` to 165.1.
 */
struct Height {
    var heightInInches: Double
    var heightInCentimeters: Double

    init(inches: Double) {
        heightInInches = inches
        heightInCentimeters = inches * 2.54
    }

    init(centimeters: Double) {
        heightInCentimeters = centimeters
        heightInInches = centimeters / 2.54
    }
}
let height1 = Height(inches: 70)
print("Height in inches: \(height1.heightInInches), in cm: \(height1.heightInCentimeters)")

let height2 = Height(centimeters: 180)
print("Height in cm: \(height2.heightInCentimeters), in inches: \(height2.heightInInches)")

//:  Now create a variable instance of `Height` called `someonesHeight`. Use the initializer for inches to set the height to 65. Print out the property for height in centimeters and verify that it is equal to 165.1.
struct Book2 {
    var title: String
    var author: String
    var pages: Int
    var price: Double
}

var favoriteBook2 = Book2(title: "Harry Potter", author: "J. K. Rowling", pages: 223, price: 14.99)

print("My favorite book is called \(favoriteBook2.title), written by \(favoriteBook2.author). It has \(favoriteBook2.pages) pages and costs £\(favoriteBook2.price)")

//:  Now create a variable instance of `Height` called `myHeight` and initialize it with your own height. Verify that both `heightInInches` and `heightInCentimeters` are accurate.
struct Height {
    var heightInInches: Double
    var heightInCentimeters: Double
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters / 2.54
    }
}

var someonesHeight = Height(heightInInches: 65)
print(someonesHeight.heightInCentimeters)

/*:
[Previous](@previous)  |  page 3 of 10  |  [Next: App Exercise - Users and Distance](@next)
 */
