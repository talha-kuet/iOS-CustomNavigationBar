//
//  ViewController.swift
//  CustomNavigationController
//
//  Created by Musaddique Billah Talha on 2/13/19.
//  Copyright © 2019 MazeGeek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        addCustomLabelToNavBar()
        
    }
    
    private func addCustomLabelToNavBar() {
        
        let navigationBarHeight: CGFloat = self.navigationController!.navigationBar.frame.height
        let navBarView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: navigationBarHeight))
        
        let label1 = UILabel(frame: CGRect(x: 5, y: 5, width: 200, height: 16))
        label1.tag = 2
        label1.backgroundColor = .clear
        label1.font = UIFont.boldSystemFont(ofSize: 16)
        label1.adjustsFontSizeToFitWidth = false
        label1.textAlignment = .left
        label1.textColor = .red
        label1.text = "My First Lable"
        label1.highlightedTextColor = .red
        navBarView.addSubview(label1)
        
        let label2 = UILabel(frame: CGRect(x: 0, y: 25, width: 200, height: 16))
        label2.tag = 1
        label2.backgroundColor = .clear
        label2.font = UIFont.boldSystemFont(ofSize: 16)
        label2.adjustsFontSizeToFitWidth = false
        label2.textAlignment = .left
        label2.textColor = .blue
        label2.text = "My Second Label"
        label2.highlightedTextColor = .blue
        navBarView.addSubview(label2)
        
        self.navigationItem.titleView = navBarView
        
    }
    
    
    @IBAction func gotoSecondVCButtonAction(_ sender: Any) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
//    - (void)viewDidLoad
//    {
//
//    UIView *btn = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 60)];
//
//    UILabel *label;
//    label = [[UILabel alloc] initWithFrame:CGRectMake(5, 25, 200, 16)];
//    label.tag = 1;
//    label.backgroundColor = [UIColor clearColor];
//    label.font = [UIFont boldSystemFontOfSize:16];
//    label.adjustsFontSizeToFitWidth = NO;
//    label.textAlignment = UITextAlignmentLeft;
//    label.textColor = [UIColor whiteColor];
//    label.text = @"My first lable";
//    label.highlightedTextColor = [UIColor whiteColor];
//    [btn addSubview:label];
//    [label release];
//
//    label = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, 200, 16)];
//    label.tag = 2;
//    label.backgroundColor = [UIColor clearColor];
//    label.font = [UIFont boldSystemFontOfSize:16];
//    label.adjustsFontSizeToFitWidth = NO;
//    label.textAlignment = UITextAlignmentRight;
//    label.textColor = [UIColor whiteColor];
//    label.text = @"second line";
//    label.highlightedTextColor = [UIColor whiteColor];
//    [btn addSubview:label];
//    [label release];
//
//
//    UIImageView *imgviw=[[UIImageView alloc]initWithFrame:CGRectMake(170, 10, 20, 20)];
//    imgviw.backgroundColor = [UIColor blackColor];
//    imgviw.image=[UIImage imageNamed:@"a59117c2eb511d911cbf62cf97a34d56.png"];
//    [btn addSubview:imgviw];
//
//    self.navigationItem.titleView = btn;
//
//    }
    
}

class CustomNavBar: UINavigationBar {
    
}

