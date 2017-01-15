//
//  MoneyTypePad.swift
//  MoneyUnitConverter
//
//  Created by Satoru Miyamoto on 2017/01/15.
//  Copyright © 2017年 Satoru Miyamoto. All rights reserved.
//

import UIKit

@IBDesignable class MoneyTypePad: UIView {

    @IBOutlet weak var languageSelector: UISegmentedControl!
    @IBOutlet weak var jUnit1Selector: UISegmentedControl!
    @IBOutlet weak var jUnit2Selector: UISegmentedControl!
    @IBOutlet weak var eUnit1Selector: UISegmentedControl!
    @IBOutlet weak var eUnit2Selector: UISegmentedControl!

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let v: UIView? = Bundle.main.loadNibNamed(
            "MoneyTypePad",
            owner: self,
            options: nil
            )?[0] as? UIView
        self.addSubview(v!)
        v?.frame = self.bounds
    }

    @IBAction func keyTyped(_ sender: Any) {
    }
    @IBAction func clearKeyTyped(_ sender: Any) {
    }

    @IBAction func languageChanged(_ sender: Any) {
        if (languageSelector.selectedSegmentIndex == 0) {
            jUnit1Selector.isHidden = false
            jUnit2Selector.isHidden = false
            eUnit1Selector.isHidden = true
            eUnit2Selector.isHidden = true
        } else {
            jUnit1Selector.isHidden = true
            jUnit2Selector.isHidden = true
            eUnit1Selector.isHidden = false
            eUnit2Selector.isHidden = false
        }
    }
    @IBAction func jUnit1Changed(_ sender: Any) {
    }
    @IBAction func jUnit2Changed(_ sender: Any) {
    }
    @IBAction func eUnit1Changed(_ sender: Any) {
    }
    @IBAction func eUnit2Changed(_ sender: Any) {
    }
}
