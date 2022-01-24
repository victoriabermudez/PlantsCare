//
//  CropDetail.swift
//  PlantsCare
//
//  Created by Michelle Kelly (student LM) on 1/11/22.
//

import SwiftUI
import struct Kingfisher.KFImage

struct CropDetail: View {
    //var result : Result? = Result()
    @State var res : Result
    
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                KFImage(/*URL(string: */res.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                HStack {
                    Text("Name: ")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black) //changes the color of the text to black
                        .multilineTextAlignment(.center) //aligns the text to center
                        .shadow(color: .green, radius: 0.5, x: 0, y: 2) //adds a dropshadow to the text
                        .shadow(color: .blue, radius: 0.5, x: 0, y: 2.1) //adds a dropshadow to the text
                        .font(.system(.title, design: .rounded)) //makes the font have rounded edges
                    Text(res.name ?? "NA")
                        .foregroundColor(Color.purple)
                        .fontWeight(.bold)//makes this text have a purple color
                }
                HStack {
                    Text("Status: ")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black) //changes the color of the text to black
                        .multilineTextAlignment(.center) //aligns the text to center
                        .shadow(color: .green, radius: 0.5, x: 0, y: 2) //adds a dropshadow to the text
                        .shadow(color: .blue, radius: 0.5, x: 0, y: 2.1) //adds a dropshadow to the text
                        .font(.system(.title, design: .rounded)) //rounds font
                    Text(res.status ?? "NA")
                        .foregroundColor(Color.purple)
                        .fontWeight(.bold)
                }
                HStack {
                    Text("Species: ")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black) //changes the color of the text to black
                        .multilineTextAlignment(.center) //aligns the text to center
                        .shadow(color: .green, radius: 0.5, x: 0, y: 2) //adds a dropshadow to the text
                        .shadow(color: .blue, radius: 0.5, x: 0, y: 2.1) //adds a dropshadow to the text
                        .font(.system(.title, design: .rounded)) //rounds font
                    Text(res.species ?? "NA")
                        .foregroundColor(Color.purple)
                        .fontWeight(.bold)
                }
                HStack {
                    Text("Gender: ")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black) //changes the color of the text to black
                        .multilineTextAlignment(.center) //aligns the text to center
                        .shadow(color: .green, radius: 0.5, x: 0, y: 2) //adds a dropshadow to the text
                        .shadow(color: .blue, radius: 0.5, x: 0, y: 2.1) //adds a dropshadow to the text
                        .font(.system(.title, design: .rounded)) //rounds font
                    Text(res.gender ?? "NA")
                        .foregroundColor(Color.purple)
                        .fontWeight(.bold)
                }
                HStack {
                    Text("Origin: ")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black) //changes the color of the text to black
                        .multilineTextAlignment(.center) //aligns the text to center
                        .shadow(color: .green, radius: 0.5, x: 0, y: 2) //adds a dropshadow to the text
                        .shadow(color: .blue, radius: 0.5, x: 0, y: 2.1) //adds a dropshadow to the text
                        .font(.system(.title, design: .rounded)) //rounds font
                    Text(res.origin.name ?? "NA")
                        .foregroundColor(Color.purple)
                        .fontWeight(.bold)
                }
            }
        }
        
    }
}


//struct CropDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        CropDetail(res: Binding.constant(Result()))
//    }
//}
