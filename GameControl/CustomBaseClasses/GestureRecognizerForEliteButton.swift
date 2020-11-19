//
//  GestureRecognizerForEliteButton.swift
//  GameControl
//
//  Created by Vladimir Banushkin on 18.11.2020.
//

import UIKit

class GestureRecognizerForEliteButton: UIGestureRecognizer {
  
  var button: SmallEliteButton
  
  init(target: Any?, action: Selector?, button: SmallEliteButton) {
    self.button = button
    super.init(target: target, action: action)
  }
  
}
