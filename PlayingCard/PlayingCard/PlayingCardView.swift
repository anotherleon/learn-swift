//
//  PlayingCardView.swift
//  PlayingCard
//
//  Created by 王亮 on 2020/1/22.
//  Copyright © 2020 王亮. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {
    
    override func draw(_ rect: CGRect) {
//        if let context = UIGraphicsGetCurrentContext(){
//            context.addArc(center: CGPoint(x: bounds.midX, y: bounds.midY), radius: 100.0, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
//            context.setLineWidth(5.0)
//            UIColor.blue.setFill()
//            UIColor.red.setStroke()
//            context.strokePath()
//            context.fillPath()
//        }
        
        let path = UIBezierPath()
        path.addArc(withCenter: CGPoint(x: bounds.midX, y: bounds.midY), radius: 100.0, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        path.lineWidth = 5.0
        UIColor.green.setFill()
        UIColor.red.setStroke()
        path.stroke()
        path.fill()
        
    }
    
}