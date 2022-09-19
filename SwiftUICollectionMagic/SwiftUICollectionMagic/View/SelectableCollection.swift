//
//  SelectableCollection.swift
//  SwiftUICollectionMagic
//
//  Created by Ricardo Venieris on 18/09/22.
//  Copyright © 2022 Ricardo Venieris. All rights reserved.
//

import SwiftUI

struct SelectableCollection: View {

    @State var matrix:[[(String,Bool)]]
    
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {
                    ForEach(Array(matrix.enumerated()), id: \.offset) { line, colContent in
                        HStack{
                            ForEach(Array(colContent.enumerated()), id: \.offset) { col, item in
                                let color:Color = item.1 ? .red : .gray
                                PerfectRetagle(color: color, cornerRadius: 0, text: "\(item.0)")
                                    .padding(-3)
                                    .onTapGesture {
                                        itemTapped(line, col)
                                    }
                                
                            }
                        }
                    }
                }.navigationBarTitle("Meus Retangulin")
                
            }.animation(.default)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
    
    func itemTapped(_ line:Int, _ col:Int) {
        guard let _ = Int(matrix[line][col].0) else {return}
        matrix[line][col].1.toggle()
    }
}

struct SelectableCollection_Previews: PreviewProvider {
    static var matrix = calendarMatrix2Dic()

    static var previews: some View {
        SelectableCollection(matrix: Self.matrix)
    }
}




