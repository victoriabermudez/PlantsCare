//
//  DataParsing.swift
//  PlantsCare
//
//  Created by Michelle Kelly (student LM) on 1/10/22.

import Foundation

class FetchData : ObservableObject{
    
    var responses : Response = Response()
    
    init(){
        guard let url = URL(string: "https://hp-api.herokuapp.com/api/characters") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, errors) in
            
            guard let data = data else {
                print("no data")
                return
                
            }
            
            guard let dataAsString = String(data: data, encoding: .utf8) else {return}
            
            print(dataAsString)
            //decoding
            let decoder = JSONDecoder()
            
            if let response = try? decoder.decode([[String: Response]].self, from: data) {
                DispatchQueue.main.async {
                    //self.responses = response[0]
                    print(response)
                }
            }
            else{
                print("data failed")
            }
            
            
        }.resume()
    }
    
}

struct Response : Codable{
    var people : [Person] = [Person]()
    
//    init(from decoder: Decoder) throws {
//        var container = try decoder.unkeyedContainer()
//        people = try container.decode([Person].self)
//    }
//   // var crops : [Crop] = [Crop]()
    //var totalResults : Int = 0
    
}

struct Person : Codable{
    
    var name : String?
    
    
    //var scientific_name : String?
    //var has_photos: Bool?
    //var image : URL?
    //var alternate_names: String? //this is rly inconsisteht...
    //var description: String?
    //var plantings_count: String? //
    //var harvests_count: String? //
    
}

// add an extension to the article struct so that we can use an array of articles to dynamically create List.
extension Person: Identifiable{
    
    var id: String {return name!}
    
}


