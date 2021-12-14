//
//  StoreBar.swift
//  SroreFood
//
//  Created by Kholod Sultan on 07/05/1443 AH.
//

import UIKit

class StoreTabBar: UITabBarController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        viewControllers = [
        
      
            barItem(tabBarTitle:NSLocalizedString("Proudcts", comment: ""), tabBarImage: UIImage(systemName: "text.badge.plus")!.withTintColor(UIColor( #colorLiteral(red: 0.1595600843, green: 0.810018003, blue: 0.7768369317, alpha: 1)), renderingMode: .alwaysOriginal), viewController: Showstore()),
            barItem(tabBarTitle:NSLocalizedString("Donate", comment: ""), tabBarImage: UIImage(systemName: "dollarsign.square.fill")!.withTintColor(UIColor( #colorLiteral(red: 0.1595600843, green: 0.810018003, blue: 0.7768369317, alpha: 1) ), renderingMode: .alwaysOriginal), viewController:DonateViewController()),
            barItem(tabBarTitle:NSLocalizedString("Cart", comment: ""), tabBarImage: UIImage(systemName: "cart")!.withTintColor(UIColor( #colorLiteral(red: 0.1595600843, green: 0.810018003, blue: 0.7768369317, alpha: 1) ), renderingMode: .alwaysOriginal), viewController:CartViewController()),
            barItem(tabBarTitle:NSLocalizedString("profile", comment: ""), tabBarImage: UIImage(systemName: "person.circle")!.withTintColor(UIColor( #colorLiteral(red: 0.1595600843, green: 0.810018003, blue: 0.7768369317, alpha: 1) ), renderingMode: .alwaysOriginal), viewController:ProfileScreen()),
        
        ]
        
        tabBar.isTranslucent = true
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(#colorLiteral(red: 0.1595600843, green: 0.810018003, blue: 0.7768369317, alpha: 1) )], for: .selected)
        tabBar.unselectedItemTintColor = .gray
    }
    

    private func barItem(tabBarTitle: String, tabBarImage: UIImage, viewController: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController()
        navigationController.viewControllers = [viewController]
        navigationController.tabBarItem.title = tabBarTitle
        navigationController.tabBarItem.image = tabBarImage
//        navigationController.navigationBar.prefersLargeTitles = true
        return navigationController
    }
}



