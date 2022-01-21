//
//  ContentView.swift
//  PlantsCare
//
//  Created by Victoria Bermudez (student LM) on 1/4/22.
//

import SwiftUI
import struct Kingfisher.KFImage

struct ContentView: View {
    
    @StateObject var fetchData = FetchData()
    //@State var person = Person()
    
    var body: some View {
        VStack {
            VStack {
                Text("hello")
                //Crop name text
                //Text(person.name ?? "HP Char")
                    //.bold()
                //Image
                /*KFImage(person.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 50, alignment: .center)*/
            }
            NavigationView {
                
                List(fetchData.responses.people){person in
                    NavigationLink(destination: CropDetail(person: person),
                                   label: {HStack{
                                    /*KFImage(person.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 50, alignment: .center)*/
                                    Text(person.name ?? "No Name")
                                   }})
                   // NavigationLink(destination: CropDetail(info: )) --> add info in here i guess?
                    
            }
        }
            
    }
}

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


}
