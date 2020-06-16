/**
* 1. Create an enumeration called ActionError that adopts the Error protocol with three cases - InsufficientMP, OutOfRange, and UnknownError
* 2. Declare a function called attackEnemy that takes in an integer named mp and a double named distance as parameters and returns an optional boolean.
* 3. Mark attackEnemy as a throwable function
* 4. Add two guard statements - if mp is less than 10 throw InsufficientMP, if distance is greater than 5.89 throw OutOfRange
* 5. If both guard statements pass, return true
* 6. Use a *do-catch statement to call attackEnemy and handle each error case individually
* 7. Unwrap the optional return value from attackEnemy using an if-let statement
*/

// 1
enum ActionError: Error {
    case InsufficientMP;
    case OutOfRange;
    case UnknownError;
}

let MIN_MP = 10;
let MAX_DISTANCE = 5.89;

// 2 and 3
func attackEnemy(mp: Int, distance: Double) throws -> Bool? {
    //4
    guard mp > MIN_MP else {
        throw ActionError.InsufficientMP;
    }
    guard distance <= MAX_DISTANCE else {
        throw ActionError.OutOfRange;
    }
    
    //5
    return true;
}

// 6
do {
    try attackEnemy(mp: 14, distance: 4.3);
    print("Enemy attacked!");
} catch ActionError.InsufficientMP {
    print("Insuffient MP error");
} catch ActionError.OutOfRange {
    print("Out of Range error");
} catch ActionError.UnknownError {
    print("Unknown Error...");
} catch {
    print("Unexpected Error.");
}

// 7
if let success = try? attackEnemy(mp: 9, distance: 5.53) {
    print("Success: \(success)");
} else {
    print("Attack has failed");
}
