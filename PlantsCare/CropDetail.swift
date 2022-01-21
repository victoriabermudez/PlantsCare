//
//  CropDetail.swift
//  PlantsCare
//
//  Created by Michelle Kelly (student LM) on 1/11/22.
//

import SwiftUI

struct CropDetail: View {
    var person : Person

    var body: some View {
        VStack{
            //picture
            HStack {
                Text("Name: ")
                Text(person.name ?? "NA")
            }
            }
            
        }
    }


struct CropDetail_Previews: PreviewProvider {
    static var previews: some View {
        CropDetail(person: Person())
    }
}
