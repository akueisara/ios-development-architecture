//
//  main.swift
//  AppStartup
//
//  Created by Kuei-Jung Hu on 2021/01/02.
//

import UIKit

UIApplicationMain(
	CommandLine.argc,
	UnsafeMutableRawPointer(CommandLine.unsafeArgv).bindMemory(
			to: UnsafeMutablePointer<Int8>.self,
			capacity: Int(CommandLine.argc)
	),
	nil,
	NSStringFromClass(AppDelegate.self)
)
