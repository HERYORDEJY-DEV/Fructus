//
//  FruitList.swift
//  Fructus
//
//  Created by  OYEBODE YUSUF AYODEJI on 8/9/23.
//

import SwiftUI

struct FruitList: View {
//    PROPPERTIES
    // var fruits: [FruitModel] = fruitsData

//    BODY
    var body: some View {
        NavigationView {
            List(fruitsData, rowContent: { fruit in
                NavigationLink(destination: FruitDetails(fruit: fruit)) {
                    FruitListItem(item: fruit)
                       
                } .listRowSeparator(.hidden)
                    .menuIndicator( .hidden)
                

            }).padding(.all, 0).navigationTitle("Fruits")
        }.background(Color.white)
    }
}

struct FruitList_Previews: PreviewProvider {
    static var previews: some View {
        FruitList()
    }
}
