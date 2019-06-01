import Foundation

class Avengers {
    let heroes = ["SUPERMAN", "THOR", "ROBIN", "IRONMAN", "GHOSTRIDER", "CAPTAINAMERICA", "FLASH", "WOLVERINE", "BATMAN", "HULK", "BLADE", "PHANTOM", "SPIDERMAN", "BLACKWIDOW", "HELLBOY", "PUNISHER", "ANNAWILLIAMS"]
    var HeroTrueCaller = [String : String]() // [Diler Number : Hero]() diary.
    
    func GenerateHeroDiary() {
        print("Building hero directory...")
        for hero in heroes {
            var HeroCode = "0 "
            for character in hero {
                switch character {
                case "A"..."C": HeroCode += "2"
                case "D"..."F": HeroCode += "3"
                case "G"..."I": HeroCode += "4"
                case "J"..."L": HeroCode += "5"
                case "M"..."O": HeroCode += "6"
                case "P"..."S": HeroCode += "7"
                case "T"..."V": HeroCode += "8"
                case "W"..."Z": HeroCode += "9"
                default: fatalError("No button for that.")
                }
            }
            HeroTrueCaller[HeroCode] = hero
        }
        print("Directory ready.")
        print(HeroTrueCaller)
    }
    
    func GetHero(for Code: String) -> String {
        if let hero = HeroTrueCaller[Code] {
            return hero
        }
        return "APPENDIX"
    }
    
    init() {
        let start = DispatchTime.now()
        GenerateHeroDiary()
        let stop = DispatchTime.now()
        print("Time taken: \(Float(stop.uptimeNanoseconds - start.uptimeNanoseconds)/1_000_000_000)s")
    }
}

var Avg = Avengers.init()

Avg.GetHero(for: "0 4766626")
Avg.GetHero(for: "0 4855")
Avg.GetHero(for: "0 774337626")
Avg.GetHero(for: "0 8467")
Avg.GetHero(for: "0 22782462637422")
Avg.GetHero(for: "0 2522594369")
Avg.GetHero(for: "0 100")
Avg.GetHero(for: "0 266294554267")
