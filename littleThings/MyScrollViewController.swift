//
//  MyScrollViewController.swift
//  littleThings
//
//  Created by durban.zhang on 2017/7/7.
//  Copyright © 2017年 durban.zhang. All rights reserved.
//

import UIKit

class MyScrollViewController: UIViewController {

    @IBOutlet weak var myscrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        myscrollView.backgroundColor = UIColor.blue
        print(myscrollView.frame.origin)
        
        // Do any additional setup after loading the view.
        
        let view = UIView(frame: CGRect(origin: CGPoint(x: 10, y: -60), size: CGSize(width: UIScreen.main.bounds.width, height: 1)))
        view.backgroundColor = UIColor.red
        myscrollView.addSubview(view)
        
        let view2 = UIView(frame: CGRect(origin: CGPoint(x: 10, y: 20), size: CGSize(width: UIScreen.main.bounds.width, height: 1)))
        view2.backgroundColor = UIColor.red
        myscrollView.addSubview(view2)
        
        let view3 = UIView(frame: CGRect(origin: CGPoint(x: 12, y: -61), size: CGSize(width: UIScreen.main.bounds.width, height: 30)))
        view3.backgroundColor = UIColor(red:1.0, green:1.0, blue:0.0, alpha:0.5)
        myscrollView.addSubview(view3)
        
        print("herer")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func cancel(_ sender: Any) {
        let isPresenting = presentingViewController is UINavigationController
        if isPresenting {
            dismiss(animated: true, completion: nil)
        } else if let owningNavigationController = navigationController {
            owningNavigationController.popViewController(animated: true)
        } else {
            fatalError("The MyScrollViewController is not inside a navigation controller.")
        }
    }
    
}