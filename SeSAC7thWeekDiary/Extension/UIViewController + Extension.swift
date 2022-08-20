//
//  UIViewController + Extension.swift
//  SeSAC7thWeekDiary
//
//  Created by 나리강 on 2022/08/18.
//

import UIKit

extension UIViewController {
    
    func transitionViewController<T: UIViewController>(storyboardName : String, viewController vc : T){
        
        let sb = UIStoryboard(name: storyboardName, bundle: nil)
        guard let controller = sb.instantiateViewController(withIdentifier: String(describing: vc)) as? T else { return }
        self.present(controller, animated: true)
        
        
        
    }
    
    
}
