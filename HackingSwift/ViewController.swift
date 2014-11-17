//
//  ViewController.swift
//  HackingSwift
//
//  Created by 锅巴GG on 14/11/6.
//  Copyright (c) 2014年 FPSS 1999-2014. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.less01()
        //self.less02()
        //self.less03()
        //self.less04()
        //self.less05()
        //self.less06()
        //self.less07()
        //self.less08()
        //self.less09()
        self.less10()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: - less01 赋值
    
    func less01()
    {
        
        let constMe=10
        var myVar=20
        
        myVar=myVar+10
        println(myVar)
        
        let constFloat:Float = 90.0
        var myVarFloat:Float = 100.0
        var strVar = "strVar=" + String(myVar)
        //error let strVar = "test=" + String(myVarFloat)
        println(strVar)
        
        var strVar1="strVar1=\(myVarFloat)" //no error
        println(strVar1)
        
        //error var strVar2="strVar2=\(constFloat+ myVar)"
        var strVar2="strVar2=\(constFloat + myVarFloat)"
        println(strVar2)
        
        var lstMe=["A","L","W","M","J"]
        println(lstMe[0])
        lstMe[0]="\(lstMe[0])lice"
        println(lstMe[0])
        
        var kvMe=[
            "A":"Alice",
            "B":"Bonnie",
            "0":"Zero"
        ]
        kvMe["M"]="Majun"
        kvMe["C"]="Candy"
        kvMe["M"]="Majun1"
        println(kvMe)
        //error println(kvMe[0])
        var varZero=0
        println(kvMe["\(varZero)"])
        println(kvMe[String(varZero)])
        println(kvMe["0"])
        println(kvMe["M"])
        print(kvMe["A"])
        
        
        var emptyArray=[String]()
        var emptyDictory=Dictionary<String, Float>()
        emptyArray=["Alice","Bonnie","Candy"]
        emptyArray[2]="majun"
        println(emptyArray)
        
        var lstShoppingCart=[]
        var dictShoppingCart=[:]
        println(lstShoppingCart)
        println(dictShoppingCart)
    }
    
    
    //MARK: less02 控制流
    
    func less02(){
        
        let lstIntMe=[0,1,2,3,4]
        let lstStrMe=["a","b","c","d"]
        //1 for
        for someValue in lstIntMe {
            if (someValue % 2) == 0 {
                println(someValue)
            }
        }
        //2 for
        for someValue in lstStrMe {
            if (someValue != "a") {
                println(someValue)
            }
        }
        
        //3.1 if
        var optionalName:String?="Alice"
        var greeting="Hello!"
        if let name=optionalName {
            greeting="Hello, \(name)"
        }
        println(greeting)
        
        //3.2 看出?标记可选值的差别了吧?!
        var optionalName1:String?="Alice"
        optionalName1=nil
        var greeting1="Hello!"
        if let name=optionalName1 {
            greeting1="Hello, \(name)"
        }
        println(greeting1)
        
        var strMe:String
        var optionalStrMe:String?
        //error println(strMe) //值使用前必须初始化
        println(optionalStrMe)
        println(optionalStrMe==nil)
        
        
        //4 switch don't need "break"
        let strKey="key"
        //let x="x123"
        switch strKey {
        case "a":
            println("a")
        case "b":
            println("b")
        case let x where x.hasSuffix("x"):
            println("x")
            
        default:
            println("not match")
        }
        
        // 5 for-in match key-value
        let kvMe=[
            "Alice":[10,9,8],
            "AoDong":[0,1,2],
            "Majun":[9,8,7]
        ]
        
        var largest=0
        
        for (key,vs) in kvMe {
            for number in vs {
                if number > largest {
                    largest = number
                }
            }
        }
        println(largest)
        
        
    }
    
    //MARK: less03 String
    func less03(){
        var strMe:String?
        var strMe1=String()
        var strMe2=""
        
        //error println(strMe.toInt()) //String?没有toInt
        //error println(strMe.isEmpty) //String?没有isEmpty
        
        println(strMe1.toInt())
        println(strMe1.isEmpty)
        
        println(strMe2.toInt())
        println(strMe2.isEmpty)
        
        var str1="ABCDE"
        var str2="abcde"
        
        println(str1+str2)
        println(str1>str2)
        println(str1<str2)
        println(str1==str2)
        
        var strA:NSString="你好吗A"
        var strB:NSString="你好嘛"
        var strC:NSString="你好吗a"
        
        println(strA+strB)
        //error println(strA>strB)
        //error println(strA<strB)
        
        println(strA.compare(strC, options: NSStringCompareOptions.CaseInsensitiveSearch)==NSComparisonResult.OrderedSame)
        
        
    }
    
    //MARK: less04 控制流再讨论
    func less04(){
        
        //while loop
        var n=2
        while n<5 {
            println(n++)
        }
        println()
        
        //do-while loop
        var m=2
        do {
            println(m++)
        } while m<5
        println()
        
        //for-in loop
        for i in 2...4 { //...包含上界 ..取消了，不能使用了
            println(i)
        }
        
        println()
        //for-next loop
        for var i=2;i<5;++i {
            println(i)
        }
        
    }
    
    
    //MARK: less05 函数(1)
    
    func fullName(firstName:String, lastName:String) -> String {
        return firstName + lastName
    }
    
    func returnArray()->(Int,Int,Int) {
        return (1,3,5)
    }
    
    //参数变量可变，用数组接收
    func serialNumber(numbers: Int...)-> Int {
        var sum=0
        for number in numbers {
            sum+=number
        }
        return sum
    }
    
    func serialKey(keys: String...)->String {
        var strKey=""
        for key in keys {
            strKey+=key
        }
        return strKey
    }
    
    //func in func
    func funcinfunc() -> Int {
        var a=10
        func add() {
            a+=10
        }
        add()
        
        return a
    }
    
    func returnArrayPlus(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            sum += score
        }
        return (min,max,sum)
    }
    
    
    func less05() {
        //error println(self.fullName(firstName:"Jun", lastName: "Ma")) //为什么第一个参数不要写出来呢？问题是写出来还报错!
        
        println(self.fullName("Jun", lastName: "Ma"))
        var ra: (Int,Int,Int)
        ra=self.returnArray()
        println(ra)
        
        ra=self.returnArrayPlus([10,20,30,40,50])
        println(ra)
        
        println(self.funcinfunc())
        println(self.serialNumber(10,20,30,40,50,60,70,80,90,100))
        println(self.serialKey("a","b","c","d","结束"))
    }
    
    
    //MARK: less06 函数(2)
    //func return func
    func magicFunc()->(Int -> Int){
        
        var sum:Int=1024//注意值域
        
        func someFunc(value:Int)->Int{
            sum=value+1
            println("...sum->"+String(sum))
            return value + 1
        }
        println("sum->"+String(sum))
        return someFunc
    }
    
    func hasAnyMatchs(list:[Int],condition:Int->Bool)->Bool{
        for item in list{
            if condition(item) {
                return true
            }
        }
        return false
    }
    
    func lessThenZero(number:Int)->Bool{
        return number < 0
    }
    
    
    
    func less06(){
        
        //可以看到仅仅是一个引用而已，函数运行时候的栈是临时的
        var increment = magicFunc()
        println(increment)
        println(increment(2))
        println(increment(12))
        
        var increment2 = magicFunc()
        println(increment2(30))
        println(increment2(150))
        
        
        //函数也可以当做参数传入另一个函数。
        var lstMe=[1,2,3,5,6,8,0,2]
        
        println(hasAnyMatchs(lstMe, condition: lessThenZero))
        
        
    }
    
    
    
    //MARK: less07 闭包closure(1)
    
    func backwards(s1: String, s2: String) -> Bool {
        return s1 > s2
    }//倒排序
    
    
    
    
    func less07(){
        
        var numbers = [20,30,40]
        
        for number in numbers.map({(number: Int) -> Int in //closure
            let result = number + 1
            return result
            }
            )
        {
            println(number)
            
        }
        
        let names = ["B", "C", "F", "E", "Z"]
        var reversed = sorted(names, backwards)
        println(reversed)
        
        reversed = sorted(names, { (s1: String, s2: String) -> Bool in return s1 < s2 } )//闭包表达式
        println(reversed)
        
        //根据上下文推断参数和返回值的类型 Inferring Type From Context
        reversed = sorted(names, { s1,s2 in return s1 > s2 } )//闭包表达式
        println(reversed)
        
        //从单句闭包中隐式的返回 Implicit Returns from Single-Expression Closures
        reversed = sorted(names, { s1, s2 in s1 < s2 } ) //no return needed
        println(reversed)
        
        //速记参数名 Shorthand Argument Names
        //error 废弃? reversed = sorted(names, { $0 > $1 } )
        
        reversed = sorted(names, >)
        println(reversed)
        
        
        
        //拖尾闭包 Trailing Closures
        func tcTest(closure:()->()){
            closure()//调用
        }
        
        tcTest({println("closure")})
        tcTest(){println("tc closure")}//tc closure
        
        //so demo by tc closure，但是可以发现，类型推导是否失效了
        //error reversed = sorted(names){>}
        //error reversed = sorted(names){$0>$1}
        reversed = sorted(names){ s1,s2 in return s1 > s2 }
        println(reversed)
        reversed = sorted(names){ s1, s2 in s1 < s2 }
        println(reversed)
        
        
    }
    
    //MARK: less08 闭包closure(2)
    
    func less08(){
        
        
        //Capture
        
        //makeIncrementor 返回类型为 () -> Int。 这意味着其返回的是一个函数,而不是一个简单类型值。
        func makeIncrementor(forIncrement amount: Int) -> () -> Int {
            var runningTotal = 0
            
            //incrementor函数并没有获取任何参数,但是在函数体内访问了runningTotal和amount变量。
            //这是因为其通过捕获在包含它的函数体内已经存在的 runningTotal和amount变量而实现。
            func incrementor() -> Int {
                runningTotal += amount//由于没有修改amount变量,incrementor实际上捕获并存储了该变量的一个副本,而该副本随着incrementor一同被存储。
                return runningTotal
            }
            return incrementor
        }
        
        
        //闭包是引用类型
        //即便incrementBySeven 和 incrementByTen 是常量,但是这些常量指向的闭包仍然可以增加其捕获的变量值。
        let incrementByTen = makeIncrementor(forIncrement: 10)//函数调用后，栈已经被释放，但是闭包内引用的值得到了延续
        let incrementBySeven = makeIncrementor(forIncrement: 7)
        
        println(incrementByTen())
        println(incrementByTen())
        println(incrementByTen())
        
        println(incrementBySeven())
        println(incrementBySeven())
        println(incrementBySeven())
        
        
        //这也意味着如果您将闭包赋值给了两个不同的常量/变量,两个值都会指向同一个闭包
        let incrementByTen1 = incrementByTen
        let incrementByTen2 = incrementByTen
        println(incrementByTen1())
        println(incrementByTen2())
        
        //Swift会决定捕获引用还是拷贝值。
        //不需要标注amount或者runningTotal来声明在嵌入的incrementor函数中的使用方式。
        //Swift同时也处理runingTotal变量的内存管理操作,如果不再被incrementor函数使用,则会被清除。
        
        
    }
    
    //MARK: less09 对象和类
    func less09(){
        let objSquare=Square(sideLength: 12.2, name: "测试方块")
        println(objSquare.Description())
        println(objSquare.nick)
        objSquare.nick="Majun"
        println(objSquare.nick)
        
        var optionalObjSqure:Square?=Square(sideLength: 10, name: "optionalA")
        let optObjMe=optionalObjSqure
        println(optObjMe?.nick)
        println(optObjMe?.sideLength)
        println(optObjMe?.name)
        
        var objMe=Square(sideLength: 9, name: "BigA")
        println(objMe.nick)
        println(objMe.sideLength)
        println(objMe.name)
        
        objMe=optObjMe!
        println(objMe.nick)
        println(objMe.sideLength)
        println(objMe.name)
        
    }
    
    
    //MARK: - less10 枚举 enumeration
    func less10(){
        
        
        enum CompassPoint {//:Int和不指定时候的hashValue没区别
            case North
            case South
            case East
            case West
        }
        
        enum CompassPointSimple {
            case North, South, East, West
        }
        
        var myWay = CompassPoint.self
        
        println(CompassPoint)
        println(CompassPoint.North)
        println(CompassPoint.South)
        println(myWay)
        
        var way=myWay.East
        println(way==CompassPoint.East)
        //error println(way>=0)
        way=CompassPoint.North
        println(way==myWay.North)
        
        var uway=CompassPoint.East
        uway=CompassPoint.West
        println(uway==myWay.West)
        println(uway.hashValue == myWay.North.hashValue)
        println(uway.hashValue)
        
        
        
        enum Barcode {
            case UPCA(Int, Int, Int, Int)
            case QRCode(String)
        }
        
        var directionToHead = CompassPoint.West
        var productBarcode = Barcode.UPCA(8, 85909, 51226, 3)
        
        
        // just avoiding Compiler Warning: Switch condition evaluates to a constant
        func testEnum(){
            
            directionToHead = .East
            productBarcode = .QRCode("ABCDEFGHIJKLMNOP")
            
            
            switch directionToHead {
            case .North:
                println("Lots of planets have a north")
            case .South:
                println("Watch out for penguins")
            case .East:
                println("Where the sun rises")
            case .West:
                println("Where the skies are blue")
            }
            
            
            
            switch productBarcode {
            case .UPCA(let numberSystem, let manufacturer, let product, let check):
                println("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
            case .QRCode(let productCode):
                println("QR code: \(productCode).")
            }
            
            
        }
        testEnum()
        
        //Raw Values
        enum ASCIIControlCharacter: Character {
            case Tab = "\t"
            case LineFeed = "\n"
            case CarriageReturn = "\r"
        }
        
        
        
        enum Planet: Int {
            case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
        }
        
        let earthsOrder = Planet.Earth.rawValue
        println(earthsOrder)
        
        enum Planet1: Int {
            case Mercury = 0, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
        }
        let earthsOrder1 = Planet1.Earth.rawValue
        println(earthsOrder1)
        
        //Initializing from a Raw Value
        let possiblePlanet = Planet(rawValue: 3)
        // possiblePlanet is of type Planet? and equals Planet.Earth
        let possiblePlanet1 = Planet1(rawValue: 2)
        // possiblePlanet1 is of type Planet? and equals Planet.Earth
        println(possiblePlanet==Planet.Earth)
        println(possiblePlanet1==Planet1.Earth)
        
        let positionToFind = 3
        if let somePlanet = Planet(rawValue: positionToFind) {
            switch somePlanet {
            case .Earth:
                println("Mostly harmless")
            default:
                println("Not a safe place for humans")
            }
        } else {
            println("There isn't a planet at position \(positionToFind)")
        }
        
        
        enum pokerCard:Int {
            case Ace=1,Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten
            case Prince,Queen,King
            func cardName()->String{
                switch self {
                case .Ace:
                    return "Ace"
                case .Prince:
                    return "Prince"
                case .Queen:
                    return "Queen"
                case .King:
                    return "King"
                default:
                    return String(self.rawValue)
                    
                }
            }
        }
        
        var myPockerCard=pokerCard.Ace
        println(myPockerCard.cardName())
        myPockerCard=pokerCard.Nine
        println(myPockerCard.cardName())
        
    }
    
    
    
}

class NamedShape {
    var numberOfSides:Int=0
    var name:String
    
    init(name:String){
        self.name=name
    }
    
    init(name:String,numOfSides:Int){
        self.name=name
        self.numberOfSides=numOfSides
    }
    
    func Description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square:NamedShape{
    var sideLength:Double
    private var myNick:String="Alice"
    
    
    init(sideLength:Double,name:String){
        self.sideLength=sideLength
        //myNick="Alice"
        super.init(name: name)
        numberOfSides=4
    }
    
    override func Description() -> String {
        return "\(name) is a Square."
    }
    
    
    
    
    var nick: String {
        get {
            return myNick
        }
        set {
            myNick=newValue
        }
    }
    
}