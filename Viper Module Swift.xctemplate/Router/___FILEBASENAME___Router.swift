//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_viperModuleName___RouterProtocol {
	
    // MARK: PUBLIC API
    var view: ___VARIABLE_viperModuleName___View?
    weak var presenter: ___VARIABLE_viperModuleName___PresenterInputProtocol!
    
    /// Initializes ___VARIABLE_viperModuleName___Router
    ///
    /// - Parameter view: An instance of ___VARIABLE_viperModuleName___View
    init(with view: ___VARIABLE_viperModuleName___View) {
        self.view = view
    }
    
    /// Setups ___VARIABLE_viperModuleName___
    ///
    /// - Returns: Instanced ___VARIABLE_viperModuleName___ UIViewController
    class func setupModule() -> UIViewController {
        // Generating module components
        let view: ___VARIABLE_viperModuleName___View = ___VARIABLE_viperModuleName___ViewController() // Retrieve your view controller here
        let presenter: ___VARIABLE_viperModuleName___PresenterProtocol &
            ___VARIABLE_viperModuleName___PresenterInputProtocol &
            ___VARIABLE_viperModuleName___PresenterOutputProtocol = ___VARIABLE_viperModuleName___Presenter()
        let interactor: ___VARIABLE_viperModuleName___InteractorProtocol = ___VARIABLE_viperModuleName___Interactor()
        let router: ___VARIABLE_viperModuleName___RouterInputProtocol &
            ___VARIABLE_viperModuleName___RouterOutputProtocol &
            ___VARIABLE_viperModuleName___RouterProtocol = ___VARIABLE_viperModuleName___Router(with: view)
        
        // Connections
        view.input = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.output = presenter
        router.presenter = presenter
        
        return view
    }
    
}

// MARK: - INPUT IMPLEMENTATION
extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_viperModuleName___RouterInputProtocol {

}

// MARK: - OUTPUT IMPLEMENTATION
extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_viperModuleName___RouterOutputProtocol {
    
}
