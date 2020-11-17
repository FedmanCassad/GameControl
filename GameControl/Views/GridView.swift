//
//  IngameViewController+DrawGrid.swift
//  GameControl
//
//  Created by Vladimir Banushkin on 17.11.2020.
//

import UIKit

class GridView: UIView {
  
  let screenWidth = UIScreen.main.nativeBounds.size.height/UIScreen.main.scale
  let screenHeight = UIScreen.main.nativeBounds.size.width/UIScreen.main.scale
  let unit = UnitsCalc.gridSize
  var widthOffset: CGFloat
  var heightOffset: CGFloat
  
  override init(frame: CGRect) {
    widthOffset = (screenWidth - (58 * unit))/2
    heightOffset = (screenHeight - (43 * unit))/2
    super.init(frame: frame)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  override func draw(_ rect: CGRect) {
    
    //MARK: - Здесь получаем нужные нам данные о размере экрана.
    /* - screenWidth, screenHeight - берем из супер реальный данных разрешения из nativeBounds main UIScreen. И сразу делим на scale фактор,
     то есть приводим к размеру экрана в поинтах
     unit - рожается из статичного метода UnitsCalc класса. Статика, потому что он нам понадобиться может в любом месте программы, а так
     как глобальные переменные - это супер плохой тон, то сделал вот так. Оч удобно.
     Так как нам известны размер нашего юнита и известны размеры экрана количество строк и колонок -  мы можем вычислить остатки неиспользованного пространства и равномерно распределить их по бокам и снизу и сверху.
     Дальше банально рисуем грид. 
     */
   
print("Ширина \(screenWidth)")
    print("Высота \(screenHeight)")
    guard  let context = UIGraphicsGetCurrentContext() else {
      return
    }

    print("Ширина грида общая должна быть: \(unit*58)")
    context.setLineWidth(1)
    context.setStrokeColor(UIColor.lightGray.cgColor)
    print("widthOffset: \(widthOffset)")
    print("heightOffset:\(heightOffset)")
    for i in 0...58 {
      let k = CGFloat(i)
        context.move(to: CGPoint(x: widthOffset + (k * unit), y: heightOffset))
        context.addLine(to: CGPoint(x: widthOffset + (k * unit), y: heightOffset + (unit * 43)))
        context.strokePath()
    }
    for i in 0...43 {
      let k = CGFloat(i)
      context.move(to: CGPoint(x: widthOffset, y: heightOffset + (k * unit)))
      context.addLine(to: CGPoint(x: widthOffset + (unit * 58), y: heightOffset + (k * unit)))
      context.strokePath()
    }
  }
  
}
