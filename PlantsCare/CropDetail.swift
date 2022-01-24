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
            Image("Background") //adds a background to the more detailed pages
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{ //start of VStack
                KFImage(/*URL(string: */res.image) //adds the image from the API of the character to their respective pages
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200) //establishes a width and height for the image
                HStack { //start of HStack
                    Text("Name: ") //adds text
                        .fontWeight(.semibold) //makes the font semibold
                        .foregroundColor(Color.black) //changes the color of the text to black
                        .multilineTextAlignment(.center) //aligns the text to center
                        .shadow(color: .green, radius: 0.5, x: 0, y: 2) //adds a dropshadow to the text
                        .shadow(color: .blue, radius: 0.5, x: 0, y: 2.1) //adds a dropshadow to the text
                        .font(.system(.title, design: .rounded)) //makes the font have rounded edges
                    Text(res.name ?? "NA") //gets the character's name from the API and displays the text
                        .foregroundColor(Color.purple) //makes the text purple
                        .fontWeight(.bold)//makes this text have a purple color
                }
                HStack {
                    Text("Status: ") //adds text
                        .fontWeight(.semibold) //makes the font semibold
                        .foregroundColor(Color.black) //changes the color of the text to black
                        .multilineTextAlignment(.center) //aligns the text to center
                        .shadow(color: .green, radius: 0.5, x: 0, y: 2) //adds a dropshadow to the text
                        .shadow(color: .blue, radius: 0.5, x: 0, y: 2.1) //adds a dropshadow to the text
                        .font(.system(.title, design: .rounded)) //rounds font
                    Text(res.status ?? "NA") //gets the character's status from the API and displays the text
                        .foregroundColor(Color.purple) //makes the text purple
                        .fontWeight(.bold)//makes this text have a purple color
                }
                HStack {
                    Text("Species: ") //adds text
                        .fontWeight(.semibold) //makes the font semibold
                        .foregroundColor(Color.black) //changes the color of the text to black
                        .multilineTextAlignment(.center) //aligns the text to center
                        .shadow(color: .green, radius: 0.5, x: 0, y: 2) //adds a dropshadow to the text
                        .shadow(color: .blue, radius: 0.5, x: 0, y: 2.1) //adds a dropshadow to the text
                        .font(.system(.title, design: .rounded)) //rounds font
                    Text(res.species ?? "NA") //gets the character's species from the API and displays the text
                        .foregroundColor(Color.purple) //makes the text purple
                        .fontWeight(.bold)//makes this text have a purple color
                }
                HStack {
                    Text("Gender: ") //adds text
                        .fontWeight(.semibold) //makes the font semibold
                        .foregroundColor(Color.black) //changes the color of the text to black
                        .multilineTextAlignment(.center) //aligns the text to center
                        .shadow(color: .green, radius: 0.5, x: 0, y: 2) //adds a dropshadow to the text
                        .shadow(color: .blue, radius: 0.5, x: 0, y: 2.1) //adds a dropshadow to the text
                        .font(.system(.title, design: .rounded)) //rounds font
                    Text(res.gender ?? "NA") //gets the character's gender from the API and displays the text
                        .foregroundColor(Color.purple) //makes the text purple
                        .fontWeight(.bold)//makes this text have a purple color
                }
                HStack {
                    Text("Origin: ") //adds text
                        .fontWeight(.semibold) //makes the font semibold
                        .foregroundColor(Color.black) //changes the color of the text to black
                        .multilineTextAlignment(.center) //aligns the text to center
                        .shadow(color: .green, radius: 0.5, x: 0, y: 2) //adds a dropshadow to the text
                        .shadow(color: .blue, radius: 0.5, x: 0, y: 2.1) //adds a dropshadow to the text
                        .font(.system(.title, design: .rounded)) //rounds font
                    Text(res.origin.name ?? "NA") //gets the character's origin from the API and displays the text
                        .foregroundColor(Color.purple) //makes the text purple
                        .fontWeight(.bold)//makes this text have a purple color
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
