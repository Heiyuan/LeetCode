import Cocoa

func mergeSort<T>(beforeArr:Array<T>) -> Array<T> where T:Comparable {
    let count = beforeArr.count;
    if count == 1 {
        return beforeArr;
    }
    
    //进行数组拆分
    let point = count / 2;
    let leftArr = mergeSort(beforeArr: Array(beforeArr[0..<point]))
    let rightArr = mergeSort(beforeArr: Array(beforeArr[point..<count]))
    //进行数组拼合
    var Lindex = 0,Rindex = 0
    var muarr:Array<T> = [];
    while (Lindex < leftArr.count && Rindex < rightArr.count) {
        if (leftArr[Lindex] < rightArr[Rindex]) {
            muarr.append(leftArr[Lindex])
            Lindex += 1
        }else{
            muarr.append(rightArr[Rindex])
            Rindex += 1
        }
    }
    //处理剩余元素
    if Lindex < leftArr.count {
        muarr += Array(leftArr[Lindex..<leftArr.count])
    }else if Rindex < rightArr.count{
        muarr += Array(rightArr[Rindex..<rightArr.count])
    }
    return muarr;
}
var arr = [4,1,3,7,5,9,2,6,8]
print("after:",mergeSort(beforeArr: arr));
