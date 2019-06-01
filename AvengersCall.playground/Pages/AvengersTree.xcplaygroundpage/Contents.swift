//: [Previous](@previous)

import Foundation

class Node {
    var Data : String
    var Children : [String : Node]
    
    init(for Data : String) {
        self.Data = Data
        Children = [String : Node]()
    }
}

class AvengersTree {
    var Root : Node?
    let Heroes = ["SUPERMAN", "THOR", "ROBIN", "IRONMAN", "GHOSTRIDER", "CAPTAINAMERICA", "FLASH", "WOLVERINE", "BATMAN", "HULK", "BLADE", "PHANTOM", "SPIDERMAN", "BLACKWIDOW", "HELLBOY", "PUNISHER", "ANNAWILLIAMS"]
    
    func GenerateHeroTree() {
        var LevelNodes = [String : Node]()
        Root = Node.init(for: "0")
        let TreeRoot = Node.init(for: " ")
        Root!.Children[" "] = TreeRoot
        for hero in Heroes {
            var level = 2
            var huristic = 9
            var temp = TreeRoot
            var child = ""
            for character in hero {
                switch character {
                case "A"..."C": child = "2"
                case "D"..."F": child = "3"
                case "G"..."I": child = "4"
                case "J"..."L": child = "5"
                case "M"..."O": child = "6"
                case "P"..."S": child = "7"
                case "T"..."V": child = "8"
                case "W"..."Z": child = "9"
                default: fatalError("No button for that.")
                }
                if let _ = temp.Children[child] {} else {
                    if let _ = LevelNodes["\(level) \(child)"] {
                        temp.Children[child] = LevelNodes["\(level) \(child)"]
                    } else {
                        let Child = Node.init(for: child)
                        temp.Children[child] = Child
                        LevelNodes["\(level) \(child)"] = Child
                    }
                }
                huristic += Int(child)!
                temp = temp.Children[child]!
                level += 1
            }
            temp.Children["\(huristic)"] = Node.init(for: hero)
        }
        print(LevelNodes.count)
    }
    
    func TraverseTree(from Root: Node) {
        print(Root.Data)
        for i in 0...9 {
            if let Child = Root.Children["\(i)"] {
                TraverseTree(from: Child)
            }
        }
    }
    
    func FindHero(for Code : String) -> String {
        var temp = Root
        var huristic = 9
        for character in String(Code.dropFirst()) {
            if let tempUnravelled = temp {
                temp = tempUnravelled.Children[String(character)]
            }
            if String(character) != " " {
                huristic += Int(String(character))!
            }
        }
        if let temp = temp {
            if let hero = temp.Children["\(huristic)"] {
                return hero.Data
            }
        }
        return "APPENDIX"
    }
    
    init() {
        let start = DispatchTime.now()
        GenerateHeroTree()
        let stop = DispatchTime.now()
        print("Time taken: \(Float(stop.uptimeNanoseconds - start.uptimeNanoseconds)/1_000_000_000)s")
    }
}


let HeroCentre = AvengersTree.init()

print(HeroCentre.FindHero(for: "0 4766626"))
print(HeroCentre.FindHero(for: "0 4855"))
print(HeroCentre.FindHero(for: "0 774337626"))
print(HeroCentre.FindHero(for: "0 8467"))
print(HeroCentre.FindHero(for: "0 22782462637422"))
print(HeroCentre.FindHero(for: "0 2522594369"))
print(HeroCentre.FindHero(for: "0 100"))
print(HeroCentre.FindHero(for: "0 266294554267"))
//: [Next](@next)
