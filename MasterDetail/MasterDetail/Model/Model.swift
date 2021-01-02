//
//  Model.swift
//  MasterDetail
//
//  Created by Kuei-Jung Hu on 2021/01/03.
//

import Foundation

struct Model<T> {
	private var objects = [T]()
	
	/// the method is mutating since it modifies the contents of the struct
	mutating func insert(_ element: T) {
		objects.insert(element, at: 0)
	}
	
	mutating func remove(at index: Int) {
		guard objects.indices.contains(index) else {
			return
		}
		objects.remove(at: index)
	}
	
	var count: Int {
		return objects.count
	}
	
	subscript(index: Int) -> T? {
		return objects.indices.contains(index) ? objects[index] : nil
	}
}
