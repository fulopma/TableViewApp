/// Interview Questions
///  1. What is dependency injection? Different types? What are the advantages?
///    Dependency injection is when you refer to objects created outside the class rather than having
///    the class create the objects within itself. The different types are:
///    • Initializer dependency
///    • Function parameter dependency
///    • Instance variable dependency
///    The advantage of having dependency injection is that you won't accidentally cause cyclic
///    dependencies that would create an unbounded number of objects. Dependency injection
///    ensures that you won't waste memory.
///  2. When to use which dependency injection?
///    You use dependency injection whenever different objects need to refer to each other within
///    their member functions.
///  3. What is dependency inversion? Explain with example and advantage.
///    Dependency inversion is when you pass objects as a type being a protocol. It's like polymorphism.

protocol Reader{
    func readFile(filename: String) -> Bool
}
class JsonReader: Reader{
    func readFile(filename: String) -> Bool {
        return true
    }
}
class CsvReader: Reader{
    func readFile(filename: String) -> Bool {
        return true
    }
}
func processFile(reader: Reader, filename: String) -> String{
    return ""
}
var jsonReader: Reader = JsonReader()
processFile(reader: jsonReader, filename: "example.json")
var csvReader: Reader = CsvReader()
processFile(reader: csvReader, filename: "example.csv")

///  4. What are mandatory data source methods?
///    Mandatory data source methods are when you refer Table View and View Controller by requiring
///    the View Controller to implement the same protocol as Table View. Now the view controller now
///    must conform to the protocol which are those mandatory methods.
///  5. What is the advantage of using dequeue reusable cell with identifier?
///    The advantage of using dequeue reusable is that allows you to insert place one prototype cell in the
///    the storyboard and create a class that define the features of the cell. It allows you to programmatically
///    insert all the cells in the table.
