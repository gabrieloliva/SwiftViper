//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

/// This protocol is responsible for Presenter properties
protocol ___VARIABLE_viperModuleName___PresenterProtocol: AnyObject {
    
    /// ___VARIABLE_viperModuleName___ view controller output
    var view: ___VARIABLE_viperModuleName___ViewControllerProtocol! { get set }
    
    /// ___VARIABLE_viperModuleName___ interactor
    var interactor: ___VARIABLE_viperModuleName___InteractorProtocol! { get set }
    
    /// ___VARIABLE_viperModuleName___ router
    var router: ___VARIABLE_viperModuleName___RouterProtocol! { get set }
}

/// This protocol is responsible for inputs into Interactor or Router
protocol ___VARIABLE_viperModuleName___PresenterInputProtocol: AnyObject {
    
    // Write ___VARIABLE_viperModuleName___ inputs protocols down below...
    
}

/// This protocol is responsible for output data from Interactor to Presenter
protocol ___VARIABLE_viperModuleName___PresenterOutputProtocol: AnyObject {
    
    // Write ___VARIABLE_viperModuleName___ outputs protocols down below...
    
}
