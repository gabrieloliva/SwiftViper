//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

/// Alias that defines what ___VARIABLE_viperModuleName___View trully is
typealias ___VARIABLE_viperModuleName___View = (___VARIABLE_viperModuleName___ViewControllerProtocol & UIViewController)

/// This protocol is responsible for **Presenter -> ViewController** communication
protocol ___VARIABLE_viperModuleName___ViewControllerProtocol: AnyObject {
    
    /// ___VARIABLE_viperModuleName___ presenter input
    var input: ___VARIABLE_viperModuleName___PresenterInputProtocol! { get set }

    // Write ___VARIABLE_viperModuleName___ protocols down below...
}
