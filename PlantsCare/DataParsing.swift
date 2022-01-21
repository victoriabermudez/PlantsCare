//
//  DataParsing.swift
//  PlantsCare
//
//  Created by Michelle Kelly (student LM) on 1/10/22.

import Foundation

class FetchData : ObservableObject{
    
    var responses : Response?
    
    init(){
        guard let url = URL(string: "https://hp-api.herokuapp.com/api/characters") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, errors) in
            
            guard var data = data else {
                print("no data")
                return
                
            }
            
            // clean up the JSON so that it can be decoded!
            // if you want to see what the structure looks like now, uncomment the line that
            // says print(dataAsString) and paste the results in make json pretty, just
            // don't include the stuff that prints before it.
            guard var dataAsString = String(data: data, encoding: .utf8) else {return}
            dataAsString = "{ \"people\" : " + dataAsString + "}"
            //print()
            //print(dataAsString)
            
            data = dataAsString.data(using: .utf8)!
            
            
            //decoding
            let decoder = JSONDecoder()
            
            if let response = try? decoder.decode(Response.self, from: data) {
                DispatchQueue.main.async {
                    self.responses = response
                    //print(response)
                }
            }
            else{
                print("no data")
            }
            
            
            
        }.resume()
    }
    
}

struct Response : Codable{
    var people : [Person] = [Person]()
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


