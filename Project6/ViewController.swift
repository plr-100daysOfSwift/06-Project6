//
//  ViewController.swift
//  Project6
//
//  Created by Paul Richardson on 13/04/2021.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		let label1 = UILabel()
		label1.translatesAutoresizingMaskIntoConstraints = false
		label1.backgroundColor = .red
		label1.text = "THESE"
		label1.sizeToFit()

		let label2 = UILabel()
		label2.translatesAutoresizingMaskIntoConstraints = false
		label2.backgroundColor = .cyan
		label2.text = "ARE"
		label2.sizeToFit()

		let label3 = UILabel()
		label3.translatesAutoresizingMaskIntoConstraints = false
		label3.backgroundColor = .yellow
		label3.text = "SOME"
		label3.sizeToFit()

		let label4 = UILabel()
		label4.translatesAutoresizingMaskIntoConstraints = false
		label4.backgroundColor = .green
		label4.text = "AWESOME"
		label4.sizeToFit()

		let label5 = UILabel()
		label5.translatesAutoresizingMaskIntoConstraints = false
		label5.backgroundColor = .orange
		label5.text = "LABELS"
		label5.sizeToFit()

		view.addSubview(label1)
		view.addSubview(label2)
		view.addSubview(label3)
		view.addSubview(label4)
		view.addSubview(label5)

		var previous: UILabel?

		let labels = [label1, label2, label3, label4, label5]
		let multiplier = 1/CGFloat(labels.count)
		let constant: CGFloat = 10

		for label in labels {
			label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
			label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
			label.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier:multiplier, constant: -constant).isActive = true

			if let previous = previous {
				label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: constant).isActive = true
			} else {
				label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constant).isActive = true
			}

			previous = label
		}

	}

}

