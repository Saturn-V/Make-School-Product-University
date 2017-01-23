//
//  ComputedResultsViewController.swift
//  Memorizing Calculator
//
//  Created by Alex Aaron Peña on 11/16/16.
//  Copyright © 2016 Alex Aaron Peña. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {
    var resultsController: CalculatorViewController!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultsController.computedResults.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ComputedResultCell", for: indexPath) as! ResultsTableViewCell
        
        cell.equationLabel.text = resultsController.computedResults[indexPath.row]
        
        return cell
    }
}
