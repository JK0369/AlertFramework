//
//  Alert.swift
//  AlertFramework
//
//  Created by 김종권 on 2020/04/24.
//  Copyright © 2020 mustang. All rights reserved.
//

import UIKit
open class Alert: UIViewController {
    
    public func alert(vc: UIViewController, title: String? = nil, message: String? = nil, completion: (()->Void)? = nil ) {
         
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default){(_) in
            completion?()
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(ok)
        alert.addAction(cancel)
        vc.present(alert, animated: false)
     }
}
