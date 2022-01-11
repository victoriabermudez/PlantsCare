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
    
    var body: some View {
        NavigationView{
            
            List(fetchData.responses.crops){crop in
                NavigationLink(destination: CropDetail(),
                                label: {
                                    //HStack{
//                                    KFImage(crop.thumbnail_url)
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)
//                                        .frame(width: 100, height: 50, alignment: .center)
                                    Text(crop.name ?? "No Name")
                                })
                
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

