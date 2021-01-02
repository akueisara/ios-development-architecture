//
//  ViewController.swift
//  ListenerApp
//
//  Created by Kuei-Jung Hu on 2021/01/03.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var label: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "MessageReceived"), object: nil, queue: OperationQueue.main) { notification in
			if let message = notification.object as? String {
				self.label.text = message.removingPercentEncoding
			}
		}
	}


}

