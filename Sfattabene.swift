//
//  Sfattabene.swift
//  lch
//
//  Created by Luigi Scherillo on 19/02/18.
//


import UIKit

public class Sfattabene : NSObject{

    //// Drawing Methods
    
    
    static var bezierPath : UIBezierPath! =  UIBezierPath()
    
    public class func points ()
    {
        let coordinates : CGPoint
    }
    @objc dynamic public class func drawS(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 1024, height: 768), resizing: ResizingBehavior = .aspectFill) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 1024, height: 768), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 1024, y: resizedFrame.height / 768)


        //// Color Declarations
        let fillColor = UIColor(red: 0.791, green: 0.576, blue: 0.402, alpha: 1.000)
        let strokeColor = UIColor(red: 0.546, green: 0.336, blue: 0.159, alpha: 1.000)
        let fillColor2 = UIColor(red: 0.609, green: 0.455, blue: 0.317, alpha: 1.000)

        //// Group 2
        
        //// Bezier Drawing
//        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 870.41, y: 768))
        bezierPath.addLine(to: CGPoint(x: 706.33, y: 768))
        bezierPath.addCurve(to: CGPoint(x: 806.74, y: 423.61), controlPoint1: CGPoint(x: 767.92, y: 583.34), controlPoint2: CGPoint(x: 801.39, y: 468.55))
        bezierPath.addCurve(to: CGPoint(x: 789.44, y: 252.11), controlPoint1: CGPoint(x: 814.76, y: 356.22), controlPoint2: CGPoint(x: 812.1, y: 293.8))
        bezierPath.addCurve(to: CGPoint(x: 673.12, y: 218.28), controlPoint1: CGPoint(x: 766.78, y: 210.42), controlPoint2: CGPoint(x: 717, y: 185.54))
        bezierPath.addCurve(to: CGPoint(x: 584.99, y: 371.8), controlPoint1: CGPoint(x: 643.86, y: 240.11), controlPoint2: CGPoint(x: 614.48, y: 291.28))
        bezierPath.addCurve(to: CGPoint(x: 494.01, y: 569.27), controlPoint1: CGPoint(x: 537.57, y: 485.2), controlPoint2: CGPoint(x: 507.25, y: 551.02))
        bezierPath.addCurve(to: CGPoint(x: 356.33, y: 667), controlPoint1: CGPoint(x: 474.16, y: 596.65), controlPoint2: CGPoint(x: 434.94, y: 667))
        bezierPath.addCurve(to: CGPoint(x: 194.99, y: 569.27), controlPoint1: CGPoint(x: 277.71, y: 667), controlPoint2: CGPoint(x: 236.18, y: 633.78))
        bezierPath.addCurve(to: CGPoint(x: 141.37, y: 272.75), controlPoint1: CGPoint(x: 153.8, y: 504.76), controlPoint2: CGPoint(x: 134.47, y: 376.4))
        bezierPath.addCurve(to: CGPoint(x: 181.41, y: 0), controlPoint1: CGPoint(x: 145.97, y: 203.65), controlPoint2: CGPoint(x: 159.32, y: 112.73))
        bezierPath.addLine(to: CGPoint(x: 330.64, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 244.33, y: 272.75), controlPoint1: CGPoint(x: 278.17, y: 154.53), controlPoint2: CGPoint(x: 249.39, y: 245.45))
        bezierPath.addCurve(to: CGPoint(x: 272.12, y: 486.32), controlPoint1: CGPoint(x: 229.27, y: 353.92), controlPoint2: CGPoint(x: 230.14, y: 431.64))
        bezierPath.addCurve(to: CGPoint(x: 416.33, y: 486.32), controlPoint1: CGPoint(x: 301.31, y: 524.35), controlPoint2: CGPoint(x: 355.23, y: 555.77))
        bezierPath.addCurve(to: CGPoint(x: 514.32, y: 255.47), controlPoint1: CGPoint(x: 451.3, y: 446.58), controlPoint2: CGPoint(x: 497.42, y: 299.44))
        bezierPath.addCurve(to: CGPoint(x: 699.36, y: 68.45), controlPoint1: CGPoint(x: 531.22, y: 211.5), controlPoint2: CGPoint(x: 595.3, y: 68.45))
        bezierPath.addCurve(to: CGPoint(x: 853.6, y: 179.85), controlPoint1: CGPoint(x: 803.42, y: 68.45), controlPoint2: CGPoint(x: 846.07, y: 162.62))
        bezierPath.addCurve(to: CGPoint(x: 888.57, y: 307.93), controlPoint1: CGPoint(x: 857.21, y: 188.09), controlPoint2: CGPoint(x: 883.11, y: 244.05))
        bezierPath.addCurve(to: CGPoint(x: 888.57, y: 423.61), controlPoint1: CGPoint(x: 894.03, y: 371.8), controlPoint2: CGPoint(x: 888.57, y: 410.82))
        bezierPath.addCurve(to: CGPoint(x: 870.41, y: 768), controlPoint1: CGPoint(x: 888.57, y: 439.98), controlPoint2: CGPoint(x: 882.52, y: 554.78))
        bezierPath.close()
        bezierPath.usesEvenOddFillRule = true
        fillColor2.setFill()
        bezierPath.fill()
    
return


        //// Group 3
//        context.saveGState()
//        context.beginTransparencyLayer(auxiliaryInfo: nil)
//
//        //// Clip Clip
//        let clipPath = UIBezierPath(rect: CGRect(x: 0.08, y: -0.03, width: 1023.95, height: 767.95))
//        clipPath.addClip()
//
//
//        //// Bezier 2 Drawing
//        let bezier2Path = UIBezierPath()
//        bezier2Path.move(to: CGPoint(x: 972, y: 768))
//        bezier2Path.addLine(to: CGPoint(x: 829.62, y: 768))
//        bezier2Path.addCurve(to: CGPoint(x: 909.11, y: 458.02), controlPoint1: CGPoint(x: 875.32, y: 618.57), controlPoint2: CGPoint(x: 901.82, y: 515.24))
//        bezier2Path.addCurve(to: CGPoint(x: 885.52, y: 239.58), controlPoint1: CGPoint(x: 920.05, y: 372.18), controlPoint2: CGPoint(x: 916.42, y: 292.68))
//        bezier2Path.addCurve(to: CGPoint(x: 726.91, y: 196.5), controlPoint1: CGPoint(x: 854.62, y: 186.48), controlPoint2: CGPoint(x: 786.75, y: 154.8))
//        bezier2Path.addCurve(to: CGPoint(x: 606.75, y: 392.03), controlPoint1: CGPoint(x: 687.02, y: 224.29), controlPoint2: CGPoint(x: 646.97, y: 289.47))
//        bezier2Path.addCurve(to: CGPoint(x: 482.7, y: 643.53), controlPoint1: CGPoint(x: 542.1, y: 536.45), controlPoint2: CGPoint(x: 500.75, y: 620.28))
//        bezier2Path.addCurve(to: CGPoint(x: 294.97, y: 768), controlPoint1: CGPoint(x: 455.63, y: 678.4), controlPoint2: CGPoint(x: 402.15, y: 768))
//        bezier2Path.addCurve(to: CGPoint(x: 74.98, y: 643.53), controlPoint1: CGPoint(x: 187.78, y: 768), controlPoint2: CGPoint(x: 131.14, y: 725.69))
//        bezier2Path.addCurve(to: CGPoint(x: 1.87, y: 265.87), controlPoint1: CGPoint(x: 18.82, y: 561.37), controlPoint2: CGPoint(x: -7.54, y: 397.89))
//        bezier2Path.addCurve(to: CGPoint(x: 45.27, y: 0), controlPoint1: CGPoint(x: 8.14, y: 177.86), controlPoint2: CGPoint(x: 22.61, y: 89.24))
//        bezier2Path.addLine(to: CGPoint(x: 180.15, y: 0))
//        bezier2Path.addCurve(to: CGPoint(x: 126.32, y: 265.87), controlPoint1: CGPoint(x: 146.97, y: 141.95), controlPoint2: CGPoint(x: 129.02, y: 230.58))
//        bezier2Path.addCurve(to: CGPoint(x: 180.15, y: 537.89), controlPoint1: CGPoint(x: 119.74, y: 351.73), controlPoint2: CGPoint(x: 122.91, y: 468.24))
//        bezier2Path.addCurve(to: CGPoint(x: 376.78, y: 537.89), controlPoint1: CGPoint(x: 219.96, y: 586.31), controlPoint2: CGPoint(x: 293.47, y: 626.34))
//        bezier2Path.addCurve(to: CGPoint(x: 510.39, y: 243.86), controlPoint1: CGPoint(x: 424.46, y: 487.26), controlPoint2: CGPoint(x: 487.35, y: 299.86))
//        bezier2Path.addCurve(to: CGPoint(x: 762.7, y: 5.66), controlPoint1: CGPoint(x: 533.44, y: 187.86), controlPoint2: CGPoint(x: 620.81, y: 5.66))
//        bezier2Path.addCurve(to: CGPoint(x: 973.01, y: 147.55), controlPoint1: CGPoint(x: 904.59, y: 5.66), controlPoint2: CGPoint(x: 962.73, y: 125.61))
//        bezier2Path.addCurve(to: CGPoint(x: 1020.69, y: 310.67), controlPoint1: CGPoint(x: 977.93, y: 158.05), controlPoint2: CGPoint(x: 1013.25, y: 229.32))
//        bezier2Path.addCurve(to: CGPoint(x: 1020.69, y: 458.02), controlPoint1: CGPoint(x: 1028.14, y: 392.03), controlPoint2: CGPoint(x: 1020.69, y: 441.72))
//        bezier2Path.addCurve(to: CGPoint(x: 972, y: 768), controlPoint1: CGPoint(x: 1020.69, y: 478.87), controlPoint2: CGPoint(x: 1004.46, y: 582.19))
//        bezier2Path.close()
//        strokeColor.setStroke()
//        bezier2Path.lineWidth = 5
//        bezier2Path.stroke()
//
//
//        context.endTransparencyLayer()
//        context.restoreGState()
//
//        context.restoreGState()
//
    }
    

    @objc(SfattabeneResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
