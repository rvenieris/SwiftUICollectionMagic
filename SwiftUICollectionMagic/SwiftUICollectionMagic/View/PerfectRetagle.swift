//
//  PerfectRetagle.swift
//  SwiftUICollectionMagic
//
//  Created by Ricardo Venieris on 22/07/20.
//  Copyright © 2020 Ricardo Venieris. All rights reserved.
//

import SwiftUI

struct PerfectRetagle: View {
    var color:Color = .green
    var cornerRadius:Double = 10
    var aspectRatio:Double = 1
	var text:String = "Place your text here"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(color)
            Text(text)
                .lineLimit(1)
        }.minimumScaleFactor(0.1)
            .aspectRatio(aspectRatio, contentMode: .fit)
    }
}

struct PerfectRetagle_Previews: PreviewProvider {
    static var previews: some View {
        PerfectRetagle()
    }
}
