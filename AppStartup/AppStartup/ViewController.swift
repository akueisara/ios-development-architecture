//
//  ViewController.swift
//  AppStartup
//
//  Created by Kuei-Jung Hu on 2021/01/02.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var textView: UITextView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	override func encodeRestorableState(with coder: NSCoder) {
		super.encodeRestorableState(with: coder)
		
		if textView.isFirstResponder {
			coder.encode(textView.text, forKey: "EditedText")
		}
	}

}

