//
//  NumpadInteractor.swift
//  CleanSwiftLearning
//
//  Created by LivingMobile on 14/1/2563 BE.
//  Copyright (c) 2563 LivingMobile. All rights reserved.
//

import Foundation

class NumpadInteractor: NumpadDataStore {
    var presenter: NumpadPresenter
    var worker: NumpadWorker
    
    init(presenter: NumpadPresenter) {
        self.presenter = presenter
        worker = NumpadWorker()
    }
}

//MARK: BusinessLogic
extension NumpadInteractor: NumpadBusinessLogic {
    func showText(request: Numpad.ShowText.Request) {
        let text = worker.showMoreText(inputText: request.inputText)
        let response = Numpad.ShowText.Response(outputText: text)
        presenter.showText(response: response)
    }
}
