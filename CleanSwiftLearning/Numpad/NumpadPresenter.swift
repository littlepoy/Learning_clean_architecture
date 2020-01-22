//
//  NumpadPresenter.swift
//  CleanSwiftLearning
//
//  Created by LivingMobile on 14/1/2563 BE.
//  Copyright (c) 2563 LivingMobile. All rights reserved.
//

import UIKit

class NumpadPresenter {
    private weak var displayable: NumpadDisplayable?
    
    init(displayable: NumpadDisplayable) {
        self.displayable = displayable
    }
}

//MARK: Presentable
extension NumpadPresenter: NumpadPresentable {
    func showText(response: Numpad.ShowText.Response) {
        let viewModel = Numpad.ShowText.ViewModel(outputText: response.outputText)
        displayable?.showText(viewModel: viewModel)
    }
}
