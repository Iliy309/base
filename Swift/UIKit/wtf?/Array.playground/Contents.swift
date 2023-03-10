var array = [1,2,3,4,5,6,8]

let sortedArray = array.sorted { a, b in
    a < b
}

print(sortedArray)

let sorted = array.sorted{$0 > $1}
