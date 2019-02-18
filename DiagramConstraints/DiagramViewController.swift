//
//  DiagramViewController.swift
//  AutoLayoutExamples
//
//  Created by Marina Huber on 1/31/19.
//  Copyright © 2019 Marina Huber. All rights reserved.
//

import UIKit

class DiagramViewController: UIViewController {
	
 @IBOutlet weak var vennDiagram: VennDiagram!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
	@IBAction func rightButton(_ sender: UIButton) {
		UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 6, options: .curveEaseInOut, animations:  ({
			self.vennDiagram.transform = CGAffineTransform(rotationAngle: 300)
			self.vennDiagram.weight = VennWeight.Right
		}), completion: nil)

	}
	@IBAction func balanceButton(_ sender: UIButton) {
		self.vennDiagram.weight = VennWeight.Balanced
	}
	@IBAction func leftButton(_ sender: UIButton) {
		UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 6, options: .curveEaseInOut, animations:  ({
			self.vennDiagram.transform = CGAffineTransform(rotationAngle: 0)
			self.vennDiagram.weight = VennWeight.Left
		}), completion: nil)
	}
	
}
