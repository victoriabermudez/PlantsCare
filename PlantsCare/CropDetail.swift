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
            HStack {
                Text("Scientific name: ")
                Text(crop.scientific_name ?? "NA")
            }
            HStack {
                Text("Alternate name: ")
                Text(crop.alternate_names ?? "NA")
            }
            HStack {
                Text("Description: ")
                Text(crop.description ?? "NA")
            }
            HStack {
                Text("Plantings count: ")
                Text(crop.plantings_count ?? "NA")
            }
            HStack {
                Text("Harvest count: ")
                Text(crop.harvests_count ?? "NA")
            }
            
        }
    }
}

struct CropDetail_Previews: PreviewProvider {
    static var previews: some View {
        CropDetail(crop: Binding.constant(Crop()))
    }
}
