//
//  DAO.swift
//  SwiftUICollectionMagic
//
//  Created by Ricardo Venieris on 11/08/20.
//  Copyright © 2020 Ricardo Venieris. All rights reserved.
//

import Foundation



var exampleData:[[String]] { return
    [["1", "2", "3"],
     ["4", "5", "6", "7"],
     ["8", "9", "10", "11", "12"],
     ["13", "14", "15", "16", "17", "18"]]}

func calendarMatrix2Dic()->[[(String,Bool)]] {
    var result:[[(String,Bool)]] = []
    
    let calendar = Date().monthMatrix()
    
    for week in calendar {
        var line:[(String,Bool)] = []
        for item in week {
            line.append((item,false))
        }
        result.append(line)
    }
    return result
}
