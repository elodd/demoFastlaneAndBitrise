//
//  ViewController.swift
//  demoFastlaneAndBitrise
//
//  Created by Elöd Dobos on 2016-09-03.
//  Copyright © 2016 Elöd Dobos. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {
    let viewControllerB = ViewControllerB()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.greenColor()
        self.title = "VCA"

        // Add view items
        addTestLabel()
        addTestButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addTestLabel() {
        let label = UILabel(frame: CGRectZero)
        label.textAlignment = .Center
        label.text = "ViewControllerA"
        label.font = UIFont(name: label.font.fontName, size: 42)
        label.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(label)
        
        addVerticalCenterConstraintsToItem(label, width: 350, height: 40, sequence: 0)
    }

    func addTestButton() {
        let button = UIButton(frame: CGRectZero)
        button.setTitle("Press button", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button.addTarget(self, action: #selector(buttonAction(_:)), forControlEvents: .TouchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(button)

        addVerticalCenterConstraintsToItem(button, width: 150, height: 40, sequence: 1)
    }

    func addVerticalCenterConstraintsToItem(item: AnyObject, width: CGFloat, height: CGFloat, sequence: CGFloat) {
        let widthConstraint = NSLayoutConstraint(item: item, attribute: .Width, relatedBy: .Equal,
                                                 toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: width)

        let heightConstraint = NSLayoutConstraint(item: item, attribute: .Height, relatedBy: .Equal,
                                                  toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: height)

        let xConstraint = NSLayoutConstraint(item: item, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0)

        let yConstraint = NSLayoutConstraint(item: item, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1, constant: sequence * height)

        NSLayoutConstraint.activateConstraints([widthConstraint, heightConstraint, xConstraint, yConstraint])
    }

    func buttonAction(sender: UIButton!) {
        self.navigationController?.pushViewController(viewControllerB, animated: true)
    }
}

