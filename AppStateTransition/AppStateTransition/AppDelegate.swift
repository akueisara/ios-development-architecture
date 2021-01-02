//
//  AppDelegate.swift
//  AppStateTransition
//
//  Created by Kuei-Jung Hu on 2021/01/03.
//

import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var state = AppState.notrunning
	
	func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
		print("\(#function) called.\n\t \(state) -> \(AppState.launching)")
		state = .launching
		return true
	}

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		// Override point for customization after application launch.
		print("\(#function) called.\n\t \(state) -> \(AppState.initialized)")
		state = .initialized
		return true
	}
	
	func applicationWillTerminate(_ application: UIApplication) {
		print("\(#function) called.\n\t \(state) -> \(AppState.terminating)")
		state = .terminating
	}

	// MARK: UISceneSession Lifecycle

	func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
		// Called when a new scene session is being created.
		// Use this method to select a configuration to create the new scene with.
		return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
	}

	func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
		// Called when the user discards a scene session.
		// If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
		// Use this method to release any resources that were specific to the discarded scenes, as they will not return.
	}


}

