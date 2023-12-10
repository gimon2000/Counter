//
//  ViewController.swift
//  Counter
//
//  Created by gimon on 10.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var count = 0
    private var increment = 1
    private func getCountText(_ number: Int) -> String {
        "Значение счётчика: \(number)"
    }

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var increaseCounterButton: UIButton!
    
    @IBOutlet weak var piusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = getCountText(count)
    }

    @IBAction func clickCounterButton(_ sender: Any) {
        if increment == -1, count == 0 {
            return
        }
        count += increment
        counterLabel.text = getCountText(count)
    }
    
    @IBAction func clickPlusButton(_ sender: Any) {
        increment = 1
    }
    
    @IBAction func clickMinusButton(_ sender: Any) {
        increment = -1
    }
    
    @IBAction func clickResetButton(_ sender: Any) {
        count = 0
        increment = 1
        counterLabel.text = getCountText(count)
    }
    
}

