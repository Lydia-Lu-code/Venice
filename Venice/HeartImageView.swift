//
//  HeartImageView.swift
//  Venice
//
//  Created by 維衣 on 2020/4/5.
//  Copyright © 2020 Lydia-L. All rights reserved.
//

import UIKit

class HeartImageView: UIImageView {

    override func layoutSubviews() {
       super.layoutSubviews()
        
        
       let path = UIBezierPath()
       path.move(to: CGPoint(x: 58, y: 51))
       path.addQuadCurve(to: CGPoint(x: 165, y: 80), controlPoint: CGPoint(x:110, y: 10))
       path.addQuadCurve(to: CGPoint(x: 272, y: 11), controlPoint: CGPoint(x:210, y: 10))
       path.addQuadCurve(to: CGPoint(x: 300, y: 197), controlPoint: CGPoint(x:410, y: 30))
       path.addQuadCurve(to: CGPoint(x: 187, y: 284), controlPoint: CGPoint(x:250, y: 262))
       path.addQuadCurve(to: CGPoint(x: 100, y: 227), controlPoint: CGPoint(x:130, y: 260))
       path.addQuadCurve(to: CGPoint(x: 58, y: 51), controlPoint: CGPoint(x:0, y: 120))
       path.close()
       let HeartImageViewLayer = CAShapeLayer()
       HeartImageViewLayer.path = path.cgPath
       layer.mask = HeartImageViewLayer
    }
}
