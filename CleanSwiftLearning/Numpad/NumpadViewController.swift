//
//  NumpadViewController.swift
//  CleanSwiftLearning
//
//  Created by LivingMobile on 14/1/2563 BE.
//  Copyright (c) 2563 LivingMobile. All rights reserved.
//

import UIKit

class NumpadViewController: UIViewController {
    //MARK: @IBOutlet
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    
    //MARK: VIP Cycle
    var interactor: NumpadBusinessLogic!
    var router: (NumpadRoutable & NumpadDataPassing)!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setup()
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        let request = Numpad.ShowText.Request(inputText: textField.text)
        interactor?.showText(request: request)
    }
}

//MARK: Setup & Configuration
extension NumpadViewController {
    private func setup() {
        
    }
    
    private func configure() {
        NumpadConfiguration.shared.configure(self)
    }
}


//MARK: Displayable
extension NumpadViewController: NumpadDisplayable {
    func showText(viewModel: Numpad.ShowText.ViewModel) {
        textLabel.text = viewModel.outputText
    }
}

