//
//  PageViewController.swift
//  afterus (iOS)
//
//  Created by Rodolfo Pigna on 19/11/21.
//

import SwiftUI

struct PageViewController: UIViewControllerRepresentable{
    var controllers:[UIViewController]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        
        let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        
        pageViewController.dataSource = context.coordinator
        
    
        return pageViewController
    } 
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers([controllers[0]], direction: .forward, animated: true)
}
    
    class Coordinator: NSObject, UIPageViewControllerDataSource{
        var parent: PageViewController
    }
    
    func pageViewController (pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = parent.controllers.firstIndex(of: viewController) else {
            return nil
        }
        if index == 0 {
            return parent.controllers.last
        }
        return parent.controllers[index - 1]
    }
    
    func pageViewController (pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = parent.controllers.firstIndex(of: viewController) else {
            return nil
        }
        
        if index + 1 ==  parent.controllers.count {
            return parent.controllers.first
        }
        return parent.controllers[index + 1]
}
