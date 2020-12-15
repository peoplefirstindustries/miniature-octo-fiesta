var str = "Hello, playground"
var abba = "abba"
var abcdcba = "abcdcba"

/// Palindrome Check (1 points)
func palindromeCheck(word: String) -> Bool {
    guard !word.isEmpty else {return false}
    guard word.count > 1 else {return false}
    if word == String(word.reversed()) {
        return true
    }
    return false
}

print("")
print("Palindrome Check")
print(palindromeCheck(word: str))
print(palindromeCheck(word: abcdcba))
print(palindromeCheck(word: abba))


/// Find Three Largest Numbers (1 points)
var array = [141, 1, 17, -7, -17, -417, 99, 75, 541, 8,7, 7]

func threeLargestNumbers(array: [Int])-> [Int]{
    guard array.count >= 3 else {return []}
    var largest = Int.min
    var secondlargest = Int.min
    var answerArr: [Int] = []
    
    for element in array {
        if (element > largest) {
            secondlargest = largest
            largest = element
            answerArr.append(element)
        } else if (element > secondlargest) && (element < largest) {
            secondlargest = element
            answerArr.append(element)
        }
    }
    let sortedAnswers = answerArr.sorted { $0 > $1 }
    let firstThreeArr = Array(sortedAnswers[0..<3])
    return firstThreeArr
}
print("")
print("Find Three Largest Numbers")
print(threeLargestNumbers(array: array))


/// Bubble Sort (1 points)
var bubbleExampleArray = [8, 5, 2, 9, 5, 6, 3]

func bubbleSort(array: [Int]) -> [Int] {
        var arr = array
        for _ in 0...arr.count {
            for value in 1...arr.count - 1 {
                // The elements are swapped only if the first element is greater than the second element
                if arr[value-1] > arr[value] {
                    let largerValue = arr[value-1]
                    arr[value-1] = arr[value]
                    arr[value] = largerValue
                }
            }
        }
        return arr
    }

print("")
print("Bubble Sort")
print(bubbleSort(array: bubbleExampleArray))


/// Min Number of Coins for Change (3 points)
var nonNegativeInt = 7
var denoms = [1, 5, 10]

func minNumOfCoinsForChange(target: Int, coinSet: [Int]) -> [Int] {
    let sortedCoinSet = coinSet.sorted(by: { $0 > $1})
    var change: [Int] = []
    var newValue = target // Set the current value before the loops
    
    for coin in sortedCoinSet {
        while newValue - coin >= 0 {
            change.append(coin)
            newValue -= coin
        }
        
        if newValue == 0 {
            break
        }
    }
    
    if newValue > 0 {
        return [-1]
    }
    
    return change
}

print("")
print("Min Number of Coins for Change")
print(minNumOfCoinsForChange(target: nonNegativeInt, coinSet: denoms))


/// Four-Number Sum (5 points)
var sampArray = [7, 6, 4, -1, 1, 2]
var targetSum = 16

func checkPairs(numbers: [Int], target: Int) -> [[Int]] {
    var pairs = [[Int]]()
    for (_, a) in numbers.enumerated() {
        for (_,b) in numbers.enumerated() {
            for (i, c) in numbers.enumerated() {
                for d in numbers[i+1 ..< numbers.count] {
                    if a + b + c + d == target {
                        pairs.append([a,b,c,d])
                    }
                }
            }
        }
    }
    return pairs
}

print("")
print("Four-Number Sum")
print(checkPairs(numbers: sampArray, target: targetSum))
