//
//  Storyboard+Extension.swift
//  YJStoryboard
//
//  Created by ddn on 16/10/8.
//  Copyright © 2016年 张永俊. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    convenience init(_ storyboard: String, bundle: Bundle? = nil) {
        self.init(name: storyboard, bundle: bundle)
    }
    
    func instantiateViewController<T: UIViewController>() -> T where T: Storyboarding {
        
        guard let vc = self.instantiateViewController(withIdentifier: T.storyboardIdentify) as? T else {
            fatalError()
        }
        
        return vc
    }
}

protocol Storyboarding {
    static var storyboardIdentify: String {get}
}

extension Storyboarding where Self: UIViewController {
    static var storyboardIdentify: String {
        return String(describing: self)
    }
}
