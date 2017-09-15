//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation
import Swinject

class ___FILEBASENAMEASIDENTIFIER___: Assembly {
    
    // MARK: - PUBLIC API
    
    /// Assembles ___VARIABLE_viperModuleName___ module
    ///
    /// - Parameter container: Container to assemble
    func assemble(container: Container) {
        
        // View assembly
        container.storyboardInitCompleted(___VARIABLE_viperModuleName___ViewController.self) { (resolver, viewController) in
            viewController.input = resolver.resolve(___VARIABLE_viperModuleName___PresenterInputProtocol.self, argument: viewController)
        }
        
        // Presenter assembly
        container.register(___VARIABLE_viperModuleName___PresenterInputProtocol.self) { (resolver, viewController: ___VARIABLE_viperModuleName___ViewController) in
            let presenter = ___VARIABLE_viperModuleName___Presenter()
            presenter.view = viewController
            presenter.interactor = resolver.resolve(___VARIABLE_viperModuleName___InteractorProtocol.self, argument: presenter)
            presenter.router = resolver.resolve(___VARIABLE_viperModuleName___RouterProtocol.self, arguments: viewController, presenter)
            return presenter
        }
        
        // Interactor assembly
        container.register(___VARIABLE_viperModuleName___InteractorProtocol.self) { (resolver, presenter: ___VARIABLE_viperModuleName___Presenter) in
            let interactor = ___VARIABLE_viperModuleName___Interactor()
            // Inject anything you want...
            interactor.output = presenter
            return interactor
        }
        
        // Router assembly
        container.register(___VARIABLE_viperModuleName___RouterProtocol.self) { (resolver, viewController: ___VARIABLE_viperModuleName___ViewController, presenter: ___VARIABLE_viperModuleName___Presenter) in
            let router = ___VARIABLE_viperModuleName___Router()
            router.view = viewController
            router.presenter = presenter
            return router
        }
    }
}
