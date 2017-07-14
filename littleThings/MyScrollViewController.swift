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

//        myscrollView.backgroundColor = UIColor.blue
        print(myscrollView.frame.origin)
        var myscrollViewContentSizeWidth:CGFloat = 0
        
        // Do any additional setup after loading the view.
        // 24小时 24条线
        for i in 0..<24 {
            let y:CGFloat = CGFloat(-60 + i * 44)
            var number = ""
            if(i >= 10){
                number = String(i)
            } else {
                number = "0\(String(i))"
            }
            
            let labelView = UILabel(frame: CGRect(origin: CGPoint(x: 20, y: y + 13), size: CGSize(width: 60, height: 20)))
            labelView.text = "\(number):00"
            myscrollView.addSubview(labelView)
            
            let lineView = UIView(frame: CGRect(origin: CGPoint(x: 20, y: y + 44), size: CGSize(width: UIScreen.main.bounds.width - 40, height: 1)))
            lineView.backgroundColor = UIColor(red:246.0 / 255.0, green:246.0 / 255.0, blue:246.0 / 255.0, alpha:1)
            myscrollView.addSubview(lineView)
            
            myscrollViewContentSizeWidth = lineView.frame.origin.y + lineView.frame.size.height
        }
        
        print(myscrollViewContentSizeWidth)
        
        myscrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: myscrollViewContentSizeWidth)
        
        // 任务时间跨度 - 1
        let taskView = UIView(frame: CGRect(origin: CGPoint(x: 100, y: 196), size: CGSize(width: 176, height: 44)))
        taskView.backgroundColor = UIColor(red:100/255.0, green:199/255.0, blue:153/255.0, alpha:1/1.0)
        
        let titleLabelView = UILabel(frame: CGRect(origin: CGPoint(x: 10, y: 4), size: CGSize(width: 98, height: 14)));
        titleLabelView.text = "设计组内部例会";
        titleLabelView.font = UIFont(name: "PingFangSC-Regular", size: 14)
        titleLabelView.textColor = UIColor(red:255 / 255.0, green:255 / 255.0, blue:255 / 255.0, alpha:1/1.0)
        
        let addressLabelView = UILabel(frame: CGRect(origin: CGPoint(x: 10, y: taskView.frame.size.height - 20), size: CGSize(width: 60, height: 10)));
        addressLabelView.text = "在东八楼 801";
        addressLabelView.font = UIFont(name: "PingFangSC-Regular", size: 10)
        addressLabelView.textColor = UIColor(red:255 / 255.0, green:255 / 255.0, blue:255 / 255.0, alpha:1/1.0)
        
        taskView.addSubview(titleLabelView)
        taskView.addSubview(addressLabelView)
        taskView.layer.cornerRadius = 5
        
        // 任务时间跨度 - 2
        
        let taskView2 = UIView(frame: CGRect(origin: CGPoint(x: 100, y: 306), size: CGSize(width: 176, height: 88)))
        taskView2.backgroundColor = UIColor(red:40/255.0, green:170/255.0, blue:232/255.0, alpha:1/1.0)
        
        let titleLabelView2 = UILabel(frame: CGRect(origin: CGPoint(x: 10, y: 4), size: CGSize(width: 98, height: 14)));
        titleLabelView2.text = "吃饭、午休";
        titleLabelView2.font = UIFont(name: "PingFangSC-Regular", size: 14)
        titleLabelView2.textColor = UIColor(red:255 / 255.0, green:255 / 255.0, blue:255 / 255.0, alpha:1/1.0)
        
        let addressLabelView2 = UILabel(frame: CGRect(origin: CGPoint(x: 10, y: taskView2.frame.size.height - 20), size: CGSize(width: 60, height: 10)));
        addressLabelView2.text = "在东八楼 801";
        addressLabelView2.font = UIFont(name: "PingFangSC-Regular", size: 10)
        addressLabelView2.textColor = UIColor(red:255 / 255.0, green:255 / 255.0, blue:255 / 255.0, alpha:1/1.0)
        
        taskView2.addSubview(titleLabelView2)
        taskView2.addSubview(addressLabelView2)
        taskView2.layer.cornerRadius = 5
        
        myscrollView.addSubview(taskView)
        myscrollView.addSubview(taskView2)
        
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
