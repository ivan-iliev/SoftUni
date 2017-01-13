
import UIKit
print("Task 1","\n")
//This is Super Class
class Shape{
    var name: String
    
    init(description_of_shape: String) {
        self.name = description_of_shape
            }
    
    //Na tazi funkcii zadavame purvo nuli(0)
    func perimeter_of_shape() -> Double {
        return 0
    }
    
    func area_of_shape() -> Double {
        return 0
    }

    
    // s tazi funkcia pe4atim imeto,perimetara i liceto
    func printAll() {
        print("The Name Of Shape Is",self.name)
        print("The Perimeter Of Shape Is", perimeter_of_shape())
        print("The Area Of Shape Is", area_of_shape(),"\n")
    }


}
//This is Triangle Class
class Triangle:Shape{
    //We have three sides
    let side1:Double
    let side2:Double
    let side3:Double
   
    
    init (triangle:String="Triangle",side1_of_triangle:Double,side2_of_triangle:Double,side3_of_triangle:Double){
        
        self.side1=side1_of_triangle
        self.side2=side2_of_triangle
        self.side3=side3_of_triangle
        super.init(description_of_shape: triangle)
        
        
    }

  // tuka prawim override na funkciata ot super class
    override func perimeter_of_shape() -> Double {
        var P: Double
       //proweriawame dali tozi triangle su6testvuva ako ne su6testvuva return 0 za perimeter
        if (self.side1 + self.side2) > self.side3 && (self.side2 + self.side3) > self.side1 && (self.side3 + self.side1) > self.side2 {
            P = self.side1 + self.side2 + self.side3
            return P
        }else{
            return 0
        }
    }
    override func area_of_shape() -> Double {
        var p: Double
  //proweriawame dali tozi triangle su6testvuva ako ne su6testvuva return 0 za lice
        if (self.side1 + self.side2) > self.side3 && (self.side2 + self.side3) > self.side1 && (self.side3 + self.side1) > self.side2 {
            p = (self.side1 + self.side2 + self.side3)/2
            return sqrt(p*(p-self.side1)*(p-self.side2)*(p-self.side3))
        } else {
            return 0
        }
    }

       
}
//Tuk pravim konstanta ot tip "Triangle" i pe4atim
let shape1 = Triangle(side1_of_triangle:12,side2_of_triangle:38,side3_of_triangle:45)
shape1.printAll()











// Tova e purvia na4in za namirane na Kvudrat
class Sqare1:Shape{
    let side1:Double
    
   
    
    
    init (sqare:String="Sqare",side1_of_sqare:Double){
        
        self.side1=side1_of_sqare
        super.init(description_of_shape: sqare)
        
        
    }
    
    override func perimeter_of_shape() -> Double {
        var P: Double
        P = self.side1 * 4
        return P
    }
    override func area_of_shape() -> Double {
        var p: Double
        p = self.side1 * self.side1
        return p
        }
    
    
}
let shape2 = Sqare1(side1_of_sqare:12)
shape2.printAll()








//Tozi class se otnasia za romb ,trapec,kvadrat i za wsi4ki ostanali 4etiriugulnici
class Quadrangle:Shape{
    //diagonala e mechdu 4 i 3 strana
    let side1:Double
    let side2:Double
    let side3:Double
    let side4:Double
    let diagonal:Double
    
    
    
    init (quadrangle:String="quadrangle",side1_of_quadrangle:Double,side2_of_quadrangle:Double,side3_of_quadrangle:Double,side4_of_quadrangle:Double,diagonal_of_quadrangle:Double){
        
        self.side1=side1_of_quadrangle
        self.side2=side2_of_quadrangle
        self.side3=side3_of_quadrangle
        self.side4=side4_of_quadrangle
        self.diagonal=diagonal_of_quadrangle
        super.init(description_of_shape: quadrangle)
        
        
    }
    
    override func perimeter_of_shape() -> Double {
        var P: Double
        //proweriawame dali tozi 4etiriugulnik su6testvuva ako ne su6testvuva return 0 za perimeter
        if ((self.side1 + self.side2) > self.diagonal && (self.side2 + self.diagonal) > self.side1 && (self.diagonal + self.side1) > self.side2) &&
            ((self.side4 + self.side3) > self.diagonal && (self.side4 + self.diagonal) > self.side3 && (self.side3 + self.diagonal) > self.side4){
            P = self.side1+self.side2+self.side3+self.side4
            return P
        }else{
        
            return 0
        
        }
        
    }
    override func area_of_shape() -> Double {
        var p1: Double
        var p2: Double
        //proweriawame dali tozi 4etiriugulnik su6testvuva ako ne su6testvuva return 0 za lice
        if ((self.side1 + self.side2) > self.diagonal && (self.side2 + self.diagonal) > self.side1 && (self.diagonal + self.side1) > self.side2) &&
            ((self.side4 + self.side3) > self.diagonal && (self.side4 + self.diagonal) > self.side3 && (self.side3 + self.diagonal) > self.side4){
            
            p2 = (self.side3 + self.side4 + self.diagonal)/2
            p1 = (self.side1 + self.side2 + self.diagonal)/2
            return sqrt(p1*(p1-self.diagonal)*(p1-self.side1)*(p1-self.side2)) + sqrt(p2*(p2-self.side3)*(p2-self.side4)*(p2-self.diagonal))
        } else {
            return 0
        }
    }
    
    
}
let shape3 = Quadrangle(quadrangle: "quadrangle", side1_of_quadrangle: 45, side2_of_quadrangle: 32, side3_of_quadrangle: 78, side4_of_quadrangle: 90, diagonal_of_quadrangle: 45)
shape3.printAll()





//tuk pravim class za Rectangle
class Rectangle:Shape{
    let side1:Double
    let side2:Double
    
    init (rectangle:String="Rectangle",side1_of_rectangle:Double,side2_of_rectangle:Double){
        
        self.side1=side1_of_rectangle
        self.side2=side2_of_rectangle
        super.init(description_of_shape: rectangle)
        
        
    }
    
    override func perimeter_of_shape() -> Double {
            return (self.side1 * 2) + (self.side2 * 2)
    }
    override func area_of_shape() -> Double {
        
        return self.side1 * self.side2
    }
    
    
}
let shape4 = Rectangle(side1_of_rectangle:12,side2_of_rectangle:2)
shape3.printAll()




print("Task 2","\n")



var modifiedArrayDict = [[String: String]]()
var item0: [String: String] = ["id": "id1", "title":"title1"]
modifiedArrayDict.append(item0)
var item1: [String: String] = ["id": "id2", "title":"title2"]
modifiedArrayDict.append(item1)
var item2: [String: String] = ["id": "id3", "title":"title3"]
modifiedArrayDict.append(item2)
var deletedArrayString = [String]()
deletedArrayString.append("nekfoSiDrugiId_1")
deletedArrayString.append("nekfoSiDrugiId_2")

var news =  [String: Any]()
news["modified"]=modifiedArrayDict
news["deleted"] = deletedArrayString

var root=[String: Any]()
root["news"] = news

var someString  =  "Some text is here"

class ParserTest{
    func convertDictionaryArray(data: [Dictionary<String, String>] ){
        let arraySize = data.count
        var counter:Int = 1
        var dictSize = 0;
        var dictCount:Int = 0
        
        print("[")
        for dictionary in data {
            print("{")
            dictSize = dictionary.count
            dictCount = 1;
            for (key,value) in dictionary {
                
                if dictSize == dictCount {
                    print(" \"\(key)\": \"\(value)\"")
                } else {
                    print(" \"\(key)\": \"\(value)\",")
                }
                
                dictCount+=1
            }
            counter += 1
            if arraySize == counter{
                print("},")
            } else {
                print("}")
            }
        }
        print("]")
        
    }
    func convertStringArray(data: [Any] ){
        let arraySize = data.count
        var counter:Int = 1
        print("[")
        for (value) in data {
            
            
            if arraySize == counter{
                print("\"\(value)\"")
            }else{
                print("\"\(value)\",")
            }
            counter += 1
        }
        print("]")
    }
    func convertString(data: String){
        print("\"\(data)\"")
    }
    func printall(data: Any){
        var storage=""
        print(root, to: &storage)
        print(storage)
    }
    
}


let Parser = ParserTest()
Parser.convertDictionaryArray(data: modifiedArrayDict)
Parser.convertStringArray(data: deletedArrayString)
Parser.convertString(data: someString)
Parser.printall(data: root)






print("Task 3","\n")


let num4 = 0b1001       //  number in bin - 2
let num3 = 0o6071       //  number in oct - 8
//let num2 = 1            //  number in dec - 10
let num1 = 0xff0d       //  number in dec - 16

//  let str = String(num1, radix: 2)
//  print(str)

//sum(forNumbers:[число1, число2, число3], inSystem: decimal) трябва да върне резултат - 68431

class Calculator {
    var dict:[String:Int] = ["bin":2,"oct":8,"dec":10,"hex":16]
    
    func sum (forNumbers: [Int], inSystem: String) -> String{
        var result : Int = 0
        for item in forNumbers {
            result += Int(String(item,radix: 10))!
        }
        return "sum: \(String(result,radix: self.dict[inSystem]!))"
    }
    
    func multiplication (forNumbers: [Int], inSystem: String) -> String{
        var result : Int = 1
        for item in forNumbers {
            result *= Int(String(item,radix: 10))!
        }
        return "multiplication: \(String(result,radix: self.dict[inSystem]!))"
    }
    
// taj kato ne ste definirali to`no izwagdaneto priel sam slednata logikam  result = ((a[0] - a[1] ) - a[3])
    
    func difference (forNumbers: [Int], inSystem: String) -> String{
        let arraySize = forNumbers.count
        var counter:Int = 1
        var result : Int = Int(String(forNumbers[0],radix: 10))!
        while counter < arraySize {
            result = result - Int(String(forNumbers[counter],radix: 10))!
            counter += 1
            
        }
        return "difference: \(String(result,radix: self.dict[inSystem]!))"
    }

// taj kato ne ste definirali to`no izwagdaneto priel sam slednata logikam  result = ((a[0] / a[1] ) / a[3])
    func quotient (forNumbers: [Int], inSystem: String) -> String{
        let arraySize = forNumbers.count
        var counter:Int = 1
        var result : Int = Int(String(forNumbers[0],radix: 10))!
        while counter < arraySize {
            result = result / Int(String(forNumbers[counter],radix: 10))!
            counter += 1
            
        }
        return "quotient: \(String(result,radix: self.dict[inSystem]!))"
    }



}
let calc = Calculator()
let data = [num1, num3, num4]
print(calc.sum(forNumbers: data, inSystem: "dec"))
print(calc.multiplication(forNumbers: data, inSystem: "dec"))
print(calc.difference(forNumbers: data, inSystem: "dec"))
print(calc.quotient(forNumbers: data, inSystem: "dec"))