//
//  UnitsCalc.swift
//  GameControl
//
//  Created by Vladimir Banushkin on 17.11.2020.
//

import UIKit

class UnitsCalc {
  
  static var gridSize: CGFloat {
    let screenWidth = UIScreen.main.nativeBounds.size.height
    let screenHeight = UIScreen.main.nativeBounds.size.width
    let columns: CGFloat = 58
    let rows: CGFloat = 43
    var gridSize: CGFloat = 25
    
    while round(screenWidth/columns) != gridSize && round(screenHeight/rows) != gridSize  {
      gridSize += 1
      print(gridSize)
    }
    
    return gridSize/UIScreen.main.scale
  }
  
}
