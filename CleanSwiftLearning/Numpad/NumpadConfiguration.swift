//
//  NumpadConfiguration.swift
//  CleanSwiftLearning
//
//  Created by LivingMobile on 14/1/2563 BE.
//  Copyright (c) 2563 LivingMobile. All rights reserved.
//

import Foundation

class NumpadConfiguration {
    static let shared: NumpadConfiguration = NumpadConfiguration()
    
    func configure(_ viewController: NumpadViewController) {
        let router = NumpadRouter(viewController: viewController)
        let presenter = NumpadPresenter(displayable: viewController)
        let interactor = NumpadInteractor(presenter: presenter)
        
        viewController.interactor = interactor
        viewController.router = router
        viewController.router.dataStore = interactor
    }
}
