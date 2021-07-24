//
//  ViewController.swift
//  MyDatePicker
//
//  Created by kwon on 2021/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    let dateFormatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
//        formatter.dateStyle = .medium
//        formatter.timeStyle = .medium
//        formatter.dateFormat = "yyyy/MM/dd hh:mm:ss"
        formatter.dateFormat = "yyyy/MM/dd HH:mm"
        return formatter
    }()
    
    @IBAction func didDatePickerValueChanged(_ sender: UIDatePicker) {
        let date: Date = sender.date // == self.datePicker.date (IBOutlet으로 객체를 연결해놔서 가능)
        let dateString: String = self.dateFormatter.string(from: date)
        
        self.dateLabel.text = dateString
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // IBAction 대신 메서드를 이용해 타겟과 액션을 연결해주는 방법
        self.datePicker.addTarget(self, action: #selector(self.didDatePickerValueChanged(_:)), for: UIControl.Event.valueChanged)
    }


}

