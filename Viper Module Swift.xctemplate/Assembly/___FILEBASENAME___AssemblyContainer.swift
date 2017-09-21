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
        
        // Register router
        container.register(___VARIABLE_viperModuleName___RouterInputProtocol.self) { (resolver) in
            let router = ___VARIABLE_viperModuleName___Router()
            router.view = resolver.resolve(___VARIABLE_viperModuleName___ViewControllerProtocol.self, argument: router)
            return router
        }
        
        // Register view
        container.register(___VARIABLE_viperModuleName___ViewControllerProtocol.self) { (resolver, router: ___VARIABLE_viperModuleName___Router) in
            let viewController = ___VARIABLE_viperModuleName___ViewController() // Retrieve your view controller correctly in here
            viewController.input = resolver.resolve(___VARIABLE_viperModuleName___PresenterInputProtocol.self,
                                                    arguments: viewController as ___VARIABLE_viperModuleName___ViewControllerProtocol, router)
            return viewController
        }
        
        // Register presenter
        container.register(___VARIABLE_viperModuleName___PresenterInputProtocol.self) { (resolver, view: ___VARIABLE_viperModuleName___ViewControllerProtocol, router: ___VARIABLE_viperModuleName___Router) in
            let presenter = ___VARIABLE_viperModuleName___Presenter()
            presenter.interactor = resolver.resolve(___VARIABLE_viperModuleName___InteractorProtocol.self, argument: presenter as ___VARIABLE_viperModuleName___PresenterOutputProtocol)
            presenter.view = view
            presenter.router = router
            return presenter
        }
        
        // Register interactor
        container.register(___VARIABLE_viperModuleName___InteractorProtocol.self) { (_, presenter: ___VARIABLE_viperModuleName___PresenterOutputProtocol) in
            let interactor = ___VARIABLE_viperModuleName___Interactor()
            interactor.output = presenter
            return interactor
        }
        
    }
}
