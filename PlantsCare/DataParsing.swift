//
//  DataParsing.swift
//  PlantsCare
//
//  Created by Michelle Kelly (student LM) on 1/10/22.

import Foundation

class FetchData : ObservableObject{
    
    @Published var responses : Response = Response()
    
    init(){
        guard let url = URL(string: "http://growstuff.org/crops.json") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, errors) in
            
            guard let data = data else {return}
            
            guard let dataAsString = String(data: data, encoding: .utf8) else {return}
            
            let decoder = JSONDecoder()
            
            if let response = try? decoder.decode(Response.self, from: data) {
                DispatchQueue.main.async {
                    self.responses = response
                }
            }
            
            
        }.resume()
    }
    
}

struct Response : Codable{
    
    var totalResults : Int = 0
    var articles : [Article] = [Article]()
    
}

struct Crop : Codable{
    
    var name : String?
    var scientific_names : String?
    var url : URL?
    var urlToImage : URL?
    
}

// add an extension to the article struct so that we can use an array of articles to dynamically create List.
extension Crop: Identifiable{
    
    var id: String {return name!}
    
}


