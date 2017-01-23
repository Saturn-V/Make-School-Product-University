//
//  ViewController.swift
//  Memorizing Calculator
//
//  Created by Alex Aaron Peña on 11/15/16.
//  Copyright © 2016 Alex Aaron Peña. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var computedResults: [String] = []
    
    var firstNumber = ""
    var secondNumber = ""
    var operand = ""

    @IBOutlet weak var computedLabel: UILabel!
    
    @IBOutlet weak var previousResultsLabel: UIButton!
    
    @IBOutlet weak var inputLabel: UILabel!

    @IBAction func numberButton(_ sender: UIButton) {
        if operand.isEmpty {
            firstNumber += (sender.titleLabel?.text)!
            inputLabel.text = firstNumber
        } else {
            secondNumber += (sender.titleLabel?.text)!
            inputLabel.text = secondNumber
        }
    }
    
    @IBAction func additionButton(_ sender: Any) {
        if !firstNumber.isEmpty {
            operand = "+"
            inputLabel.text = "0"
        } else {
            print("add pressed but noTHING happened")
        }
        
    }
    
    @IBAction func subtractionButton(_ sender: Any) {
        if !firstNumber.isEmpty {
            operand = "-"
            inputLabel.text = "0"
        } else {
            print("subtract pressed but noTHING happened")
        }
    }
    
    @IBAction func evaluateButton(_ sender: Any) {
        if !firstNumber.isEmpty && !secondNumber.isEmpty {
            var answer: Int!
            var equation: String!
            
            if (operand.range(of: "+") != nil) {
                
                answer = Int(firstNumber)! + Int(secondNumber)!
                equation = "\(firstNumber) + \(secondNumber) = \(answer!)"
                
            } else if (operand.range(of: "-") != nil) {
                
                answer = Int(firstNumber)! - Int(secondNumber)!
                equation = "\(firstNumber) - \(secondNumber) = \(answer!)"
                
            }
            inputLabel.text = String(answer)
            computedResults.append(equation)
            computedLabel.text = "Computed Results: \(computedResults.count)"

        } else {
            print("Eval pressed, but nothing happened")
        }
    }
    
    @IBAction func clearButton(_ sender: Any) {
        firstNumber = ""
        secondNumber = ""
        operand = ""
        inputLabel.text = "0"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ViewComputed" {
            let resultsController = segue.destination as! ResultsTableViewController
            resultsController.resultsController = self
            
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        computedLabel.text = "Computed Results: 0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

