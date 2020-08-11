//
//  ContentView.swift
//  SwiftUICollectionMagic
//
//  Created by Ricardo Venieris on 24/07/20.
//  Copyright © 2020 Ricardo Venieris. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	
	var body: some View {
		TabView {
			RemovableAnimatedCollection(matrix: exampleData)
				.tabItem {
					Image(systemName: "1.square.fill")
					Text("Editting")
			}
			NavegableCollection(matrix: exampleData)
				.tabItem {
					Image(systemName: "2.square.fill")
					Text("Navigating")
			}
		}
		.font(.headline)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
