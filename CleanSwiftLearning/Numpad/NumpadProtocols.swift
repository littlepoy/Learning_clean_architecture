//
//  NumpadProtocols.swift
//  CleanSwiftLearning
//
//  Created by LivingMobile on 14/1/2563 BE.
//  Copyright (c) 2563 LivingMobile. All rights reserved.
//

import Foundation

//MARK: ViewController
protocol NumpadDisplayable: class {
    func showText(viewModel: Numpad.ShowText.ViewModel)
}

//MARK: Interactor
protocol NumpadBusinessLogic {
    func showText(request: Numpad.ShowText.Request)
}

//MARK: Presenter
protocol NumpadPresentable {
    func showText(response: Numpad.ShowText.Response)
}
//MARK: Routable
protocol NumpadRoutable {
    
}

//MARK: DataStore
protocol NumpadDataStore {
    
}

//MARK: DataPassing
protocol NumpadDataPassing {
    var dataStore: NumpadDataStore? { get set }
}
