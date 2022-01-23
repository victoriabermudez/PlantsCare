//
//  ContentView.swift
//  JSON 121521
//
//  Created by Angela Ge (student LM) on 12/15/21.
//

import SwiftUI
import struct Kingfisher.KFImage

struct ContentView: View {
    @StateObject var fetchData = FetchData()
    @State var res = Result()
    
    var body: some View {
        NavigationView{
            List(fetchData.responses.results){result in
                NavigationLink(
                    destination: CropDetail(res : result),
                    label: {
                        HStack{
                            Text(result.name ?? "no name")
                            //Text("hello")
                            KFImage(/*URL(string: */result.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 50)
                        }
                    }
                )
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
