import Foundation

//single
class CoffeeShopViewModel:Codable{
    let name:Dynamic<String>
    let city:Dynamic<String>
    let address:Dynamic<String>
    let openTime:Dynamic<String>
    
    private enum CodingKeys:String, CodingKey {
        case name, city, address, openTime = "open_time"
    }

    required init(from decoder:Decoder) throws{
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = Dynamic(value: try container.decode(String.self, forKey: .name))
        city = Dynamic(value: try container.decode(String.self, forKey: .city))
        address = Dynamic(value: try container.decode(String.self, forKey: .address))
        openTime = Dynamic(value: try container.decode(String.self, forKey: .openTime))
        
    }
    
    
}
