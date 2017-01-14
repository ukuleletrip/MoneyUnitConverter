//
//  ViewController.swift
//  MoneyUnitConverter
//
//  Created by Satoru Miyamoto on 2017/01/07.
//  Copyright © 2017年 Satoru Miyamoto. All rights reserved.
//

import UIKit

class ResultHeaderView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

class CurrencyResultsCell: UITableViewCell {
    @IBOutlet weak var flagImage: UIImageView!
    @IBOutlet weak var l1Result: UILabel!
    @IBOutlet weak var l2Result: UILabel!
    @IBOutlet weak var rateInfo: UILabel!
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var currencyTitle: UINavigationItem!
    @IBOutlet weak var inputField: UILabel!
    @IBOutlet weak var resultHeader: ResultHeaderView!
    @IBOutlet weak var typePad: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath) as! CurrencyResultsCell
        cell.flagImage.image = UIImage(named: "Australia")
        return cell
    }

    @IBAction func goSettings(_ sender: Any) {
    }
    @IBAction func toggleResultMode(_ sender: Any) {
    }
}
