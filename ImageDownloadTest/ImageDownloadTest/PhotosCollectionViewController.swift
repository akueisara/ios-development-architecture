//
//  PhotosCollectionViewController.swift
//  ImageDownloadTest
//
//  Created by Nyisztor, Karoly on 5/16/18.
//  Copyright © 2018 Nyisztor, Karoly. All rights reserved.
//

import UIKit

/// Dispatch Queue
/// - Concurrent queue: Doesn't wait for a task to finish before starting the next one
/// - Serial queue: Executes tasks once at a time
///    - async: Returns control to the caller immediately; the current task is the only one running on the queue
///    - sync: The caller waits until the task completes; the current task is the only one running on the queue

class PhotosCollectionViewCell: UICollectionViewCell {
	static fileprivate let reuseIdentifier = "PhotosCollectionViewCell"
	
	@IBOutlet weak var imageView: UIImageView!
}

class PhotosCollectionViewController: UICollectionViewController {
	
	@IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
	
	let concurrentQueue = DispatchQueue(label: "concurrentQ", attributes: .concurrent)
	
	lazy var photoLinks: [URL] = {
		var result = [URL]()
		// generate image URLs
		let baseURLString = "http://699340.youcanlearnit.net/"
		for i in 1...50 {
			let imagePath = baseURLString + String(format: "image%03d.jpg", i)
			if let imageURL = URL(string: imagePath) {
				result.append(imageURL)
			}
		}
		return result
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
		let width = view.frame.width/2
		let height = view.frame.height/3
		flowLayout.itemSize = CGSize(width: width, height: height)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	// MARK: UICollectionViewDataSource

	override func numberOfSections(in collectionView: UICollectionView) -> Int {
		// #warning Incomplete implementation, return the number of sections
		return 1
	}


	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		// #warning Incomplete implementation, return the number of items
		return photoLinks.count
	}

	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotosCollectionViewCell.reuseIdentifier, for: indexPath) as! PhotosCollectionViewCell
	
		// Configure the cell
//		DispatchQueue.global().async {
		concurrentQueue.async {
			if let imageData = try? Data.init(contentsOf: self.photoLinks[indexPath.row]),
				let image = UIImage(data: imageData) {
				DispatchQueue.main.async {
					cell.imageView.image = image
				}
			}
		}
//		}
		
		
		return cell
	}
}
