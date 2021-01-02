//
//  Binding.swift
//  MasterDetail
//
//  Created by Kuei-Jung Hu on 2021/01/03.
//

import Foundation

class Observable<T> {
	var bind: (T) -> () = {_ in}
	
	var value: T {
		didSet {
			bind(value)
		}
	}
	
	init(_ value: T) {
		self.value = value
	}
}
