//
//  GestureRecognizerForEliteButton.swift
//  GameControl
//
//  Created by Vladimir Banushkin on 18.11.2020.
//

import UIKit

class GestureRecognizerForEliteButton: UIGestureRecognizer {
  
  var button: LargeEliteButton
  
  init(target: Any?, action: Selector?, button: LargeEliteButton) {
    self.button = button
    super.init(target: target, action: action)
  }
  
}
