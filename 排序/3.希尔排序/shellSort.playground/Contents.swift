import Cocoa

let arr = [4,1,3,7,5,9,2,6,8]
func shellSort<T>(beforeArr:Array<T>) ->Array<T> where T:Comparable{
    var beforeArr = beforeArr;
    var z = beforeArr.count / 2
    while z > 0 {
        
        for i in z..<beforeArr.count {
            var j = i - z;
            
            
            while j >= 0 && beforeArr[i] < beforeArr[j]{
                let temp = beforeArr[i];
                beforeArr[i] = beforeArr[j];
                beforeArr[j] = temp;
                j -= z;
            }
            
        }
        z /= 2
    }
    
    return beforeArr;
}
print("after:", shellSort(beforeArr: arr));
