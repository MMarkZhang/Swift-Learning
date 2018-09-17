//: Playground - noun: a place where people can play
// this is a first try 
/* I don't know
      what will happen*/



import UIKit

//: First Class.
//basic language and information//

var str = "Hello, playground"

var firstSentence = "Hello World"

var trail = 1

let pi = 3.1415926

var number: Float = 3.1

let sentenceLet = "something unchangable"

var sentenceVar = "changable"

var name1 = "Mark"

var name2 = "Yesenia"




//: Class "Strut"

struct Student  {
    let name : String
    var age : Int
    var schoolName : String
}

var Mark = Student(name: "Zhang", age: 17, schoolName: "HFLS")


Mark.schoolName = "HEFLS"

var a = 3
var b = 3

//: --++

var aabb = a-- * b
var ab = aabb

var aaabb = a-- * b
var abb = aaabb

var c = --a * b

var totalMoney = 0

var bill = 100
var pop = 200

totalMoney += bill
totalMoney += pop

var d: Float = 6.5

//:pirate boat game

struct GridSize {
    let width = 5
    let height = 5
}


func isEqual<T : Comparable> (a : T, b : T) -> Bool {
    return (a == b)
}

isEqual(1, b : 2)
let number1 = 1
let number2 = 2
let numberc = 1
let wordd = "ok"
let worde = "ok"
isEqual(number1, b: numberc)

isEqual(worde, b: wordd)


enum WeekDays : Int {
    case Monday = 0, Tuesday, wednesday
}

var day = WeekDays.Monday
func writtenWeekDays (day : WeekDays){
    switch day {
    case .Monday:
        print("first")
    case .Tuesday:
        print("second")
        
    }
}

