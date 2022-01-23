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
        VStack{
            KFImage(/*URL(string: */res.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            HStack {
                Text("Name: ")
                Text(res.name ?? "NA")
            }
            HStack {
                Text("Status: ")
                Text(res.status ?? "NA")
            }
            HStack {
                Text("Species: ")
                Text(res.species ?? "NA")
            }
            HStack {
                Text("Gender: ")
                Text(res.gender ?? "NA")
            }
            HStack {
                Text("Origin: ")
                Text(res.origin.name ?? "NA")
            }
            }
            
        }
    }


//struct CropDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        CropDetail(res: Binding.constant(Result()))
//    }
//}
