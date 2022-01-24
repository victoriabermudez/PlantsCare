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
        ZStack{ //start of ZStack
            Image("Background") //adds the image behind the list, creating a banner effect
                .resizable() //scales the image to the size of the screen
                .edgesIgnoringSafeArea(.all) //extends beyond the safe area
            VStack{ //start of VStack
                Text("Rick & MOREty") //adds text (title of app)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/) //makes the text bolded
                NavigationView { //start of NavigationView
                    List(fetchData.responses.results){ result in //list
                        NavigationLink(
                            destination: CropDetail(res : result),
                            label: {
                                HStack{
                                    KFImage(/*URL(string: */result.image) //adds the image from the API to the side of the list
                                        .resizable()
                                        .aspectRatio(contentMode: .fit) //makes the aspect ratio fit
                                        .frame(width: 100, height: 50) //sets the width and height of the image
                                    Text(result.name ?? "no name") //gets the name of the character from the API
                                        .fontWeight(.bold) //makes this text bold
                                        .foregroundColor(Color.black) //changes the color of the text to black
                                        .multilineTextAlignment(.center) //aligns the text to center
                                        .shadow(color: .green, radius: 0.5, x: 0, y: 2) //adds a dropshadow to the text
                                        .shadow(color: .blue, radius: 0.5, x: 0, y: 2.1) //adds a dropshadow to the text
                                        .font(.system(.subheadline, design: .rounded)) //rounds font
                                    
                                    
                                }
                            }
                        )
                    }
                    .navigationBarTitle("")
                            .navigationBarHidden(true)
                    //hid the NavigationBarTitle so that the already established banner would be closer to the list
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
