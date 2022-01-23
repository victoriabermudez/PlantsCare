//
//  data parsing.swift
//  JSON 121521
//
//  Created by Angela Ge (student LM) on 12/15/21.
//

import Foundation

class FetchData : ObservableObject{
    
    @Published var responses : Response = Response()
    
        init(){
            guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
                print("no data")
                return}
            
            
            URLSession.shared.dataTask(with: url) { (data, response, errors) in
                guard let data = data else {
                   //print("error")
                    return
                }
                
                //guard let dataAsString = String(data: data, encoding: .utf8) else {return}
                
                
                
                let decoder = JSONDecoder()
                if let response = try? decoder.decode(Response.self, from: data) {
                    DispatchQueue.main.async {
                        self.responses = response
                    }
                }
                else{
                    print("Can't decode JSON")
                }
                
                
            }.resume() //if you don't have this it'll just schedule it it won't actually execute
    }
}

struct Response: Codable{
    var results : [Result] = [Result]()
}

struct Result: Codable{
    var id : Int?
    var name : String?
    var status : String?
    var species : String?
    var gender : String?
    var origin : Origin = Origin()
    var image : URL? //= "https://www.publicdomainpictures.net/pictures/280000/velka/not-found-image-15383864787lu.jpg"
}

struct Origin: Codable{
    var name: String?
}

extension Result : Identifiable{
    var idd: String {return name!}
}
