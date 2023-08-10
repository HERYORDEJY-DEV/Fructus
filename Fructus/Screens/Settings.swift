//
//  Settings.swift
//  Fructus
//
//  Created by  OYEBODE YUSUF AYODEJI on 8/9/23.
//

import SwiftUI

struct AppSettingItemsModel {
	var key: String
	var value: String
	var isLink: Bool?
	var link: URL?
}

var AppSettingsItems: [AppSettingItemsModel] = [
	AppSettingItemsModel(key: "Developer", value: "John/Jane"),
	AppSettingItemsModel(key: "Dsigner", value: "Robert Petras"),
	AppSettingItemsModel(key: "Compatibility", value: "iOS 14"),
	AppSettingItemsModel(key: "Website", value: "SwiftUI Masterclass", isLink: true, link: URL(string: "www.google.com")),
	AppSettingItemsModel(key: "Twitter", value: "@RobertPetras", isLink: true, link: URL(string: "www.twitter.com")),
	AppSettingItemsModel(key: "SwiftUI", value: "2.0"),
	AppSettingItemsModel(key: "Version", value: "1.1.0"),
]

struct Settings: View {
	@State private var revealDetails = false
	@Environment(\.presentationMode) var presentationMode

	@AppStorage("isOnboarding") private var isOnboarding: Bool = true

	var appSettingsItems = AppSettingsItems

	var body: some View {
		NavigationView {
			ScrollView {
				VStack(alignment: .leading) {
					//                    ABOUT SECTION
					GroupBox {
						HStack {
							VStack {
								Image("logo")
									.renderingMode(.original)
									.resizable()
									.scaledToFit()
							}.frame(width: 100, height: 100)
								.cornerRadius(8)
							Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential utrients, including potassium, dietary fiber, vitamins, and much more").font(.custom("", size: 16, relativeTo: .footnote))
						}
					} label: {
						HStack {
							Text("FRUCTUS")
							Spacer()
							Image(systemName: "info.circle")
						}.fontWeight(.bold)
						Divider().padding(.vertical, 1)
					}.padding(.bottom, 30)

					//                    CUSTOMIZATION SECTION
					GroupBox {
						HStack {
							Text("If you wish, you can restart the application by toggling the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
								.multilineTextAlignment(.leading).font(.custom("", size: 16, relativeTo: .body)).layoutPriority(1)
						}.padding(.bottom)

						Toggle(isOn: $isOnboarding) {
							Text("RESTART")
						}.padding()
							.background(
								Color(UIColor.tertiarySystemGroupedBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
							)

					} label: {
						VStack {
							HStack {
								Text("CUSTOMIZATION")
								Spacer()
								Image(systemName: "paintbrush")
							}.fontWeight(.bold)
							Divider().padding(.vertical, 1)
						}
					}.padding(.bottom, 30)

					//                    APPLICATION SECTION
					GroupBox {
						ForEach(0 ..< appSettingsItems.count, id: \.self) { index in
							let key = appSettingsItems[index].key
							let value = appSettingsItems[index].value
							let isLink = appSettingsItems[index].isLink
							let link = appSettingsItems[index].link

							VStack {
								Divider().padding(.vertical, 1)
								HStack {
									Text(key)
										.multilineTextAlignment(.leading).font(.custom("", size: 16, relativeTo: .body)).foregroundColor(Color(hex: "#00000099"))
									Spacer()

									VStack {
										if isLink == true {
											Link(destination: link!) {
												HStack {
													Text(value)
														.multilineTextAlignment(.leading).font(.custom("", size: 16, relativeTo: .body))
													Image(systemName: "arrow.up.right.square").foregroundColor(Color(hex: " #006994 "))
												}
											}
										} else {
											Text(value)
												.multilineTextAlignment(.leading).font(.custom("", size: 16, relativeTo: .body))
										}
									}
								}
							}
						}
					} label: {
						VStack {
							HStack {
								Text("APPLICATION")
								Spacer()
								Image(systemName: "apps.iphone")
							}.fontWeight(.bold)
						}
					}.padding(.bottom, 30)

					//                    RESTART SECTION
					GroupBox {
						HStack {
							VStack {
								Image("logo")
									.renderingMode(.original)
									.resizable()
									.scaledToFit()
							}.frame(width: 100, height: 100)
								.cornerRadius(8)
							Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential utrients, including potassium, dietary fiber, vitamins, and much more").font(.custom("", size: 16, relativeTo: .body))
						}
					} label: {
						HStack {
							Text("RESTART").foregroundColor(Color(hex: "#999"))
							Spacer()
							Image(systemName: "power.circle")
						}.fontWeight(.bold)
						Divider().padding(.vertical, 1)
					}.padding(.bottom, 30)
				}

			}.padding().navigationTitle("Settings")
				.navigationBarItems(trailing: VStack {
					Image(systemName: "xmark")
				}.onTapGesture {
					presentationMode.wrappedValue.dismiss()
				}).scrollIndicators(.hidden)
		}
	}
}

struct Settings_Previews: PreviewProvider {
	static var previews: some View {
		Settings()
	}
}
