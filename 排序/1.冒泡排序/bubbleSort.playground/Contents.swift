import Cocoa


func bubbleSort(elements: Array<Int>)->Array<Int>{
    var before = elements
    for i in 0..<before.count {
        for j in 1..<before.count - i {
            if before[j] < before[j - 1] {
                let item = before[j - 1]
                before[j - 1] = before[j]
                before[j] = item;
            }
        }
    }
    return before;
}
var arr:Array<Int> = [7,6,4,5,1,3,2];

print("before:", arr)
print("alter:",bubbleSort(elements: arr))
