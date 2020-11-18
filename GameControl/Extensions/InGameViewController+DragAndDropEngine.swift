//
//  InGameViewController+DragAndDropEngine.swift
//  GameControl
//
//  Created by Vladimir Banushkin on 17.11.2020.
//

import UIKit
  
extension InGameViewController {

  @objc func moveLargeButton(_ sender: UIPanGestureRecognizer) {
    guard let view = sender.view,
          let gridView = self.view as? GridView else
    { return }
    view.center = sender.location(in: self.view)
    switch sender.state {
      case .ended:
        let xOriginPosition = view.frame.origin.x
        let yOriginPosition = view.frame.origin.y
        let nearestGridXPosition = (round((gridView.widthOffset + xOriginPosition) / unit)) * unit + gridView.widthOffset
        let nearestGridYPosition = (round((gridView.heightOffset + yOriginPosition)/unit)) * unit + gridView.heightOffset
        UIView.animate(withDuration: 0.2) {
          view.frame.origin = CGPoint(x: nearestGridXPosition, y: nearestGridYPosition)
        }
        print("nearest x position is: \(nearestGridXPosition)")
      @unknown default:
        return
    }
   
    
   
     
      
      
    
  }

}
