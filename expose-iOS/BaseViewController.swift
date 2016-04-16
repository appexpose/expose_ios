//
//  BaseViewController.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 16/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        setCustomNavigationBar()//Change navigationBar appearence
        self.view.backgroundColor = Colors.returnBackgroundGrey()//Change background
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        let barButtonAppearence = UIBarButtonItem.appearance()
        barButtonAppearence.tintColor = UIColor.whiteColor()
    }
    
    
    //MARKK: - Set Generic Color App
    func setCustomNavigationBar(){
        self.navigationController?.navigationBar.barTintColor = Colors.returnGreenExpose()
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}

extension UINavigationController{
    public override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}