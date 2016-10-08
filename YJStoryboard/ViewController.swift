//
//  ViewController.swift
//  YJStoryboard
//
//  Created by ddn on 16/10/8.
//  Copyright © 2016年 张永俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let storyboard = UIStoryboard("Product")
        
        let product: ProductViewController = storyboard.instantiateViewController()
        
        present(product, animated: true, completion: nil)
    }

}

