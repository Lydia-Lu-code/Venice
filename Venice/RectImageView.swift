//
//  RectImageView.swift
//  Venice
//
//  Created by 維衣 on 2020/4/5.
//  Copyright © 2020 Lydia-L. All rights reserved.
//

import UIKit

class RectImageView: UIImageView {

    override func layoutSubviews() {
       super.layoutSubviews()
       let path = UIBezierPath()
       path.move(to: CGPoint.zero)
       path.addLine(to: CGPoint(x: bounds.width, y: 0))
       path.addLine(to: CGPoint(x: bounds.width, y: bounds.height))
       path.addLine(to: CGPoint(x: 0, y: bounds.height * 0.8))
       path.close()
       let shapeLayer = CAShapeLayer()
       shapeLayer.path = path.cgPath
       layer.mask = shapeLayer
    }

}
