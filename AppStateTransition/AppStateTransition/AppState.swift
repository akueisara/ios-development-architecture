//
//  AppState.swift
//  AppStateTransition
//
//  Created by Kuei-Jung Hu on 2021/01/03.
//

import Foundation

enum AppState {
	case notrunning
	case launching
	case initialized
	case active
	case inactive
	case wakingup
	case background
	case terminating
}

extension AppState: CustomStringConvertible {
	var description: String {
		switch self {
			case .notrunning:
				return "NotRunning"
			case .launching:
				return "Launching"
			case .initialized:
				return "initialized"
			case .active:
				return "Active"
			case .inactive:
				return "Inactive"
			case .wakingup:
				return "WakingUp"
			case .background:
				return "Background"
			case .terminating:
				return "Terminating"
		}
		
	}
}
