//
//  PerfectRetagle.swift
//  SwiftUICollectionMagic
//
//  Created by Ricardo Venieris on 22/07/20.
//  Copyright © 2020 Ricardo Venieris. All rights reserved.
//

import SwiftUI

struct PerfectRetagle: View {
	
	var text:String
	
    var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 20)
				.foregroundColor(.green)
			VStack {
				HStack {
					Text(text).font(.system(size: 40))
						.lineLimit(1).padding()
					Spacer()
				}
				Spacer()
			}.minimumScaleFactor(0.1)
		}.minimumScaleFactor(0.1)
			.aspectRatio(0.8, contentMode: .fit)
    }
}

struct PerfectRetagle_Previews: PreviewProvider {
    static var previews: some View {
		PerfectRetagle(text: "Olá Mundo")
    }
}
