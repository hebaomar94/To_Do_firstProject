//
//  DatePickerViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 27/11/2023.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    //func return date
    private let didSelectDate: (Date) -> ()
    
    
    //any components have this initializer
    //@escaping -> take time to implemented
    init( didSelectDate: @escaping (Date) -> ()) {
        self.didSelectDate = didSelectDate
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
    fatalError("init(coder:) has not implemented ")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //if i need to make minimumdate today
        //datePicker.minimumDate = Date()

    }

    @IBAction func actionCancel(_ sender: Any) {

        //close screen
        dismiss(animated: true)


    }
    

    @IBAction func actionConfirm(_ sender: Any) {
        //should sent to it what user selected and send it
        didSelectDate(datePicker.date)
        //close screen
        dismiss(animated: true)
    }
}
