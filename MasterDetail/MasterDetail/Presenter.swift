//
//  Presenter.swift
//  MasterDetail
//
//  Created by Kuei-Jung Hu on 2021/01/03.
//

import Foundation

class Presenter {
	private var myModel = Model<Date>()
	
	func addEntry() {
		myModel.insert(Date())
	}
	
	var count: Int {
		return myModel.count
	}
	
	func removeEntry(at index: Int) {
		myModel.remove(at: index)
	}
	
	subscript(index: Int) -> String? {
		guard let date = myModel[index] else {
			return nil
		}
		return date.description
	}
}
