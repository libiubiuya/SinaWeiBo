//
//  MainViewController.swift
//  SinaWeiBo
//
//  Created by 李好一 on 16/10/7.
//  Copyright © 2016年 李好一. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildViewController()
    }

    func addChildViewController(childController: UIViewController, title: String, imageName: String) {
        
        // 设置导航栏内容
        childController.title = title
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        
        // 设置tabbar
        tabBar.tintColor = UIColor.orange
        
        // 创建导航控制器
        let nav = UINavigationController()
        nav.addChildViewController(childController)
        
        // 添加控制器到tabbarVC
        addChildViewController(nav)
        
    }
    
    func addChildViewController() {
        addChildViewController(childController: HomeTableViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(childController: MessageTableViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(childController: DiscoverTableViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(childController: ProfileTableViewController(), title: "我", imageName: "tabbar_profile")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
