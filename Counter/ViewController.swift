//
//  ViewController.swift
//  Counter
//
//  Created by gimon on 10.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var count = 0
    private func getCountText(_ number: Int) -> String {
        "Значение счётчика: \(number)"
    }

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var increaseCounterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = getCountText(count)
    }

    @IBAction func clickCounterButton(_ sender: Any) {
        count += 1
        counterLabel.text = getCountText(count)
    }
    
}

