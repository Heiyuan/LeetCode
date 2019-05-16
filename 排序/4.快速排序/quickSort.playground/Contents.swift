import Cocoa

func quickSort<T>(beforeArr: inout Array<T>,leftIndex:Int,RightIndex:Int) where T:Comparable {
    var i = leftIndex,j = RightIndex;
    //获取中间点
    let point = beforeArr[(i + j) / 2]
    while i<=j {
        //找到比point小的
        while beforeArr[i] < point{
            i+=1;
        }
        //找到比point小的
        while beforeArr[j] > point{
            j-=1;
        }
        if i<=j{
            //交换元素
            if i != j{
                let temp = beforeArr[j];
                beforeArr[j] = beforeArr[i];
                beforeArr[i] = temp;
            }
            i+=1
            j-=1
        }
    }
    //递归左面
    if j > leftIndex{
        quickSort(beforeArr: &beforeArr, leftIndex: leftIndex, RightIndex: j);
    }
    if i < RightIndex{
        quickSort(beforeArr: &beforeArr, leftIndex: i, RightIndex: RightIndex);
    }
    
}

var arr = [4,1,3,7,5,9,2,6,8]
quickSort(beforeArr: &arr, leftIndex: 0,RightIndex: arr.count - 1)
print("after:",arr);
