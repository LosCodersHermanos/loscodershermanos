//
//  MainViewController.swift
//  loscodershermanos
//
//  Created by Il Gigis on 21/02/18.
//  Copyright © 2018 Luigi Scherillo. All rights reserved.
//

import UIKit

class MainViewController: UIPageViewController,UIPageViewControllerDelegate,UIPageViewControllerDataSource {
    lazy var orderedViewControllers: [UIViewController] = {
        return [self.newVC(viewController: "page1"),
                self.newVC(viewController: "page2")]
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
       if let firstViewController = orderedViewControllers.first{
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
        
        // Do any additional setup after loading the view.
    }
    func newVC(viewController: String) -> UIViewController {
        return UIStoryboard(name: "Main" , bundle: nil).instantiateViewController(withIdentifier: viewController)
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController ) else {
            return nil
        }
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0 else {
            return orderedViewControllers.last
        }
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
      return orderedViewControllers[previousIndex]
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController ) else {
            return nil
        }
        let nextIndex = viewControllerIndex + 1
        guard orderedViewControllers.count != nextIndex else {
            return orderedViewControllers.first
        }
        guard orderedViewControllers.count > nextIndex else {
            return nil
        }
        return orderedViewControllers[nextIndex]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
