//
//  RetagleListDancing.swift
//  SwiftUICollectionMagic
//
//  Created by Ricardo Venieris on 23/07/20.
//  Copyright © 2020 Ricardo Venieris. All rights reserved.
//

import SwiftUI

struct RemovableAnimatedCollection: View {	
	
	@State var matrix:[[String]]
	@State private var initialMatrix:[[String]]?

	var body: some View {
		NavigationView{
			ScrollView {
				VStack {
					ForEach(matrix, id: \.self) { line in
						HStack{
							ForEach(line, id: \.self) { column in
								PerfectRetagle(text: column)
									.onTapGesture { self.removeFromMatrix(line, column) }
								
							}
						}
					}
				}.navigationBarTitle("Meus Retangulin")
					.padding()
			}.animation(.default)
		}.navigationViewStyle(StackNavigationViewStyle())
	}
	
	
	func removeFromMatrix(_ line: [String], _ column:String) {
		initialMatrix = initialMatrix ?? matrix
		guard let lin = matrix.firstIndex(of: line) else { return }
		guard let col = matrix[lin].firstIndex(of: column) else { return }
		matrix[lin].remove(at: col)
		if matrix[lin].isEmpty {
			matrix.remove(at: lin)
		}
		if matrix.isEmpty {
			matrix = initialMatrix ?? [["Fim dos Quadradin"]]
		}
		
	}
	
}

struct RetagleListDancing_Previews: PreviewProvider {
	static var matrix = [["1", "2"],
						 [ "3", "4", "5"],
						 ["6"],
						 ["7", "8"]]
	static var previews: some View {
		RemovableAnimatedCollection(matrix: Self.matrix)
	}

}
