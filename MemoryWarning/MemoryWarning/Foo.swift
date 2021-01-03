//
//  Foo.swift
//  MemoryWarning
//
//  Created by Kuei-Jung Hu on 2021/01/03.
//

import UIKit

struct Foo {
	init() {
		NotificationCenter.default.addObserver(forName: UIApplication.didReceiveMemoryWarningNotification, object: nil, queue: nil) { notification in
			print("\(#function) received notification \(notification)")
		}
	}
}
