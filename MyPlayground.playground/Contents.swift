import UIKit
import Darwin

var greeting = "Hello, playground"
print(" \t greeting \n ")

var i:Int
i = 1212
print("Integer value: \(i)")


var h:Float
h=2222
print(h)

var a,b,c:Double
a=1645465466454654
b=2456456464566545
print(b * a)


var good_boy: Bool
good_boy=true

var s:String
s="My name is \"Mayank\""

var _ch:Character
_ch="m"
print(s)

let vv=55
print(vv)

var binn = 0b0001
print(binn)

var octt = 0o12
print("Octal No: \(octt)")

var hex:Int = 0x12
print("HexaDecimal No: \(hex)")


var first,second:String
first = "Hello"
second = "Hi"

print(first == second)

first.append(" " + second)
print( first )

first += " Hi"
print(first)

var myname:String = "Mayank"
print( myname.count )

print( " \\ isEmpty: \(myname.isEmpty)" )

var ss:String
ss = "hi, my name is Mayank."

print("capitalized: \(ss.capitalized)")

print("uppercased(): \(ss.uppercased() ) ")

print("\nlowercase(): \( ss.lowercased() ) ")

print( " \0 hasPrefix() : \( ss.hasPrefix("h") )" )

print( " \"hasSuffix() : \( ss.hasSuffix(".") )" )


var multiLine: String
multiLine = """
\n\nHello,
My name is Mayank
and
i love JAVA.\n
"""

print( multiLine )


var emptyString = String()
print( emptyString )

print( "Swift", "is Good", terminator: " ")
print("is Good\n")

print("Mayank", 8899, "Swift", separator: ". ")

print("\nMayank " + "Thakur\n")




//This is enable to take input
print("Enter Your name: ")
if let name = readLine() {
    print("Entered name is:\(name)" )
}


var ii = Int()
type(of: ii)
print("\n", ii)
ii = 5252
print(ii)
type(of: ii)
print("\n")



//Optional DataType
var abc: Int?

var cba: Int! = 55

print("Optional =  \(abc) \(cba)")
type(of: abc)
print(cba)
type(of: abc)


if(abc == cba){
    print("Equals")
}else{
    print("Not Equals")
}

var nw:Int = cba
print(nw)
print( type(of: nw) )


//***************
var opt1: Int? = 45

if let temp = opt1 {
    print("Have some value: \(temp) ")
}else{
    print("Does not have any value or nil")
}


func testFun(){
    var opt4: Int?
    guard let temp = opt4 else { return }
    print(temp)
}
testFun()


//######### 15/02/22 ##########

//Operators

print( 5 * 3 )

var x1 = 10
x1 += 1
print(x1)
x1 *= 2
print(x1)


var l1,l2: Int
l1 = 10
l2 = 20

print( (l2 > l1) || (l1 > l2) )

print( !(l1 > l2) )


var opt11:Int!
var opt22:Int! = 22

var res5:Int = opt11 ?? opt22

print(res5)



var num5:Int = 1 + 4 * 3 - 2

print(num5)


var marks1 = 65
var marks2 = 95

var res6 = ( marks1 > marks2 ) ? "Marks 1 is greater" : "Marks 2 is greater"

print(res6)


var num9 = 12

var res9 = (num9 == 0) ? "Zero" : ( (num9 % 2 == 0) ? "Even Number" : "Odd Number" )

print(res9)



var b5 = 0b0011
var b6 = 0b0010
var resb1 = b5 & b6
var resb2 = b5 | b6
print(" \nbinValue1: \(b5), binValue2: \(b6), and & AND Result: \(resb1), | OR Result: \(resb2) \n")


var kk = 12
//The bitwise complement of 12 = - (12 + 1) = -13
var kres = ~kk
print(kres)


var sh = 1
var lres = sh << 1
print(lres)
var rres = sh >> 1
print(rres)


print()

//if else
var age = 25

if(age == 0 || age < 1) {
    print("Something wrong")
}
else if(age >= 1 && age <= 12){
    print("Child")
}
else if(age > 12 && age <= 18){
    print("Young")
}
else if(age > 18 && age < 30){
    print("Working Person")
}
else if(age >= 30 && age < 50){
    print("Family Person")
}else{
    print("Old Person")
}


//switch
print()

var agee = 30

switch agee{
case 1...12 :
    print("Child")
    
case 13...18 :
    print("Young")
    
case 19...25 :
    print("Working Person")
    
case 26...45 :
    print("Family Person")
    
case 46...120 :
    print("Old Person")
    
default:
    print("Something went wrong")
}



let info = ("Vikrant", 18)
print()
// match complete tuple values
switch info {
  case ("Vikrant", 18):
    print("Vikrant is 18 years old")

  case ("Shubham", 22):
    print("Shubham is 22 years old")

  default:
    print("Unknown Person")
}



//Loops
print()

var employes = ["Laxman", "Sophiya", "Jaspal", "Mayank", "Shubham", "Sourabh"]

//For loop
var countt:Int = 1
for emp in employes{
    print("Emp \(countt) name is: \(emp)")
    countt += 1
}

print()

for emp in employes where emp != "Mayank"{
    print(emp)
}

print()

for _ in 1...3{
    print("I love Java")
}

print()

for i in 1...4{
    print("Count i: \(i)")
}

print()

var ct:Int = 1
for i in stride(from: 2, to: 21, by: 2){
    print("2 * \(ct) = \(i)")
    ct += 1
}

print()


//While Loop
var currentLevel = 1, finalLevel = 5
var gameCompleted = true

while(currentLevel <= finalLevel){
    
    if gameCompleted{
        print("You have passed level \(currentLevel)")
        currentLevel += 1
    }
}
print("Level Ends")


//repeat while loop
var num8 = 4

repeat{
    print(num8)
    num8 -= 1
}while(num8 >= 5)

print()


var loopStr: String = ""
//outer loop
for i in 1...5{
    loopStr += "|i\(i)| "
    //inner loop
    for j in 1...5{
        loopStr += "j\(j), "
    }
}
loopStr += "\n"
print(loopStr)


print("Break:-")
for i in 1...3{
    print("\nweek \(i)")
    
    for day in 1...2{
        
        if(i == 2){
            print("...")
            break
            }
        print("\tday \(day)")
    }
    
}

print("\nContinue:-")
for i in 1...3{
    print("week \(i)")
    
    for day in 1...6{
        
        if(day % 2 == 0){ continue }
        
        print("\tday \(day)")
    }
    
}
print()




for i in 1...5{
    print(i)
    guard i != 3 else{
        print("break\n")
        break
    }
}



func checkJobEligibility() {
  let agee = 12

  guard agee >= 18, agee <= 40 else { // AND operation perform between the conditions
    print("Not Eligible for Job")
    return
  }

  print("You are eligible for this job")
}

checkJobEligibility()



func checkMyAge(){
    var age:Int?
    
    guard let myage = age else{
        print("\nAge not defined")
        return
    }
    print("\nMy age is: \(myage)")
}

checkMyAge()


let sparklingHeart = "\u{1F496} \n"
print(sparklingHeart)


//******************************
//Arrays
var emptyArray = [Int]()

var evenArray = [2, 4, 6, 8, 10]

var oddArray: [Int] = [1, 3, 5, 7, 9]

print("Employee Array: employes[3] = \(employes[3]) \n")

print("Empty Array = \(emptyArray)")
print("Even Array = \(evenArray)")
print("Odd Array = \(oddArray) \n")



var songs:[String] = ["In the Morning", "Astronout in the Ocean", "Best Friend", "Teach me how to love", "Rubberband", "LifeStyle", "UP", "Provide", "Biala Conmingo"]

print("Previous Songs Array")
print(songs)

print("\nModified Songs Array:-")
songs[6] = "Calling my phone"
print(songs)


print("\nAfter Delete the element of Songs Array:-")
songs.remove(at:4)
print(songs)

songs.removeFirst()
print("\nAfter Removal: \n\(songs)")


var newSongs:[String] = ["RubberBand","In the Morning"]
print("\nNew Songs: \(newSongs)")

songs.append(contentsOf: newSongs)
print("\nAfter Appending new Songs:-\n\(songs)")

songs.insert("24kGold", at: 1)
print("\nAfter Inserting new song:- \n\(songs)\n\n")

songs.forEach{
    print($0)
}

var arrCount = songs.count
print("\nSize of Songs Array is: \(arrCount)\n")

print("Array isEmpty: \(songs.isEmpty)\n")


var mixArray: [Any] = ["Mayank",8899221110]
print("Mix Array: \(mixArray)\n")

var si = 1
for i in songs{
    print("Song \(si) : \(i)")
    si += 1
}

print()


//************** SETS ******************
var mySet: Set = [11,22,33,44,55]
print("My Set: \(mySet)")

mySet.insert(88)
print("\nAfter Inserting element in Set\n\(mySet)\n")

mySet.remove(22)
print("After Removing element\n\(mySet)\n")

var mySortedSet = mySet.sorted()
var scount = 1
for i in mySortedSet{
    print("Element \(scount) is: \(i)")
    scount += 1
}

print("\nTotal Elements: \(mySortedSet.count)\n")
print("Element[2] is: \(mySortedSet[2])\n")


var emptySet = Set<Int>()
print("Empty Set: \(emptySet)\n")

var myNewSet: Set = [34, 55, 11, 66, 99]
print("My Set:", mySet)
print("My New Set:", myNewSet)

print("\nIntersection: ",mySet.intersection(myNewSet) )

print("\nSubtracting: ", mySet.subtracting(myNewSet) )

print("\nUnion: ", mySet.union(myNewSet) )

print("\nSymmetric Difference: ",mySet.symmetricDifference(myNewSet) )

var setZ: Set = [11, 34, 55]

print("\nisSubset: ", setZ.isSubset(of: myNewSet))

print("\n")

var setX: Set = [34, 11, 55]

print("SetA = \(setX) and SetB = \(setZ)")

if setX == setZ{
    print("Both set are equal.")
}else{
    print("SetA and SetB are Not equal.")
}

print("\n")

//########### Dictionary ###################

// Empty Dictionary
var emptyDict = [Int : String]()
print("Empty Dictionary = ",emptyDict)

//Normal Dictionary
var myDict = ["mayank":8899, "shubham":4578, "abc":5685, "kartik":7585, "rashika":6548, "himani":2538, "anjali":9586, "Akash":9585]

print("\nMy Dictionary = \(myDict) \n")

for (key, value) in myDict{
    print( "\(key) : \(value)" )
}

myDict["hanumat"] = 3467

print("\nAfter adding new element:-\n\(myDict) \n")

var temp99 = myDict["abc"]!
myDict["abc"] = 7584

print("\nAfter updating value of abc:\(temp99) \n\(myDict) \n")

var dictKeys = Array( myDict.keys )
print( "Dictionary Keys = \(dictKeys) \n" )

var dictValues = Array( myDict.values )
print( "Dictionary Values = \(dictValues) \n" )


myDict.removeValue(forKey : "abc")

print("\nAfter removing element by key = \"abc\"\n\(myDict) \n")

var chkkey = "mayank"
if myDict.keys.contains( chkkey ){
    print("The key \(chkkey) cotains in my dictionary.\n")
}else{
    print("The key \(chkkey) does not find in my dictionary\n")
}


//############ Tuple ###################

var stu1: (String,Int)? //create empty tuple

stu1 = ("Mayank",8899) //Adding element bydefault at 0 index
print(stu1!)

stu1 = ("Jaspal", 2244)  //Updating previous element which is located at 0 index
print(stu1!)


var myTuple = ("Devronins", 3838, ["Entry":"9:30 AM", "Exit":"6:00 PM"] )
print("\nDictionary in a Tuple:-\n\(myTuple)\n")

myTuple.2["Lunch"] = "1:00 PM - 2:00PM" //adding element in dictionary in tuple
print("\nAfter adding element in dictionary which is located in Tuple:\n\(myTuple)\n")

var tupleArray = [(124,"a"),(245,"b"),(345,"c")]

for obj in tupleArray {
    print(obj.1)
}




//################ Functions ################

func display(){ //func declaration
    print("\nHello World...\n") //func defination
}
display() //func calling


//parametrized funtion
func addition( num1:Int = 2, num2:Int = 5) -> Bool //with return type //Parameter in func
{
    print("Addition: \(num1 + num2) \n")
    return true;
}

var resf = addition() //without parameter calling

addition(num1: 20, num2: 30)  //with parameter calling //arguement in func

print("Function Returns: \(resf) \n")



//-------- inbuit methods ---------
var pw =  pow(2, 3)
print("Power func pow(): 2^3 = \(pw) \n")

var sq =  sqrt(144)
print("Square func sqrt(): 144 = \(sq) \n")




//recursion
func recursive( num:Int ) -> Int
{
    print(num)
    
    if num == 1{
        print("Countdown Stops\n")
    }else{
        recursive(num: num - 1) //call itself
    }
    return 1
}

recursive(num: 10)  //passing value



//Function With Argument Label
func power(pw a:Double, of b:Double){
    print("Power: \(a) ^ \(b) = \(pow(a, b)) \n")
}

power(pw: 3, of: 2)



//Omit Argument Labels
func mul( _ a:Int, _ b:Int){
    print("Multiply of \(a) x \(b) = \(a * b) \n")
}

mul(5, 2)



//Function with variadic parameters
func sumOf( _ numbers: Int...)
{
    var result = 0
    
    for num in numbers{
        result += num
    }
    print("Sum of numbers is: \(result)\n")
}

sumOf(2, 3)

sumOf(2, 3, 4, 5, 6)



//Function With inout Parameters
func myFun(_ name: inout String)
{
    print("Original Name: \(name)")
    
    if name == "Thakur"{
        name = "Mayank"
        print("Changed name is: \(name)\n")
    }
}

var chName = "Thakur"
myFun(&chName)





//Function with Return Multiple Values
func compute( _ num:Int ) -> (Int,Int,Int)
{
    let square = num * num
    let cube = square * num
    
    return (num, square, cube)
}

let ComputeResult = compute( 5 )

print("Original Number is: ", ComputeResult.0 )
print("Square of number is: ", ComputeResult.1 )
print("Cube of number is: ", ComputeResult.2 )


print()


  



//Nested Function with Return Values
func operate( _ symbol: String ) -> (Int,Int) -> Int
{
    
    func add( num1:Int, num2:Int ) -> Int
    {
        return num1 + num2
    }
    
    func subtract( num1:Int, num2:Int ) -> Int
    {
        return num1 - num2
    }
    
    let operation = (symbol == "+") ? add : subtract
    return operation
}


let returnMethod = operate("-")
let oresult = returnMethod(8, 2)
print("The result is: \(oresult)\n")





//******** Range *********
for num in 1...5{
    print(num)
}

print("\nHalf Open Range 1..<4")

for num in 1..<4 {
    print(num)
}

print("\nOne - Sided Range 2...")
/*
var rangeVar = 2...

print("\nRange 2... Contains 158 or not : \( rangeVar.contains(158) ) \n")
*/




//************ Func Overloading ****************
func test(){
    print("without parameter test() called")
}


func test( _ a:Int)
{
    print("One Parameter Func Called")
}


func test( _ a:Int, _ b:Int )
{
    print("Two Parameter Func Called")
}

//-------------------------------------------
//Function overloading with Argument Label
func test( labelfun a:Int)
{
    print("test() with labeled function called.\n")
}


test()
test(5)
test(1,2)
test( labelfun: 11 )




//********** Closure ************
var myName = {
    print("Mayank Thakur\n")
}

//calling the closure
myName()


//Closure Parameters
var greet = { (name:String) in
    print("Hi, \(name), How are you.\n")
}

greet("Mayank")



//---------------------------------------



func sumOf( a:Int, b:Int) -> Int
{
    return a + b
}


var assginFun: (Int, Int) -> Int = sumOf

var ressum = assginFun( 12548, 6457758 )

print("The Sum is: \(ressum)\n")


var resSum = { (a:Int, b:Int) -> (Int) in
    return a + b
}

print("The Sum is: \( resSum(55,44) ) \n")

//--------------------------------------

func sayHi( hi: () -> () ){
    print("Main Func called.")
    hi()
}


sayHi( hi:{
    print("Hi, User (inner function)\n")
} )

//-------------------------------------
/*
func mainFun( mySum: (_ a:Int, _ b:Int) -> () )
{
    print("Sum Main Function")
    mySum(50, 50)
}


mainFun( mySum: { (ab:Int, bc:Int) -> () in
    print(ab + bc)
} )
*/

//---------------------------


func mainFun( mySum: (_ a:Int, _ b:Int) -> (Int) )
{
    print("Sum Main Function")
    print( mySum(50, 50) )
}


mainFun( mySum: { (ab:Int, bc:Int) -> (Int) in
    return ab + bc
} )

//------- Trailing Closure ---------

func dipMain( message:String, myClosure: () -> () )
{
    print("\nThis is main Function with message \" \(message) \" ")
    myClosure()
}


dipMain( message: "Hello Mayank" ) {
    print("This is Closure.\n")
}


//------------ Auto Closure ----------------

func SayHi( myClosure: @autoclosure () -> () )
{
    print("Main Func Called.")
    myClosure()
}


SayHi(myClosure: print("This is Auto Closure.\n") )




//################# Class and Objects ######################
print()


class Employee{
    var empName: String
    var empID: Int
    var role: String
    
    init(n:String, id:Int, r:String){
        self.empName = n
        self.empID = id
        self.role = r
    }
    
    func printData(){
        print("Employee Name: \(empName) and Employee ID is: \(empID) and Job Role is: \(role) \n")
    }
}


var emp1 = Employee(n:"Mayank", id:8899, r:"iOS Dev")
var emp2 = Employee(n:"Sophiya", id:2244, r:"HR")
var emp3 = Employee(n:"Jaspal", id:6633, r:"iOS Developer")
var emp4 = Employee(n:"Akshay", id:5566, r:"Flutter Developer")
var emp5 = Employee(n:"Laxman", id:1188, r:"MERN Developer")

emp1.printData()
emp2.printData()
emp3.printData()
emp4.printData()
emp5.printData()



//----------------- Struct Vs Class in Swift ----------------------
print()


//-- Class ----
class Bike{
    var color: String
    
    init( color: String ){
        self.color = color
    }
}


var bike1 = Bike( color:"Blue" )
var bike2 = bike1

bike2.color = "Red"
print("Class: Bike 1 Color is: \(bike1.color) and Bike 2 Color is: \(bike2.color)\n")



//-------- Struct -------------
struct BikeS{
    var color: String
    
    init( color: String ){
        self.color = color
    }
}


var bikeS1 = BikeS( color:"Blue" )
var bikeS2 = bike1

bike2.color = "Red"
print("Struct: Bike 1 Color is: \(bikeS1.color) and Bike 2 Color is: \(bikeS2.color)\n")





//---------- Swift Computed Properties -----------------
class ComputeClass{
    var x:Int = 0
    var y:Int = 0
    
    //computed property
    var sum:Int {
        x + y
    }
    
    //computed property with getters and setters
    var mul:Int {
        get{
            x * y
        }
        
        set(modify){
            x = ( modify + 10 )
            y = ( modify + 10 )        }
    }
    
    //Static Property
    static var company = "Devronins"
    
    //-Static Method
    static func cube(_ a:Int) -> Int{
        return a * a * a
    }
}


var cObj = ComputeClass()
cObj.x = 25
cObj.y = 30

print("\nCompute Property Class: \nx= \(cObj.x) and y= \(cObj.y) and sum= \(cObj.sum) \n")

cObj.mul = 5
print("By Setter: Now, x= \(cObj.x) and y= \(cObj.y) \nBy getter: mul= \(cObj.mul) \n")

print("Static Variable: Company Name = \( ComputeClass.company )\n")

print("Static Method: Cube of 5 is: \( ComputeClass.cube(5) )\n")


//--------------------------------------------------------------------------------------


//mutating method
struct myStruct{
    var salary = 1524
    
    mutating func updateSalary( increment: Int )
    {
        print("previous salary= \(salary)")
        salary = salary + increment
        print("updated salary= \(salary) \n")
    }
}

var StrObj = myStruct()

StrObj.updateSalary(increment: 12345)



//------------- Initializers -----------------
class Initializer{
    
    //Initializer without parameter
    init(){
        print("1st Initializer without parameter called.")
    }
    
    //Initializer with 1 parameter
    init( a:Int ){
        print("2nd Initializer with 1 parameter called.")
    }
    
    //Initializer with 2 parameters
    init( a:Int, b:Int ){
        print("3nd Initializer with 2 parameters called.\n")
    }
    
}

Initializer()
Initializer(a:5)
Initializer(a:2, b:4)

//-------------------------

class Test1{
    var name: String
    var number: Int
    
    init(name:String, number:Int){
        self.name = name
        self.number = number
    }
    
    convenience init(){
        self.init(name:"Mayank", number:8899221111)
    }
}

var t1 = Test1()

print("Convenience initializer:\nname = \(t1.name) and number = \(t1.number) \n")


//---------------- Failable Initializer -----------------------------
class File1{
    var folder: String
    
    init?( folder: String ){
        
        if folder.isEmpty {
            print("Folder is Empty")
            return nil
        }else{
            self.folder = folder
            print("Folder found successfully, folder = \(self.folder)")
        }
    }
}

var file1 = File1(folder: "abc")

if file1 != nil {
    print("Success")
}else{
    print("Failed")
}



//---------------------------------
// Memberwise Initializer for structs
struct memStruct{
    var name: String
    var insta: String
}

var mStruct = memStruct(name: "Mayank", insta: "mayank4rana")

print("\nMemberwise Initializer for structs:\nName = \(mStruct.name) and instagram Id is = \(mStruct.insta) \n")



//----------- Deinitialization -------------
class Race{
    var laps:Int
    
    init(){
        laps = 5
        print("\nInitializer called:\nRace Completed, Total laps = 5")
    }
    
    deinit{
        print("\nDeinitialization Called.:\nMemory Deallocated.\n")
    }
}

// create an instance
var dObj: Race? = Race()

// deallocate object
dObj = nil










//***************** Inheritance and Method OverRiding and SUPER keyword *************************
class Animal{
    var type = "Animal"
    func eat(){
        print("\nAnimal can eat.")
    }
}


class Cow : Animal
{
    override func eat(){
        //calling parent class func
        super.eat()
        print("Cow eat grass.")
    }
}


class Dog : Animal
{
    override func eat(){
        print("Dog eat food.")
    }
}

class GermanShepard : Dog {
    override func eat() {
        //calling parent class function
        super.eat()  //super refers parent object
        print("GermanShepard eat food.\n")
    }
}



var cow  = Cow()

var germanDog = GermanShepard()

cow.eat()
print( "And it is a type of \(cow.type).\n" )
germanDog.eat()






//****************** Protocolos **********************
protocol Bank{
    var userName: String { get }
    var balance: Int { get }
    
    func withdraw( debit:Int )
    
    func deposit( credit:Int )
}


class PNB : Bank {
    var userName: String
    var balance: Int
    
    init( name:String, balance:Int ){
        self.userName = name
        self.balance = balance
    }
    
    func checkBalance(){
        print("\(userName), your account balance is: \(balance)\n")
    }
    
    func withdraw(debit: Int) {
        if debit > self.balance{
            print("Insuficent Balance.\n")
        }else{
            balance = balance - debit
            print("\(userName), you have successfully withdraw the amount of \(debit) \nNow your account balance is: \(balance)\n")
        }
    }
    
    func deposit(credit: Int) {
        balance = balance + credit
        print("\(userName), you have successfully deposit the amount of \(credit) \nNow your account balance is: \(balance)\n")
    }
    
}



var user1 = PNB( name:"Mayank", balance:500)

var user2 = PNB( name:"Shubham", balance: 500)

user1.checkBalance()
user2.checkBalance()

user1.deposit(credit: 1500)
user1.withdraw(debit: 200)






print()
//################# Swift Enumeration ###########################

enum company : CaseIterable {
    case Flutter, iOS, React, HR, Angular
}

var compDict = ["Mayank":company.iOS, "Sourabh":company.React, "Sophiya":company.HR, "Laxman":company.Angular, "Akshay":company.Flutter]
/*
var mayank = company.iOS
var akshay = company.Flutter
var sourabh = company.React
var sophiya = company.HR

for role in company.allCases{
    print("Role : \(role)")
}
*/

for (key,value) in compDict {
    print("\(key) = \(value)")
}


print()
//-------------------------------------------------
var post = company.Flutter

switch(post) {
    case .iOS :
        print("Mayank is iOS Developer.")
        
    case .React :
        print("Sourabh is React Developer.")
        
    case .HR :
        print("Sophiya works in HR Department.")
        
    case .Angular :
        print("Laxman is Angular Developer.")
        
    case .Flutter :
        print("Akshay is Flutter Developer.")
        
    default :
        print("Invalid Post, it is not in our company.")
}




//---------------------- enums With Raw Values ---------------------
enum empID : Int {
    case one = 8899
    case two = 4455
    case three = 7788
    case four = 1122
    case five = 3366
}

print("\nEnum with Raw Value of: \(empID.one) = \(empID.one.rawValue) \n")


// Note: Raw values can be of strings, characters, integers, or floating-point number types.


//---------------------- Swift enum Associated Values ----------------------
enum my {
    case myName (String)
    
    case myID (Int)
}

var myN = my.myName("Mayank")
var myIDis = my.myID(8899)

print("\nSwift enum Associated Values:\n\(myN) \n\(myIDis)\n")



//----------------- Enum ----------------------------

enum MyDataType {
    
    case myInt ( myi : Int)
    
    case myInts (Int, Int, Int)
    
    case myString ( mys : String)

}

var myint = MyDataType.myInt(myi: 555555)

var myints = MyDataType.myInts(11, 22, 33)

var mystring = MyDataType.myString(mys: "This is my own type of String.")

print("\nMy Own Datatype:-\n")


for i in 1...2 {
    
    let ternary = (i==1) ? myint : myints
    
    switch(ternary) {
        case let .myInt(myi) :
            print("My Int : \(myint) = \(myi) \n")
        
        case .myInts :
        print("My Many Ints = \(myints) \n")
        
        case let .myString(mys) :
            print("My String : \(mystring) = \(mys) \n")
            
        default :
            print("Nothing Matched.\n")
    }
}



//################## Struct ########################

struct Person{
    var name:String = ""
    var age:Int = Int()
    
    func disp(_ whoIs: String) {
        print("\nStruct:-\nname: \(name) and age: \(age) and Who called this method = \(whoIs)\n")
    }
}

var person1 = Person()
person1.name = "Mayank"
person1.age = 58
person1.disp("Person 1")

var person2 = Person()
person2.name = "Sourabh"
person2.age = 44
person2.disp("Person 2")

//person1.disp("Person 1")

var person3 = person2
print("\nNow Person 2 data is assigned to person 3\n")

person2.age = 35
print("Change age of person 2 = 35")


person3.disp("Person 3")


if person3.age == 44{
    print("Age does not changed.\n")
}else{
    print("Age is changed.\n")
}





//******************* Swift Singleton ******************

class singleTonClass {
    
    var name = "Singleton Class"
    
    //creating private initializer
    //for Object does not accessible outside the class
    private init(){ }
    
    func chkAccess(){
        print("\nAccess Granted...\n")
    }
    
    //make class object as a static member of class
    static let singleObj = singleTonClass()
}

/*
var singleTonObj = singleTonClass()     //Generate Error
 */


//Now we can access thye property of class through Inner OBJ of class using class name
singleTonClass.singleObj.chkAccess()







//#################### Error Handling #########################
enum myError : Error{
    case DivideByZero
}

class ErrorHand {
    
    static func divide(numerator:Int, denominator:Int) throws {
        // throw error if divide by 0
        if denominator == 0 {
            print("Division Failed")
            throw myError.DivideByZero
        }else{
            let result = numerator / denominator
            print("\nSuccessfully divided:\nResult is: \(result)\n")
        }
 
    }
    
}


//ErrorHand.divide(numerator: 12, denominator: 0)
// catch error if function throws an error
do{
    // we can also disable error handling by just using try with ! like try!
    try ErrorHand.divide(numerator: 20, denominator: 0)
    print("Worked successfully without error.\n")
}
catch myError.DivideByZero {
    print("Error Occured and catched: Denominator is not be zero.\n")
}


/* Output:-
 Division Failed
 Error Occured and catched: Denominator is not be zero.
 */





//############################## Swift Generic Function ###################################

// create a generic class
class GenericClasa <T> {
    
    var data: T
    
    init(data: T){
        self.data = data
    }
    
    //Generic Function
    func GenFun() -> T {
        return self.data
    }
}


var gen1 = GenericClasa<Int>(data: 5)
print("\nGeneric Class Function Returns: \( gen1.GenFun() )\n")

var gen2 = GenericClasa<String>(data: "Mayank")
print("Generic Class Function Returns: \( gen2.GenFun() )\n")




//------------ Type Constraints in Swift Generics --------------
func GenFun<T: Numeric>( num1:T, num2:T){
    print("Type Constraints in Swift Generics\nThe Sum is: \(num1 + num2) \n")
}


print("\nCalc Sum of Integer Values:-")
GenFun(num1: 12, num2: 20)


print("\nCalc Sum of Double Values:-")
GenFun(num1: 12345.0, num2: 12345.0)







//#################### Swift Extension #######################
protocol myExProto{
    var num: (Int) { get }
    var square: (Int) { get }
    func square(num:Int)
}

extension myExProto{
    // extension protocol provide functionality to define a function in protocol
    func helloProto(){
        print("\nHello, This is Extension Protocol...\n")
    }
}


class CalcEx : myExProto {
    var num = 0
    //var evenNo = false
    var square = 0
    
    func square(num:Int){
        self.num = num
        self.square = num * num
        print("The Square of \(num) is: \(self.square) \n")
    }
}


extension CalcEx {
    //var temp = 0  ------ Extensions must not contain stored properties
    
    //Computed Property
    var chkEven : String {
        (num%2==0) ? "The \(num) is Even Number\n" : "The \(num) is Odd Number.\n"
    }
    
    func cube(){
        let cube = square * num
        print("The cube of \(num) is: \(cube) \n")
    }
}


var calcObj = CalcEx()

// access extended protocol
calcObj.helloProto()

calcObj.square(num: 5)
print( calcObj.chkEven )
calcObj.cube()






//#################### Access Modifiers or Swift Access Control ###########################
class accessControl{
    
    //1. Public : Access anywhere with no restrictions
    public var a = 1
    
    //2. Internal : Access only within the module / package
    internal var b = 2
    
    //3. File Private : Access only within the File
    fileprivate var c = 3
    
    //4. Private : Access only within the Class
    private var d = 4
}

print("\n# Access Modifiers OR Access Control:-\n\n1. Public : Access anywhere with no restrictions.\npublic var a = 1\n\n2. Internal : Access only within the module / package.\ninternal var b = 2\n\n3. File Private : Access only within the File.\nfileprivate var c = 3\n\n4. Private : Access only within the Class\nprivate var d = 4\n\n")






//##############################  Swift Typealias  ##################################

//Typealias for built-in types
typealias myFloat = Float

var testF: myFloat = 2.0
print("My own dataType(or alias) myFloat (which is Float) is : \(testF) \n")


//Typealias for user defined types
//class StudentClass{ - class generate error
    
    typealias student = Array<String>
    
    let arr: student = ["Mayank","Rashika","Anjali","Aanchal", "Kartik", "Himani", "Ishika", "Sagar"]
    
    for stu in arr {
        print("Student: \(stu) \n")
    }
    
//}
