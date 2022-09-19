//
//  RetangleList.swift
//  SwiftUICollectionMagic
//
//  Created by Ricardo Venieris on 22/07/20.
//  Copyright © 2020 Ricardo Venieris. All rights reserved.
//

import SwiftUI

struct NavegableCollection: View {
	
	@State var matrix:[[String]]

	var body: some View {
		NavigationView{
			ScrollView() {
				VStack {
					ForEach(matrix, id: \.self) { line in
						HStack{
							ForEach(line, id: \.self) { column in
								NavigationLink(destination:
									PerfectRetagle(text: column))
								{
									PerfectRetagle(text: column)
								}

							}
						}.padding(.bottom)
						
					}
				}.navigationBarTitle("Meus Retangulin")
				.padding()
				
			}
		}.navigationViewStyle(StackNavigationViewStyle())
			
	}
	
}



struct RetangleList_Previews: PreviewProvider {
	static var matrix = [["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
                         ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
                         ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
                         ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]]
	static var previews: some View {
		NavegableCollection(matrix: Self.matrix)
	}
}
