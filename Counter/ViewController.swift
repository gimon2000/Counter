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
    private let date = Date()
    
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var history: UITextView!
    
    private func getDate() -> String {
        let date = Date()
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return df.string(from: date)
    }
    
    private func addTextToHistory(_ text: String){
        history.text += "\(getDate()): \(text)"
        let range = NSRange(location: history.text.count - 1, length: 0)
        history.scrollRangeToVisible(range)
    }
    
    private func getCountText(_ number: Int) -> String {
        "Значение счётчика: \(number)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = getCountText(count)
        history.text = "История изменений:\n"
    }
    
    @IBAction private func clickPlusButton(_ sender: Any) {
        if increment == -1 {
            increment = 1
            addTextToHistory("значение изменено на +1\n")
        }
        count += increment
        counterLabel.text = getCountText(count)
    }
    
    @IBAction private func clickMinusButton(_ sender: Any) {
        if count == 0 {
            addTextToHistory("попытка уменьшить значение счётчика ниже 0\n")
            return
        }
        if increment == 1 {
            increment = -1
            addTextToHistory("значение изменено на -1\n")
        }
        count += increment
        counterLabel.text = getCountText(count)
    }
    
    @IBAction private func clickResetButton(_ sender: Any) {
        count = 0
        increment = 1
        counterLabel.text = getCountText(count)
        addTextToHistory("значение сброшено\n")
    }
    
}

