import Cocoa

var arr:Array<Int> = [7,5,9,8,6,4,2,3,1];
print("before:",arr);
for i in 1..<arr.count {
    //插入位置
    var preindx = i - 1;
    //当前要插入的值
    let current = arr[i];
    //当前要插入的值小于已排序的最后位置则结束否则就向后已送
    while preindx >= 0 && current < arr[preindx] {
        arr[preindx + 1] = arr[preindx];
        preindx -= 1;
    }
    arr[preindx+1] = current;
}
print("after:",arr);
print(arr);
