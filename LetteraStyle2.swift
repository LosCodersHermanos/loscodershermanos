////
////  LetteraStyle.swift
////  losCodersHermanos
////
////  Created by Luigi Scherillo on 19/02/18.
////  Copyright © 2018 losCodersHermanos. All rights reserved.
////
////
//
//
//
//import UIKit
//
//public class LetteraStyle2 : NSObject {
//    let panGesture = UIPanGestureRecognizer()
//    
//    
//    //// Drawing Methods
//    
//    @objc dynamic public class func drawCanvas1(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 240, height: 149), resizing: ResizingBehavior = .aspectFit) {
//        //// General Declarations
//        let context = UIGraphicsGetCurrentContext()!
//        
//        //// Resize to Target Frame
//        context.saveGState()
//        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 240, height: 149), target: targetFrame)
//        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
//        context.scaleBy(x: resizedFrame.width / 240, y: resizedFrame.height / 149)
//        
//        
//        //// Symbol Drawing
//        context.saveGState()
//        context.translateBy(x: 72, y: 149)
//        
//        let symbolRect = CGRect(x: 0, y: -150, width: 103, height: 150)
//        context.saveGState()
//        context.clip(to: symbolRect)
//        context.translateBy(x: symbolRect.minX, y: symbolRect.minY)
//        
//        LetteraStyle2.drawLetteraS(frame: CGRect(origin: .zero, size: symbolRect.size), resizing: .stretch)
//        context.restoreGState()
//        
//        context.restoreGState()
//        
//        context.restoreGState()
//        
//    }
//    
//    @objc dynamic public class func drawLetteraS(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 103, height: 150), resizing: ResizingBehavior = .aspectFill) {
//        //// General Declarations
//        let context = UIGraphicsGetCurrentContext()!
//        
//        //// Resize to Target Frame
//        context.saveGState()
//        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 103, height: 150), target: targetFrame)
//        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
//        context.scaleBy(x: resizedFrame.width / 103, y: resizedFrame.height / 150)
//        
//        
//        //// Color Declarations
//        let fillColor = UIColor(red: 0.012, green: 0.897, blue: 0.166, alpha: 1.000)
//        
//        //// Bezier Drawing
//        let bezierPath = UIBezierPath()
//        
//        let SPoints: [CGPoint] = [CGPoint(x: 39.99, y: 149.64),
//        CGPoint(x: 39.88, y: 149.65),
//        CGPoint(x: 38.81, y: 149.91),
//        CGPoint(x: 37.84, y: 149.62),
//        CGPoint(x: 37, y: 149.58),
//        CGPoint(x: 36.22, y: 149.24),
//        CGPoint(x: 36.03, y: 149.33),
//        CGPoint(x: 34.04, y: 149.87),
//        CGPoint(x: 33.05, y: 148.98),
//        CGPoint(x: 32.73, y: 148.95),
//        CGPoint(x: 32.25, y: 148.76),
//        CGPoint(x: 31.82, y: 148.8),
//        CGPoint(x: 30.44, y: 148.71),
//        CGPoint(x: 29.53, y: 148.14),
//        CGPoint(x: 29.47, y: 148.12),
//        CGPoint(x: 29.18, y: 148.15),
//        CGPoint(x: 28.24, y: 148.19),
//        CGPoint(x: 27.39, y: 148.13),
//        CGPoint(x: 26.62, y: 148.05),
//        CGPoint(x: 25.71, y: 147.99),
//        CGPoint(x: 24.87, y: 147.72),
//        CGPoint(x: 23.66, y: 147.43),
//        CGPoint(x: 23.47, y: 147.23),
//        CGPoint(x: 23.33, y: 147.26),
//        CGPoint(x: 20.89, y: 146.7),
//        CGPoint(x: 20.49, y: 146.28),
//        CGPoint(x: 20.16, y: 146.27),
//        CGPoint(x: 19.24, y: 145.89),
//        CGPoint(x: 18.64, y: 145.7),
//        CGPoint(x: 17.68, y: 145.38),
//        CGPoint(x: 16.52, y: 144.66),
//        CGPoint(x: 15.87, y: 143.74),
//        CGPoint(x: 15.78, y: 143.63),
//        CGPoint(x: 14.24, y: 143.72),
//        CGPoint(x: 13.71, y: 142.61),
//        CGPoint(x: 12.54, y: 142.38),
//        CGPoint(x: 12.04, y: 141.81),
//        CGPoint(x: 10.73, y: 141.53),
//        CGPoint(x: 10.54, y: 140.82),
//        CGPoint(x: 9.94, y: 140.76),
//        CGPoint(x: 9.42, y: 139.72),
//        CGPoint(x: 8.71, y: 139.41),
//        CGPoint(x: 8.02, y: 137.97),
//        CGPoint(x: 7.92, y: 137.7),
//        CGPoint(x: 6.55, y: 136.9),
//        CGPoint(x: 6.52, y: 136.71),
//        CGPoint(x: 4.94, y: 136.58),
//        CGPoint(x: 5.12, y: 135.01),
//        CGPoint(x: 4.87, y: 134.89),
//        CGPoint(x: 4.35, y: 133.25),
//        CGPoint(x: 4.3, y: 133.02),
//        CGPoint(x: 4.08, y: 132.81),
//        CGPoint(x: 3.28, y: 131.74),
//        CGPoint(x: 3.07, y: 130.76),
//        CGPoint(x: 2.92, y: 130.4),
//        CGPoint(x: 2.71, y: 130.03),
//        CGPoint(x: 1.86, y: 128.99),
//        CGPoint(x: 1.88, y: 127.99),
//        CGPoint(x: 1.66, y: 127.55),
//        CGPoint(x: 1.41, y: 126.32),
//        CGPoint(x: 1.44, y: 125.91),
//        CGPoint(x: 1.13, y: 125.38),
//        CGPoint(x: 1.08, y: 124.58),
//        CGPoint(x: 0.96, y: 124.34),
//        CGPoint(x: 0.44, y: 123.47),
//        CGPoint(x: 0.2, y: 122.35),
//        CGPoint(x: 0, y: 120.68),
//        CGPoint(x: 0.72, y: 119.81),
//        CGPoint(x: 0.72, y: 119.78),
//        CGPoint(x: 0.28, y: 119.25),
//        CGPoint(x: 0.03, y: 117.8),
//        CGPoint(x: 0.11, y: 116.18),
//        CGPoint(x: 0.32, y: 115.92),
//        CGPoint(x: 0.01, y: 114.52),
//        CGPoint(x: 0.55, y: 113.36),
//        CGPoint(x: 0.59, y: 113.22),
//        CGPoint(x: 0.47, y: 112.39),
//        CGPoint(x: 0.62, y: 111.96),
//        CGPoint(x: 0.1, y: 110.71),
//        CGPoint(x: 0.67, y: 110.07),
//        CGPoint(x: 0.33, y: 109.23),
//        CGPoint(x: 1.37, y: 108.09),
//        CGPoint(x: 0.87, y: 106.64),
//        CGPoint(x: 2.06, y: 105.93),
//        CGPoint(x: 1.85, y: 104.5),
//        CGPoint(x: 2.6, y: 103.98),
//        CGPoint(x: 2.5, y: 103.19),
//        CGPoint(x: 3.64, y: 102.34),
//        CGPoint(x: 3.74, y: 101.55),
//        CGPoint(x: 4.63, y: 99.84),
//        CGPoint(x: 4.76, y: 99.8),
//        CGPoint(x: 4.73, y: 99.45),
//        CGPoint(x: 6.32, y: 98.07),
//        CGPoint(x: 7.14, y: 97.72),
//        CGPoint(x: 7.5, y: 96.69),
//        CGPoint(x: 8.24, y: 95.54),
//        CGPoint(x: 9.34, y: 94.76),
//        CGPoint(x: 9.9, y: 94.52),
//        CGPoint(x: 10.61, y: 93.08),
//        CGPoint(x: 11.7, y: 93),
//        CGPoint(x: 12.78, y: 91.93),
//        CGPoint(x: 13.48, y: 91.8),
//        CGPoint(x: 13.86, y: 91.37),
//        CGPoint(x: 15.37, y: 90.8),
//        CGPoint(x: 16.02, y: 90.82),
//        CGPoint(x: 16.38, y: 90.61),
//        CGPoint(x: 16.55, y: 90.56),
//        CGPoint(x: 16.98, y: 89.83),
//        CGPoint(x: 18.8, y: 89.24),
//        CGPoint(x: 19.22, y: 89.28),
//        CGPoint(x: 19.81, y: 88.82),
//        CGPoint(x: 20.26, y: 88.87),
//        CGPoint(x: 21.19, y: 87.61),
//        CGPoint(x: 21.81, y: 87.96),
//        CGPoint(x: 21.91, y: 87.77),
//        CGPoint(x: 24, y: 87.74),
//        CGPoint(x: 24.45, y: 87.8),
//        CGPoint(x: 24.55, y: 87.77),
//        CGPoint(x: 25.5, y: 87.28),
//        CGPoint(x: 27.09, y: 87.22),
//        CGPoint(x: 27.88, y: 87.52),
//        CGPoint(x: 29.11, y: 87.02),
//        CGPoint(x: 29.39, y: 87.18),
//        CGPoint(x: 30.37, y: 86.22),
//        CGPoint(x: 31.38, y: 87.16),
//        CGPoint(x: 32.89, y: 87.17),
//        CGPoint(x: 33.37, y: 87.32),
//        CGPoint(x: 34.85, y: 86.98),
//        CGPoint(x: 35.1, y: 87.32),
//        CGPoint(x: 35.17, y: 87.27),
//        CGPoint(x: 37, y: 87.9),
//        CGPoint(x: 37.27, y: 88.05),
//        CGPoint(x: 38.69, y: 87.92),
//        CGPoint(x: 38.99, y: 88.45),
//        CGPoint(x: 40.23, y: 88.94),
//        CGPoint(x: 41.03, y: 89.15),
//        CGPoint(x: 42.41, y: 89.83),
//        CGPoint(x: 42.99, y: 90.8),
//        CGPoint(x: 44.04, y: 91.81),
//        CGPoint(x: 44.84, y: 91.89),
//        CGPoint(x: 46.08, y: 93.62),
//        CGPoint(x: 46.17, y: 94.22),
//        CGPoint(x: 46.91, y: 94.95),
//        CGPoint(x: 46.86, y: 95.53),
//        CGPoint(x: 46.95, y: 95.59),
//        CGPoint(x: 47.63, y: 96.74),
//        CGPoint(x: 48.14, y: 97.93),
//        CGPoint(x: 48.08, y: 101.11),
//        CGPoint(x: 45.31, y: 101.37),
//        CGPoint(x: 44.94, y: 101.37),
//        CGPoint(x: 44.02, y: 101.81),
//        CGPoint(x: 42.67, y: 101.51),
//        CGPoint(x: 42.6, y: 101.5),
//        CGPoint(x: 42.54, y: 101.53),
//        CGPoint(x: 41.47, y: 102.18),
//        CGPoint(x: 40.27, y: 102.16),
//        CGPoint(x: 39.77, y: 102.21),
//        CGPoint(x: 39.02, y: 102.38),
//        CGPoint(x: 38.13, y: 102.43),
//        CGPoint(x: 37.45, y: 102.49),
//        CGPoint(x: 37.07, y: 102.53),
//        CGPoint(x: 36.86, y: 102.62),
//        CGPoint(x: 36.17, y: 103.11),
//        CGPoint(x: 35.52, y: 103.34),
//        CGPoint(x: 34.78, y: 103.92),
//        CGPoint(x: 34.36, y: 103.98),
//        CGPoint(x: 33.9, y: 104.62),
//        CGPoint(x: 32.76, y: 104.81),
//        CGPoint(x: 32.06, y: 105.3),
//        CGPoint(x: 31.92, y: 105.3),
//        CGPoint(x: 31.81, y: 105.59),
//        CGPoint(x: 31.3, y: 105.85),
//        CGPoint(x: 31, y: 107.15),
//        CGPoint(x: 29.84, y: 107.31),
//        CGPoint(x: 29.29, y: 108.3),
//        CGPoint(x: 28.73, y: 108.59),
//        CGPoint(x: 28.35, y: 110.12),
//        CGPoint(x: 27.45, y: 110.44),
//        CGPoint(x: 27.09, y: 111.52),
//        CGPoint(x: 26.53, y: 111.97),
//        CGPoint(x: 26.55, y: 112.06),
//        CGPoint(x: 26.64, y: 113.51),
//        CGPoint(x: 26.05, y: 114.65),
//        CGPoint(x: 25.79, y: 115.16),
//        CGPoint(x: 25.7, y: 115.48),
//        CGPoint(x: 25.63, y: 116.18),
//        CGPoint(x: 25.51, y: 116.65),
//        CGPoint(x: 25.56, y: 116.99),
//        CGPoint(x: 25.71, y: 117.83),
//        CGPoint(x: 25.74, y: 119.17),
//        CGPoint(x: 26.68, y: 120.05),
//        CGPoint(x: 25.5, y: 121.4),
//        CGPoint(x: 25.53, y: 122.24),
//        CGPoint(x: 26.62, y: 123.11),
//        CGPoint(x: 25.94, y: 124.79),
//        CGPoint(x: 27, y: 125.54),
//        CGPoint(x: 26.83, y: 127.07),
//        CGPoint(x: 26.98, y: 127.54),
//        CGPoint(x: 27.16, y: 127.64),
//        CGPoint(x: 28.29, y: 129.22),
//        CGPoint(x: 28.23, y: 129.75),
//        CGPoint(x: 29.02, y: 130.2),
//        CGPoint(x: 29.31, y: 131.08),
//        CGPoint(x: 30.9, y: 131.31),
//        CGPoint(x: 30.9, y: 132.44),
//        CGPoint(x: 31.04, y: 132.47),
//        CGPoint(x: 31.28, y: 132.92),
//        CGPoint(x: 31.78, y: 132.91),
//        CGPoint(x: 32.91, y: 133.97),
//        CGPoint(x: 32.99, y: 134.05),
//        CGPoint(x: 33.93, y: 134.17),
//        CGPoint(x: 34.61, y: 135.09),
//        CGPoint(x: 34.63, y: 135.1),
//        CGPoint(x: 35.47, y: 135.31),
//        CGPoint(x: 35.75, y: 135.48),
//        CGPoint(x: 36.71, y: 135.33),
//        CGPoint(x: 37.52, y: 136.01),
//        CGPoint(x: 38.11, y: 135.69),
//        CGPoint(x: 39.79, y: 136.42),
//        CGPoint(x: 40.31, y: 136.73),
//        CGPoint(x: 40.74, y: 136.83),
//        CGPoint(x: 41.83, y: 136.34),
//        CGPoint(x: 42.08, y: 136.47),
//        CGPoint(x: 42.32, y: 136.23),
//        CGPoint(x: 44.64, y: 136.2),
//        CGPoint(x: 44.92, y: 136.44),
//        CGPoint(x: 45.77, y: 136.43),
//        CGPoint(x: 46.2, y: 136.3),
//        CGPoint(x: 47.13, y: 135.97),
//        CGPoint(x: 48.06, y: 135.97),
//        CGPoint(x: 48.7, y: 135.87),
//        CGPoint(x: 48.89, y: 135.63),
//        CGPoint(x: 49.91, y: 134.97),
//        CGPoint(x: 50.91, y: 134.55),
//        CGPoint(x: 51.7, y: 134.38),
//        CGPoint(x: 51.95, y: 134.3),
//        CGPoint(x: 52.25, y: 134.06),
//        CGPoint(x: 52.54, y: 133.83),
//        CGPoint(x: 52.97, y: 133.04),
//        CGPoint(x: 53.7, y: 132.61),
//        CGPoint(x: 54.3, y: 131.76),
//        CGPoint(x: 55.27, y: 131.51),
//        CGPoint(x: 55.49, y: 131.29),
//        CGPoint(x: 55.47, y: 130.22),
//        CGPoint(x: 56.15, y: 129.89),
//        CGPoint(x: 56.14, y: 129.68),
//        CGPoint(x: 57.3, y: 127.89),
//        CGPoint(x: 57.77, y: 127.77),
//        CGPoint(x: 57.73, y: 127.12),
//        CGPoint(x: 58.84, y: 125.95),
//        CGPoint(x: 59.03, y: 125.76),
//        CGPoint(x: 59.09, y: 125.51),
//        CGPoint(x: 59.24, y: 125.05),
//        CGPoint(x: 59.24, y: 124.5),
//        CGPoint(x: 59.34, y: 123.52),
//        CGPoint(x: 59.77, y: 121.87),
//        CGPoint(x: 60.1, y: 121.68),
//        CGPoint(x: 59.51, y: 120.68),
//        CGPoint(x: 60.28, y: 120.05),
//        CGPoint(x: 59.92, y: 119.38),
//        CGPoint(x: 61.03, y: 118.26),
//        CGPoint(x: 60.96, y: 117.83),
//        CGPoint(x: 60.95, y: 116.95),
//        CGPoint(x: 60.9, y: 116.07),
//        CGPoint(x: 61.07, y: 115.19),
//        CGPoint(x: 61.12, y: 114.76),
//        CGPoint(x: 61.01, y: 113.45),
//        CGPoint(x: 61.39, y: 112.96),
//        CGPoint(x: 61.06, y: 112.64),
//        CGPoint(x: 61.31, y: 110.68),
//        CGPoint(x: 60.84, y: 110.17),
//        CGPoint(x: 61.61, y: 108.35),
//        CGPoint(x: 60.8, y: 107.61),
//        CGPoint(x: 61.12, y: 106.09),
//        CGPoint(x: 60.11, y: 104.99),
//        CGPoint(x: 60.79, y: 103.96),
//        CGPoint(x: 60.73, y: 103.91),
//        CGPoint(x: 60.05, y: 102.17),
//        CGPoint(x: 60.15, y: 101.71),
//        CGPoint(x: 59.42, y: 100.75),
//        CGPoint(x: 59.95, y: 99.83),
//        CGPoint(x: 59.8, y: 99.72),
//        CGPoint(x: 59.3, y: 98.28),
//        CGPoint(x: 59.16, y: 97.37),
//        CGPoint(x: 59.09, y: 96.93),
//        CGPoint(x: 59.03, y: 96.8),
//        CGPoint(x: 58.04, y: 95.72),
//        CGPoint(x: 58.11, y: 95.37),
//        CGPoint(x: 57.41, y: 95.02),
//        CGPoint(x: 57.58, y: 93.6),
//        CGPoint(x: 57.23, y: 93.17),
//        CGPoint(x: 55.76, y: 92.77),
//        CGPoint(x: 56.16, y: 91.19),
//        CGPoint(x: 55.03, y: 90.61),
//        CGPoint(x: 55.25, y: 88.79),
//        CGPoint(x: 55.24, y: 88.76),
//        CGPoint(x: 55.13, y: 88.6),
//        CGPoint(x: 54.58, y: 88.13),
//        CGPoint(x: 54.35, y: 87.8),
//        CGPoint(x: 53.56, y: 87.47),
//        CGPoint(x: 52.86, y: 86.41),
//        CGPoint(x: 52.27, y: 85.62),
//        CGPoint(x: 52.16, y: 85.3),
//        CGPoint(x: 51.61, y: 84.96),
//        CGPoint(x: 51.37, y: 84.44),
//        CGPoint(x: 50.91, y: 84.25),
//        CGPoint(x: 49.73, y: 82.88),
//        CGPoint(x: 49.66, y: 82.21),
//        CGPoint(x: 48.91, y: 81.89),
//        CGPoint(x: 48.5, y: 81.07),
//        CGPoint(x: 47.42, y: 80.41),
//        CGPoint(x: 47.41, y: 79.69),
//        CGPoint(x: 46.01, y: 79.19),
//        CGPoint(x: 45.93, y: 78.16),
//        CGPoint(x: 45.23, y: 77.81),
//        CGPoint(x: 44.34, y: 76.88),
//        CGPoint(x: 43.87, y: 76.09),
//        CGPoint(x: 42.63, y: 75.9),
//        CGPoint(x: 42.49, y: 74.82),
//        CGPoint(x: 42.22, y: 74.74),
//        CGPoint(x: 41.36, y: 73.36),
//        CGPoint(x: 41.18, y: 73),
//        CGPoint(x: 40.86, y: 72.74),
//        CGPoint(x: 40.52, y: 72.38),
//        CGPoint(x: 40.07, y: 72.17),
//        CGPoint(x: 39.4, y: 71.74),
//        CGPoint(x: 38.15, y: 71.05),
//        CGPoint(x: 37.88, y: 70.3),
//        CGPoint(x: 37.75, y: 70.23),
//        CGPoint(x: 36.4, y: 69.35),
//        CGPoint(x: 36.18, y: 68.05),
//        CGPoint(x: 36.17, y: 68.03),
//        CGPoint(x: 36.14, y: 68),
//        CGPoint(x: 34.89, y: 67.63),
//        CGPoint(x: 34.45, y: 66.66),
//        CGPoint(x: 33.65, y: 66.17),
//        CGPoint(x: 33.48, y: 65.5),
//        CGPoint(x: 32.17, y: 65.23),
//        CGPoint(x: 31.65, y: 63.61),
//        CGPoint(x: 31.46, y: 63.51),
//        CGPoint(x: 30.43, y: 62.89),
//        CGPoint(x: 29.83, y: 62.1),
//        CGPoint(x: 29.54, y: 61.79),
//        CGPoint(x: 28.82, y: 61.29),
//        CGPoint(x: 28.07, y: 60.22),
//        CGPoint(x: 27.63, y: 59.13),
//        CGPoint(x: 27.51, y: 58.52),
//        CGPoint(x: 26.86, y: 58.05),
//        CGPoint(x: 26.62, y: 57.58),
//        CGPoint(x: 26.15, y: 57.35),
//        CGPoint(x: 24.76, y: 55.84),
//        CGPoint(x: 24.89, y: 54.85),
//        CGPoint(x: 24.29, y: 54.41),
//        CGPoint(x: 24.11, y: 53.84),
//        CGPoint(x: 23.5, y: 53.5),
//        CGPoint(x: 22.62, y: 51.65),
//        CGPoint(x: 22.76, y: 51.03),
//        CGPoint(x: 22.02, y: 50.01),
//        CGPoint(x: 22.02, y: 49.15),
//        CGPoint(x: 21.78, y: 48.75),
//        CGPoint(x: 21.62, y: 48.15),
//        CGPoint(x: 20.73, y: 46.96),
//        CGPoint(x: 21.12, y: 45.99),
//        CGPoint(x: 20.39, y: 45.44),
//        CGPoint(x: 20.62, y: 43.74),
//        CGPoint(x: 19.75, y: 43.03),
//        CGPoint(x: 20.33, y: 41.62),
//        CGPoint(x: 19.21, y: 40.62),
//        CGPoint(x: 19.86, y: 39.62),
//        CGPoint(x: 19.61, y: 39.29),
//        CGPoint(x: 19.91, y: 38),
//        CGPoint(x: 19.8, y: 37.17),
//        CGPoint(x: 20.05, y: 36.36),
//        CGPoint(x: 20.02, y: 35.18),
//        CGPoint(x: 20.74, y: 34.35),
//        CGPoint(x: 20.73, y: 34.29),
//        CGPoint(x: 20.07, y: 32.04),
//        CGPoint(x: 20.74, y: 31.66),
//        CGPoint(x: 20.53, y: 31.22),
//        CGPoint(x: 21.28, y: 30.46),
//        CGPoint(x: 21.21, y: 30.23),
//        CGPoint(x: 21.68, y: 28.36),
//        CGPoint(x: 22.84, y: 27.4),
//        CGPoint(x: 23.07, y: 27.2),
//        CGPoint(x: 23.15, y: 27.03),
//        CGPoint(x: 23.22, y: 26.84),
//        CGPoint(x: 23.11, y: 25.86),
//        CGPoint(x: 23.78, y: 24.58),
//        CGPoint(x: 23.96, y: 24.29),
//        CGPoint(x: 24.21, y: 22.65),
//        CGPoint(x: 25.14, y: 22.38),
//        CGPoint(x: 25.14, y: 22.31),
//        CGPoint(x: 25.88, y: 21.4),
//        CGPoint(x: 26.46, y: 20.53),
//        CGPoint(x: 26.58, y: 20.45),
//        CGPoint(x: 26.62, y: 19.69),
//        CGPoint(x: 27.77, y: 18.75),
//        CGPoint(x: 28.37, y: 18.08),
//        CGPoint(x: 28.93, y: 17.76),
//        CGPoint(x: 29.03, y: 16.04),
//        CGPoint(x: 30.18, y: 15.95),
//        CGPoint(x: 30.33, y: 15.08),
//        CGPoint(x: 31.2, y: 15.01),
//        CGPoint(x: 32.48, y: 13.7),
//        CGPoint(x: 33.44, y: 13.35),
//        CGPoint(x: 33.69, y: 13.19),
//        CGPoint(x: 34.17, y: 12.71),
//        CGPoint(x: 35.16, y: 12.03),
//        CGPoint(x: 35.3, y: 11.98),
//        CGPoint(x: 35.72, y: 10.99),
//        CGPoint(x: 36.69, y: 10.87),
//        CGPoint(x: 36.88, y: 10.56),
//        CGPoint(x: 37.49, y: 10.22),
//        CGPoint(x: 38.33, y: 8.69),
//        CGPoint(x: 39.56, y: 8.97),
//        CGPoint(x: 40.66, y: 8.38),
//        CGPoint(x: 40.85, y: 8.32),
//        CGPoint(x: 41.43, y: 7.42),
//        CGPoint(x: 42.73, y: 7.29),
//        CGPoint(x: 43.32, y: 6.93),
//        CGPoint(x: 43.71, y: 5.89),
//        CGPoint(x: 45.84, y: 5.82),
//        CGPoint(x: 46.07, y: 5.82),
//        CGPoint(x: 46.55, y: 5.49),
//        CGPoint(x: 47.6, y: 5.33),
//        CGPoint(x: 47.77, y: 5.28),
//        CGPoint(x: 48.16, y: 4.97),
//        CGPoint(x: 49.49, y: 4.16),
//        CGPoint(x: 50.15, y: 4.23),
//        CGPoint(x: 50.75, y: 3.76),
//        CGPoint(x: 51.2, y: 3.81),
//        CGPoint(x: 51.45, y: 3.47),
//        CGPoint(x: 53.15, y: 2.94),
//        CGPoint(x: 53.4, y: 2.96),
//        CGPoint(x: 53.76, y: 2.62),
//        CGPoint(x: 55.64, y: 2.23),
//        CGPoint(x: 56.46, y: 2.56),
//        CGPoint(x: 56.52, y: 2.51),
//        CGPoint(x: 57.79, y: 1.84),
//        CGPoint(x: 59.18, y: 1.78),
//        CGPoint(x: 59.4, y: 1.49),
//        CGPoint(x: 61.63, y: 1.25),
//        CGPoint(x: 62.2, y: 0.64),
//        CGPoint(x: 63.48, y: 1.29),
//        CGPoint(x: 64.98, y: 0.85),
//        CGPoint(x: 66.15, y: 1.38),
//        CGPoint(x: 67.01, y: 1.52),
//        CGPoint(x: 67.43, y: 1.45),
//        CGPoint(x: 68.53, y: 1.25),
//        CGPoint(x: 68.69, y: 1.29),
//        CGPoint(x: 69.24, y: 0.83),
//        CGPoint(x: 71.46, y: 0.96),
//        CGPoint(x: 71.89, y: 1.35),
//        CGPoint(x: 73.13, y: 0.72),
//        CGPoint(x: 74.01, y: 1.53),
//        CGPoint(x: 74.41, y: 1.42),
//        CGPoint(x: 74.94, y: 1.68),
//        CGPoint(x: 75, y: 1.65),
//        CGPoint(x: 77.12, y: 1.1),
//        CGPoint(x: 77.86, y: 1.95),
//        CGPoint(x: 78, y: 1.93),
//        CGPoint(x: 78.34, y: 2.05),
//        CGPoint(x: 79.38, y: 1.53),
//        CGPoint(x: 80.33, y: 2.1),
//        CGPoint(x: 81.63, y: 1.84),
//        CGPoint(x: 82.09, y: 2.5),
//        CGPoint(x: 82.83, y: 2.25),
//        CGPoint(x: 83.33, y: 2.89),
//        CGPoint(x: 84.09, y: 2.58),
//        CGPoint(x: 85.28, y: 3.96),
//        CGPoint(x: 85.46, y: 3.95),
//        CGPoint(x: 87.36, y: 3.85),
//        CGPoint(x: 87.57, y: 4.2),
//        CGPoint(x: 88.23, y: 3.94),
//        CGPoint(x: 89.8, y: 5.62),
//        CGPoint(x: 91.57, y: 5.57),
//        CGPoint(x: 92.01, y: 6.47),
//        CGPoint(x: 92.46, y: 6.5),
//        CGPoint(x: 93.59, y: 7.69),
//        CGPoint(x: 93.96, y: 8.17),
//        CGPoint(x: 94.78, y: 8.81),
//        CGPoint(x: 94.94, y: 9.26),
//        CGPoint(x: 95.52, y: 9.48),
//        CGPoint(x: 96.06, y: 10.52),
//        CGPoint(x: 96.44, y: 10.87),
//        CGPoint(x: 96.87, y: 11.41),
//        CGPoint(x: 97.73, y: 12.18),
//        CGPoint(x: 97.97, y: 13.04),
//        CGPoint(x: 98.39, y: 13.53),
//        CGPoint(x: 98.6, y: 14.13),
//        CGPoint(x: 100.57, y: 14.82),
//        CGPoint(x: 100.13, y: 17.2),
//        CGPoint(x: 100.84, y: 18.19),
//        CGPoint(x: 101.11, y: 19.54),
//        CGPoint(x: 102.57, y: 20.76),
//        CGPoint(x: 101.74, y: 21.84),
//        CGPoint(x: 101.75, y: 21.85),
//        CGPoint(x: 101.71, y: 22.68),
//        CGPoint(x: 102.18, y: 23.33),
//        CGPoint(x: 102.19, y: 24.7),
//        CGPoint(x: 102.16, y: 25.53),
//        CGPoint(x: 102.16, y: 26.26),
//        CGPoint(x: 102.06, y: 27.56),
//        CGPoint(x: 101.81, y: 27.95),
//        CGPoint(x: 102.74, y: 29.03),
//        CGPoint(x: 101.88, y: 30.16),
//        CGPoint(x: 102.17, y: 31.04),
//        CGPoint(x: 101.35, y: 31.94),
//        CGPoint(x: 101.84, y: 33.01),
//        CGPoint(x: 100.82, y: 34.24),
//        CGPoint(x: 101.45, y: 35.84),
//        CGPoint(x: 99.72, y: 36.63),
//        CGPoint(x: 99.71, y: 36.67),
//        CGPoint(x: 99.25, y: 37.46),
//        CGPoint(x: 98.91, y: 38.26),
//        CGPoint(x: 98.5, y: 38.76),
//        CGPoint(x: 99.01, y: 40.76),
//        CGPoint(x: 97.46, y: 41.24),
//        CGPoint(x: 97.39, y: 41.59),
//        CGPoint(x: 96.51, y: 42.28),
//        CGPoint(x: 95.84, y: 43.38),
//        CGPoint(x: 95.42, y: 43.45),
//        CGPoint(x: 95.13, y: 44.75),
//        CGPoint(x: 93.42, y: 44.59),
//        CGPoint(x: 92.97, y: 44.92),
//        CGPoint(x: 92.37, y: 45.76),
//        CGPoint(x: 90.93, y: 46.36),
//        CGPoint(x: 89.99, y: 46.5),
//        CGPoint(x: 89.25, y: 46.65),
//        CGPoint(x: 89.17, y: 46.66),
//        CGPoint(x: 88.7, y: 47.16),
//        CGPoint(x: 87.31, y: 47.52),
//        CGPoint(x: 86.54, y: 47.63),
//        CGPoint(x: 85.82, y: 47.78),
//        CGPoint(x: 84.35, y: 47.97),
//        CGPoint(x: 83.81, y: 47.67),
//        CGPoint(x: 82.7, y: 48.05),
//        CGPoint(x: 81.9, y: 47.17),
//        CGPoint(x: 81.41, y: 47.07),
//        CGPoint(x: 79.63, y: 47.64),
//        CGPoint(x: 79.03, y: 46.72),
//        CGPoint(x: 78.89, y: 46.74),
//        CGPoint(x: 77.22, y: 45.96),
//        CGPoint(x: 76.44, y: 44.91),
//        CGPoint(x: 76.22, y: 44.85),
//        CGPoint(x: 74.72, y: 44.14),
//        CGPoint(x: 74.07, y: 42.66),
//        CGPoint(x: 73.67, y: 41.58),
//        CGPoint(x: 74.25, y: 39.96),
//        CGPoint(x: 75, y: 39.24),
//        CGPoint(x: 75.42, y: 38.7),
//        CGPoint(x: 75.99, y: 38.11),
//        CGPoint(x: 77.09, y: 37.01),
//        CGPoint(x: 77.52, y: 37.01),
//        CGPoint(x: 77.89, y: 36.33),
//        CGPoint(x: 78.78, y: 35.51),
//        CGPoint(x: 78.78, y: 35.07),
//        CGPoint(x: 79.72, y: 34.13),
//        CGPoint(x: 79.63, y: 32.96),
//        CGPoint(x: 80.03, y: 32.68),
//        CGPoint(x: 79.76, y: 31.84),
//        CGPoint(x: 80.78, y: 31.08),
//        CGPoint(x: 80.83, y: 29.47),
//        CGPoint(x: 81.72, y: 28.9),
//        CGPoint(x: 81.72, y: 28.85),
//        CGPoint(x: 80.94, y: 27.75),
//        CGPoint(x: 81.88, y: 26.61),
//        CGPoint(x: 81.59, y: 26.04),
//        CGPoint(x: 81.91, y: 24.38),
//        CGPoint(x: 82.26, y: 23.7),
//        CGPoint(x: 81.23, y: 22.66),
//        CGPoint(x: 81.6, y: 21.8),
//        CGPoint(x: 81.03, y: 21.36),
//        CGPoint(x: 80.69, y: 19.6),
//        CGPoint(x: 80.72, y: 19.42),
//        CGPoint(x: 80.54, y: 19.25),
//        CGPoint(x: 80.12, y: 17.97),
//        CGPoint(x: 79.7, y: 17.68),
//        CGPoint(x: 79.35, y: 17.07),
//        CGPoint(x: 78.14, y: 16.95),
//        CGPoint(x: 77.6, y: 15.91),
//        CGPoint(x: 76.49, y: 15.39),
//        CGPoint(x: 76.17, y: 15.03),
//        CGPoint(x: 75.86, y: 15.1),
//        CGPoint(x: 74.5, y: 15.02),
//        CGPoint(x: 73.87, y: 14.76),
//        CGPoint(x: 73.32, y: 14.75),
//        CGPoint(x: 72.26, y: 14.51),
//        CGPoint(x: 71.52, y: 14.19),
//        CGPoint(x: 71.09, y: 14.07),
//        CGPoint(x: 70.78, y: 14.03),
//        CGPoint(x: 70.72, y: 14.04),
//        CGPoint(x: 69.45, y: 14.82),
//        CGPoint(x: 68.24, y: 14.26),
//        CGPoint(x: 67.73, y: 14.44),
//        CGPoint(x: 66.51, y: 14.74),
//        CGPoint(x: 65.87, y: 14.62),
//        CGPoint(x: 65.31, y: 14.82),
//        CGPoint(x: 65.06, y: 14.81),
//        CGPoint(x: 64.59, y: 15.3),
//        CGPoint(x: 63.26, y: 15.41),
//        CGPoint(x: 62.69, y: 15.54),
//        CGPoint(x: 62.18, y: 15.65),
//        CGPoint(x: 61.47, y: 16.01),
//        CGPoint(x: 60.62, y: 17.02),
//        CGPoint(x: 59.76, y: 16.99),
//        CGPoint(x: 59.56, y: 17.41),
//        CGPoint(x: 58.27, y: 18.57),
//        CGPoint(x: 58.01, y: 18.6),
//        CGPoint(x: 57.93, y: 18.84),
//        CGPoint(x: 57.44, y: 19.16),
//        CGPoint(x: 57.33, y: 19.85),
//        CGPoint(x: 56.87, y: 20.21),
//        CGPoint(x: 56.85, y: 21.26),
//        CGPoint(x: 56.06, y: 21.7),
//        CGPoint(x: 56, y: 22.47),
//        CGPoint(x: 55.59, y: 22.7),
//        CGPoint(x: 55.66, y: 23.02),
//        CGPoint(x: 54.68, y: 24.28),
//        CGPoint(x: 55.12, y: 25.65),
//        CGPoint(x: 54.64, y: 26.34),
//        CGPoint(x: 54.87, y: 27.13),
//        CGPoint(x: 54.52, y: 27.61),
//        CGPoint(x: 54.99, y: 28.53),
//        CGPoint(x: 53.94, y: 29.59),
//        CGPoint(x: 53.97, y: 29.68),
//        CGPoint(x: 54.53, y: 31.13),
//        CGPoint(x: 54.17, y: 31.85),
//        CGPoint(x: 54.33, y: 32.46),
//        CGPoint(x: 54.96, y: 33.6),
//        CGPoint(x: 54.76, y: 34.39),
//        CGPoint(x: 55.15, y: 34.64),
//        CGPoint(x: 55.78, y: 36.63),
//        CGPoint(x: 56.57, y: 37.06),
//        CGPoint(x: 56.11, y: 38.26),
//        CGPoint(x: 56.82, y: 39.01),
//        CGPoint(x: 56.97, y: 39.93),
//        CGPoint(x: 57.47, y: 40.71),
//        CGPoint(x: 57.44, y: 41.84),
//        CGPoint(x: 58.62, y: 42.68),
//        CGPoint(x: 58.79, y: 43.87),
//        CGPoint(x: 59.09, y: 44.32),
//        CGPoint(x: 59.19, y: 44.6),
//        CGPoint(x: 61.18, y: 45.12),
//        CGPoint(x: 61.06, y: 46.2),
//        CGPoint(x: 61.73, y: 47.05),
//        CGPoint(x: 62.41, y: 47.75),
//        CGPoint(x: 62.65, y: 48.29),
//        CGPoint(x: 62.72, y: 48.34),
//        CGPoint(x: 64.32, y: 49.26),
//        CGPoint(x: 64.3, y: 49.65),
//        CGPoint(x: 64.88, y: 49.71),
//        CGPoint(x: 65.02, y: 50.6),
//        CGPoint(x: 65.15, y: 50.61),
//        CGPoint(x: 65.87, y: 51.39),
//        CGPoint(x: 67.43, y: 52.1),
//        CGPoint(x: 67.38, y: 53.2),
//        CGPoint(x: 67.77, y: 53.55),
//        CGPoint(x: 68.02, y: 53.69),
//        CGPoint(x: 69.28, y: 54.05),
//        CGPoint(x: 69.79, y: 54.83),
//        CGPoint(x: 71.09, y: 55.44),
//        CGPoint(x: 71.1, y: 56.2),
//        CGPoint(x: 71.49, y: 56.71),
//        CGPoint(x: 72.84, y: 56.97),
//        CGPoint(x: 73.11, y: 58.12),
//        CGPoint(x: 73.63, y: 58.38),
//        CGPoint(x: 74.99, y: 59.12),
//        CGPoint(x: 75.49, y: 60.4),
//        CGPoint(x: 75.56, y: 60.51),
//        CGPoint(x: 75.7, y: 60.6),
//        CGPoint(x: 76.68, y: 61.13),
//        CGPoint(x: 77.3, y: 61.98),
//        CGPoint(x: 77.4, y: 62.08),
//        CGPoint(x: 78.58, y: 62.52),
//        CGPoint(x: 78.87, y: 63.36),
//        CGPoint(x: 79.62, y: 63.7),
//        CGPoint(x: 79.68, y: 63.9),
//        CGPoint(x: 81.2, y: 63.85),
//        CGPoint(x: 81.22, y: 65.41),
//        CGPoint(x: 82.38, y: 66.62),
//        CGPoint(x: 82.51, y: 67.15),
//        CGPoint(x: 82.59, y: 67.2),
//        CGPoint(x: 83.21, y: 67.72),
//        CGPoint(x: 83.93, y: 68.26),
//        CGPoint(x: 84.42, y: 68.84),
//        CGPoint(x: 84.78, y: 69.13),
//        CGPoint(x: 86.21, y: 70.1),
//        CGPoint(x: 86.21, y: 71.03),
//        CGPoint(x: 87.53, y: 72.01),
//        CGPoint(x: 87.46, y: 72.9),
//        CGPoint(x: 88.69, y: 73.25),
//        CGPoint(x: 88.66, y: 74.84),
//        CGPoint(x: 89.5, y: 75.35),
//        CGPoint(x: 89.68, y: 76.07),
//        CGPoint(x: 90.38, y: 76.49),
//        CGPoint(x: 90.61, y: 77.41),
//        CGPoint(x: 91.44, y: 78.11),
//        CGPoint(x: 91.4, y: 79.02),
//        CGPoint(x: 92.03, y: 79.38),
//        CGPoint(x: 92.91, y: 80.88),
//        CGPoint(x: 92.98, y: 82.14),
//        CGPoint(x: 92.99, y: 82.28),
//        CGPoint(x: 93.25, y: 82.6),
//        CGPoint(x: 93.45, y: 83.15),
//        CGPoint(x: 94.55, y: 84.16),
//        CGPoint(x: 94.39, y: 84.8),
//        CGPoint(x: 94.95, y: 85.18),
//        CGPoint(x: 94.84, y: 86.53),
//        CGPoint(x: 94.91, y: 86.66),
//        CGPoint(x: 95.68, y: 87.93),
//        CGPoint(x: 95.5, y: 88.67),
//        CGPoint(x: 95.75, y: 89.04),
//        CGPoint(x: 95.78, y: 89.69),
//        CGPoint(x: 96.59, y: 90.71),
//        CGPoint(x: 96.1, y: 91.95),
//        CGPoint(x: 96.37, y: 92.24),
//        CGPoint(x: 96.83, y: 94.16),
//        CGPoint(x: 96.72, y: 94.4),
//        CGPoint(x: 97.16, y: 94.9),
//        CGPoint(x: 96.77, y: 96.08),
//        CGPoint(x: 97.35, y: 97.35),
//        CGPoint(x: 97.03, y: 98.5),
//        CGPoint(x: 97.3, y: 98.97),
//        CGPoint(x: 97.57, y: 100.2),
//        CGPoint(x: 97.55, y: 101.91),
//        CGPoint(x: 97.29, y: 102.21),
//        CGPoint(x: 97.47, y: 102.56),
//        CGPoint(x: 97.27, y: 103),
//        CGPoint(x: 98.13, y: 104.01),
//        CGPoint(x: 97.62, y: 104.66),
//        CGPoint(x: 98.39, y: 105.48),
//        CGPoint(x: 97.2, y: 106.82),
//        CGPoint(x: 97.28, y: 107.31),
//        CGPoint(x: 97.19, y: 107.48),
//        CGPoint(x: 97.6, y: 108.03),
//        CGPoint(x: 97.01, y: 109.81),
//        CGPoint(x: 96.97, y: 109.93),
//        CGPoint(x: 97.13, y: 110.6),
//        CGPoint(x: 96.61, y: 112.3),
//        CGPoint(x: 96.44, y: 112.47),
//        CGPoint(x: 96.9, y: 113.79),
//        CGPoint(x: 96.23, y: 114.61),
//        CGPoint(x: 96.26, y: 114.85),
//        CGPoint(x: 95.96, y: 116.33),
//        CGPoint(x: 95.57, y: 116.85),
//        CGPoint(x: 95.49, y: 117.82),
//        CGPoint(x: 94.98, y: 118.26),
//        CGPoint(x: 94.98, y: 118.29),
//        CGPoint(x: 94.68, y: 119.76),
//        CGPoint(x: 94.31, y: 120.21),
//        CGPoint(x: 94.29, y: 120.59),
//        CGPoint(x: 94.06, y: 121.24),
//        CGPoint(x: 94.04, y: 122.1),
//        CGPoint(x: 93.47, y: 123.36),
//        CGPoint(x: 93.05, y: 123.89),
//        CGPoint(x: 92.69, y: 124.85),
//        CGPoint(x: 92.61, y: 124.91),
//        CGPoint(x: 92.76, y: 125.58),
//        CGPoint(x: 91.3, y: 127.08),
//        CGPoint(x: 91.14, y: 127.17),
//        CGPoint(x: 90.98, y: 128.05),
//        CGPoint(x: 90.59, y: 128.23),
//        CGPoint(x: 90.65, y: 128.74),
//        CGPoint(x: 89.48, y: 129.79),
//        CGPoint(x: 89.71, y: 131.17),
//        CGPoint(x: 87.61, y: 131.92),
//        CGPoint(x: 87.44, y: 132.24),
//        CGPoint(x: 86.85, y: 133.1),
//        CGPoint(x: 86.31, y: 133.63),
//        CGPoint(x: 85.85, y: 134.25),
//        CGPoint(x: 85.56, y: 134.5),
//        CGPoint(x: 85.23, y: 135.51),
//        CGPoint(x: 84.17, y: 136.07),
//        CGPoint(x: 84, y: 136.26),
//        CGPoint(x: 83.42, y: 137.07),
//        CGPoint(x: 82.35, y: 137.78),
//        CGPoint(x: 82.17, y: 137.85),
//        CGPoint(x: 81.92, y: 138.34),
//        CGPoint(x: 80.56, y: 139.31),
//        CGPoint(x: 80.38, y: 139.35),
//        CGPoint(x: 79.85, y: 140.54),
//        CGPoint(x: 79.09, y: 140.42),
//        CGPoint(x: 78.04, y: 141.12),
//        CGPoint(x: 77.37, y: 141.68),
//        CGPoint(x: 76.75, y: 141.97),
//        CGPoint(x: 76.02, y: 142.64),
//        CGPoint(x: 75.11, y: 142.82),
//        CGPoint(x: 74.77, y: 143.04),
//        CGPoint(x: 73.67, y: 143.65),
//        CGPoint(x: 72.62, y: 143.7),
//        CGPoint(x: 72.1, y: 143.83),
//        CGPoint(x: 71.83, y: 143.89),
//        CGPoint(x: 71.32, y: 144.35),
//        CGPoint(x: 70.72, y: 144.5),
//        CGPoint(x: 70.45, y: 144.8),
//        CGPoint(x: 69.25, y: 145.65),
//        CGPoint(x: 68.55, y: 145.72),
//        CGPoint(x: 67.73, y: 146.34),
//        CGPoint(x: 66.31, y: 146.14),
//        CGPoint(x: 65.12, y: 147.43),
//        CGPoint(x: 63.69, y: 147.05),
//        CGPoint(x: 63.31, y: 147.17),
//        CGPoint(x: 62.49, y: 147.21),
//        CGPoint(x: 62.45, y: 147.22),
//        CGPoint(x: 61.78, y: 147.79),
//        CGPoint(x: 61.2, y: 147.86),
//        CGPoint(x: 60.09, y: 149.07),
//        CGPoint(x: 59, y: 148.52),
//        CGPoint(x: 58.72, y: 148.72),
//        CGPoint(x: 57.35, y: 148.57),
//        CGPoint(x: 56.98, y: 148.87),
//        CGPoint(x: 55.61, y: 149.25),
//        CGPoint(x: 54.26, y: 149.21),
//        CGPoint(x: 53.73, y: 149.02),
//        CGPoint(x: 53.46, y: 149.08),
//        CGPoint(x: 52.61, y: 149.15),
//        CGPoint(x: 52.42, y: 149.15),
//        CGPoint(x: 51.7, y: 149.67),
//        CGPoint(x: 50.44, y: 149.65),
//        CGPoint(x: 49.27, y: 149.78),
//        CGPoint(x: 48.4, y: 149.36),
//        CGPoint(x: 47.62, y: 149.64),
//        CGPoint(x: 46.63, y: 149.44),
//        CGPoint(x: 46, y: 149.51),
//        CGPoint(x: 45.71, y: 149.47),
//        CGPoint(x: 44.99, y: 149.87),
//        CGPoint(x: 43.42, y: 149.7),
//        CGPoint(x: 43.29, y: 149.65),
//        CGPoint(x: 42.67, y: 149.95),
//        CGPoint(x: 41.78, y: 149.75),
//        CGPoint(x: 40.92, y: 150),
//        CGPoint(x: 39.99, y: 149.64)]
//        
//        bezierPath.move(to: SPoints.first!)
//        for point in 1..<SPoints.count {
//            bezierPath.addLine(to: SPoints[point])
//        }
//        
//        bezierPath.close()
//        bezierPath.usesEvenOddFillRule = true
//        fillColor.setFill()
//        bezierPath.fill()
//        
//        context.restoreGState()
//        
//    }
//    
//    
//    
//    
//    @objc(LetteraStyleResizingBehavior)
//    public enum ResizingBehavior: Int {
//        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
//        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
//        case stretch /// The content is stretched to match the entire target rectangle.
//        case center /// The content is centered in the target rectangle, but it is NOT resized.
//        
//        public func apply(rect: CGRect, target: CGRect) -> CGRect {
//            if rect == target || target == CGRect.zero {
//                return rect
//            }
//            
//            var scales = CGSize.zero
//            scales.width = abs(target.width / rect.width)
//            scales.height = abs(target.height / rect.height)
//            
//            switch self {
//            case .aspectFit:
//                scales.width = min(scales.width, scales.height)
//                scales.height = scales.width
//            case .aspectFill:
//                scales.width = max(scales.width, scales.height)
//                scales.height = scales.width
//            case .stretch:
//                break
//            case .center:
//                scales.width = 1
//                scales.height = 1
//            }
//            
//            var result = rect.standardized
//            result.size.width *= scales.width
//            result.size.height *= scales.height
//            result.origin.x = target.minX + (target.width - result.width) / 2
//            result.origin.y = target.minY + (target.height - result.height) / 2
//            return result
//        }
//    }
//}

