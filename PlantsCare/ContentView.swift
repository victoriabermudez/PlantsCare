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
    @State var crop = Crop()
    
    var body: some View {
        VStack {
            VStack {
                
                //Crop name text
                Text(crop.name ?? "No Name")
                //Image
                KFImage(crop.thumbnail_url)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 50, alignment: .center)
            }
            NavigationView {
                
                List(fetchData.responses.crops){crop in
                    NavigationLink(destination: CropDetail(),
                                   label: {HStack{
                                    KFImage(crop.thumbnail_url)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 50, alignment: .center)
                                    Text(crop.name ?? "No Name")
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
