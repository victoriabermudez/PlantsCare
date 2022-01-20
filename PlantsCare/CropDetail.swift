//
//  CropDetail.swift
//  PlantsCare
//
//  Created by Michelle Kelly (student LM) on 1/11/22.
//

import SwiftUI

struct CropDetail: View {
    @Binding var crop : Crop

    var body: some View {
        VStack{
            //picture
            HStack {
                Text("Name: ")
                Text(crop.name ?? "NA")
            }
            }
            
        }
    }


struct CropDetail_Previews: PreviewProvider {
    static var previews: some View {
        CropDetail(crop: Binding.constant(Crop()))
    }
}
