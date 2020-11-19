//
//  LargeEliteButton.swift
//  GameControl
//
//  Created by Vladimir Banushkin on 17.11.2020.
//

import UIKit

class SmallEliteButton: UIControl {
  var unit: CGFloat = UnitsCalc.gridSize
  let view: UIView!
  
  init(<#parameters#>) {
    <#statements#>
  }
  override init(frame: CGRect) {
    self.view = UIView(frame: frame)
    super.init(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: unit * 3, height: unit * 3)))
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func draw(_ rect: CGRect) {
    guard let context = UIGraphicsGetCurrentContext() else { return }
    context.setLineWidth(4)
    context.setStrokeColor(UIColor.orange.cgColor)
    context.move(to: bounds.origin)
    context.addLine(to: CGPoint(x: frame.width, y: 0))
    context.addLine(to: CGPoint(x: frame.width, y: frame.height))
    context.addLine(to: CGPoint(x: 0, y: frame.height))
    context.addLine(to: CGPoint(x: 0, y: 0))
    context.strokePath()
  }
  
}

