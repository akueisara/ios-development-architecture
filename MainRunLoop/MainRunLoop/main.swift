//
//  main.swift
//  MainRunLoop
//
//  Created by Kuei-Jung Hu on 2021/01/03.
//

import UIKit

UIApplicationMain(CommandLine.argc, UnsafeMutableRawPointer(CommandLine.unsafeArgv).bindMemory(to: UnsafeMutablePointer<Int8>.self, capacity: Int(CommandLine.argc)), NSStringFromClass(CustomApplication.self), NSStringFromClass(AppDelegate.self))
