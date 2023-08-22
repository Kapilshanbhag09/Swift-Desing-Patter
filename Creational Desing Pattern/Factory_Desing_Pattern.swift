enum ShoeType {
    case nike
    case crocs
    case adidas
    case puma
}

protocol  Shoe {
    var color: String {get}
    func getShoeName() -> String
}

struct ShoeFactory {
    //Return the instance of the shoe type requested from client.
    static func getShoe(_ shoeType: ShoeType,withColor color: String = "") -> any Shoe {
        switch shoeType {
        case .nike      : 
            return Nike(color: color)
        case .crocs     :
            return Crocs(color: color)
        case .adidas    :
            return Adidas(color: color)
        case .puma      :
            return Puma(color: color)
        }
    }
}

struct Nike: Shoe {
    var color: String = ""
    func getShoeName() -> String {
        return "Nike"
    }
}
struct Crocs: Shoe {
    var color: String = ""
    func getShoeName() -> String {
        return "Crocs"
    }
}
struct Adidas: Shoe {
    var color: String = ""
    func getShoeName() -> String {
        return "Adidas"
    }
}

struct Puma: Shoe {
    var color: String = ""
    func getShoeName() -> String {
        return "Puma"
    }
}


//Client Code
//Request the shoe instance from factory.
let nikeShoe = ShoeFactory.getShoe(.nike, withColor: "White") 
let crocsShoe = ShoeFactory.getShoe(.crocs, withColor: "Green")
let adidasShoe = ShoeFactory.getShoe(.adidas, withColor: "Black")
let pumaShoe = ShoeFactory.getShoe(.puma, withColor: "Red")
