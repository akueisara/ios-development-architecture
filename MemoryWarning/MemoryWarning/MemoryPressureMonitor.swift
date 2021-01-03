//
//  MemoryPressureMonitor.swift
//  MemoryWarning
//
//  Created by Kuei-Jung Hu on 2021/01/03.
//

import Foundation

class MemoryPressureMonitor {
	static let shared = MemoryPressureMonitor()
	
	private let memoryDS = DispatchSource.makeMemoryPressureSource(eventMask: [.warning, .critical])
	
	private init() {
		memoryDS.setEventHandler { [weak self] in
			if let event = self?.memoryDS.data,
			   self?.memoryDS.isCancelled == false {
				switch event {
					case .warning:
						print("MemoryPressureMonitor: Low memory warning")
					case .critical:
						print("MemoryPressureMonitor: Critical memory warning")
					default:
						print("MemoryPressureMonitor: Unknown event")
				}
			}
		}
		
		memoryDS.activate()
	}
	
	deinit {
		memoryDS.cancel()
	}
}
