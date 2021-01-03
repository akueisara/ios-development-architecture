//
//  MasterViewController.swift
//  CalendarDEmo
//
//  Created by Nyisztor, Karoly on 6/7/18.
//  Copyright © 2018 Nyisztor, Karoly. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    private var dates = [Date]()
	
	private lazy var dateFormatter: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateStyle = .medium
		return formatter
	}()
    
    private func generateDays(from date: Date, count: Int) ->[Date] {
        var result = [Date]()
        
        let cal = Calendar(identifier: Calendar.Identifier.gregorian)
        
        for i in 1..<count {
            if let newDate = cal.date(byAdding: Calendar.Component.day, value: i, to: Date()) {
                result.append(newDate)
            }
        }
        return result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
		DispatchQueue.global().async {
			self.dates = self.generateDays(from: Date(), count: 1000)
			
			DispatchQueue.main.async {
				self.tableView.reloadData()
			}
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dates.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let date = dates[indexPath.row]
        
        cell.textLabel!.text = dateFormatter.string(from: date)
        
        return cell
    }    
}

