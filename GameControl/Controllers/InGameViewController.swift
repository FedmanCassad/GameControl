//
//  ViewController.swift
//  GameControl
//
//  Created by Vladimir Banushkin on 16.11.2020.
//

import UIKit

class InGameViewController: UIViewController {

  let screenWidth = UIScreen.main.nativeBounds.size.height
  let screenHeight = UIScreen.main.nativeBounds.size.width
  
  var unit = UnitsCalc.gridSize
 
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    // Do any additional setup after loading the view.
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    let gridView = GridView(frame: view.frame)
    print("Нижний инсет \(view.safeAreaInsets.bottom)")
    view = gridView
    view.backgroundColor = .gray
    let button = LargeEliteButton()
    let gestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(moveLargeButton(_:)))
    gestureRecognizer.maximumNumberOfTouches = 1
    button.addGestureRecognizer(gestureRecognizer)
    button.isUserInteractionEnabled = true
    gestureRecognizer.isEnabled = true
    button.frame.origin = CGPoint(x: gridView.widthOffset, y: gridView.heightOffset )
    view.addSubview(button)
    
  }

}

