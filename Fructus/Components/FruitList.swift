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
	@State private var showSettings = false

	//    BODY
	var body: some View {
		NavigationView {
			List(fruitsData, rowContent: { fruit in
				NavigationLink(destination: FruitDetails(fruit: fruit)) {
					FruitListItem(item: fruit)

				}.listRowSeparator(.hidden)
					.menuIndicator(.hidden)

			}).padding(.all, 0)
				.navigationTitle("Fruits")
				.navigationBarItems(trailing:
					VStack {
						Image(systemName: "slider.horizontal.3")
					}.onTapGesture {
						showSettings = true
					}
				)

		}.navigationViewStyle(StackNavigationViewStyle())
			.background(Color.white).sheet(isPresented: $showSettings) {
				Settings()
			}
	}
}

struct FruitList_Previews: PreviewProvider {
	static var previews: some View {
		FruitList()
	}
}
