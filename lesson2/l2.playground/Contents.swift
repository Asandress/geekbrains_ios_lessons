import Cocoa

//1. Написать функцию, которая определяет, четное число или нет.
func even_number( number: Int){
    if  number % 2 == 0 {
        print("четное")
    } else {
        print("нечетное")
    }
}
even_number(number: 22)
even_number(number: 21)

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func odd_number (number : Int){
    if number % 3 == 0 {
        print("число делится ли число без остатка на 3")
    } else {
        print("число не делится ли число без остатка на 3")
    }
}

odd_number(number: 21)
odd_number(number: 31)


//3. Создать возрастающий массив из 100 чисел.
var numArray: [Int] = []

for i in 1...100 {
    numArray.append(i)
}

print("Массив от 1 до 100: \(numArray)")

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for(_, num) in numArray.enumerated() {
    if (num % 2) == 0 && (num % 3) != 0 {
        numArray.remove(at: numArray.firstIndex(of: num)!)
    }
}

print("Массив задания 4: \(numArray)")

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

func fibonacci(_ num: Int) -> [Double] {
    var newArr: [Double] = []
    if num < 1 {
        let val: Double = 0
        newArr.append(val)
    }
    if num <= 2 {
        newArr.append(0)
        newArr.append(1)
    }

    var pre_pre: Double = 0;
    var current: Double = 1;
    
    for  _ in 3...num {
        let pre = current;
        current = pre + pre_pre;
        pre_pre = pre;
        newArr.append(current)
    }
    
    return newArr
    
}


let n = 100;
print("Фиббоначи: \(fibonacci(n))")
