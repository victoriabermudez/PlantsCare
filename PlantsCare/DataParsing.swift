//
//  DataParsing.swift
//  PlantsCare
//
//  Created by Michelle Kelly (student LM) on 1/10/22.

import Foundation

class FetchData : ObservableObject{
    
    @Published var responses : Response = Response()
    
    init(){
        guard let url = URL(string: "https://growstuff.org/crops.json") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, errors) in
            
            guard let data = data else {
                print("no data")
                return
                
            }
            
            guard let dataAsString = String(data: data, encoding: .utf8) else {return}
            
            print(dataAsString)
            //decoding
            let decoder = JSONDecoder()
            
            if let response = try? decoder.decode(Response.self, from: data) {
                DispatchQueue.main.async {
                    self.responses = response
                    print(self.responses.totalResults)
                }
            }
            else{
                print("data failed")
            }
            
            
        }.resume()
    }
    
}

struct Response : Codable{
    
    var crops : [Crop] = [Crop]()
    var totalResults : Int = 0
    
}

struct Crop : Codable{
    
    var name : String?
    var scientific_name : String?
    var has_photos: Bool?
    var thumbnail_url : URL?
    var alternate_names: String? //this is rly inconsisteht...
    var description: String?
    var plantings_count: String? //
    var harvests_count: String? //
    
}

// add an extension to the article struct so that we can use an array of articles to dynamically create List.
extension Crop: Identifiable{
    
    var id: String {return name!}
    
}


