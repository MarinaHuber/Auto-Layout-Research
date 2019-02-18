//
//  CircleView.swift
//  AutoLayoutExamples
//
//  Created by Marina Huber on 1/31/19.
//  Copyright © 2019 Marina Huber. All rights reserved.
//

import UIKit

@IBDesignable
 public class CircleView: UIView {

	@IBInspectable
	public var fillColor: UIColor {
		didSet {
			self.layoutSubviews()
			self.layoutIfNeeded()
		}
	}

	public override init(frame: CGRect) {
		self.fillColor = UIColor.lightText

		super.init(frame: frame)
		self.backgroundColor = .clear
	}
	public required init?(coder aDecoder: NSCoder) {
		self.fillColor = UIColor.lightText

		super.init(coder: aDecoder)
		self.backgroundColor = .clear
	}



	public var shapeLayer: CAShapeLayer
	{
		get {
			return self.layer as! CAShapeLayer
		}
	}
	override public class var layerClass: Swift.AnyClass {
		return CAShapeLayer.self
	}

	public override func layoutSubviews() {
		super.layoutSubviews()

		let bezierPath = UIBezierPath(ovalIn: self.bounds)

		self.shapeLayer.fillColor = self.fillColor.cgColor
		self.shapeLayer.path = bezierPath.cgPath
	}



}

