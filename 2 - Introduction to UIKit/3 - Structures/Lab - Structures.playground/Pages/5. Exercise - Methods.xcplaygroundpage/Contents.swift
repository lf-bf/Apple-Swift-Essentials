/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description(){
        print("Name: \(title),\nAuthor: \(author),\nPages: \(pages),\nPrice: \(price)")
    }
}

var method = Book(title: "Maniac", author: "Benjamin Labatut", pages: 354, price: 70.0)
print(method.description())
//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String
    var likes: Int = 0
    var numberOfComments: Int = 0
    
    mutating func Like(by amount: Int){
        likes += amount
    }
}

var post =  Post(message: "hello-World")
print("Before: \(post.likes)")
post.Like(by: 60)
print("After: \(post.likes)")

/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
 */
