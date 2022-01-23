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
         //   Image("Background")
           //     .resizable()
             //   .edgesIgnoringSafeArea(.all)
                List(fetchData.responses.results){result in
                NavigationLink(
                    destination: CropDetail(res : result),
                    label: {
                        HStack{
                            Text(result.name ?? "no name")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black) //changes the color of the text to black
                                .multilineTextAlignment(.center) //aligns the text to center
                                .shadow(color: .green, radius: 0.5, x: 0, y: 2) //adds a dropshadow to the text
                                .shadow(color: .blue, radius: 0.5, x: 0, y: 2.1) //adds a dropshadow to the text
                                .font(.system(.subheadline, design: .rounded)) //rounds font

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
