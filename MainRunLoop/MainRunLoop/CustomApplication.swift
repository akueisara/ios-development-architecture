//
//  CustomApplication.swift
//  MainRunLoop
//
//  Created by Kuei-Jung Hu on 2021/01/03.
//

import UIKit

class CustomApplication: UIApplication {
	override func sendEvent(_ event: UIEvent) {
		print("Intercepted event \(event)")
		super.sendEvent(event)
	}
}
