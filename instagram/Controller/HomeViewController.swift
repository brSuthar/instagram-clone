//
//  ViewController.swift
//  instagram
//
//  Created by Bhoma ram on 30/11/23.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var seeAll: UIButton!
    @IBOutlet weak var history: UILabel!
    @IBOutlet weak var hideBalance: UILabel!
    @IBOutlet weak var balance: UILabel!
    @IBOutlet weak var address: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        commitInit();
    }
    
    private func commitInit() {
        view.backgroundColor = Colors.shark;
        
        hideBalance.textColor = Colors.alab;
        balance.textColor = Colors.alab;
        address.textColor = Colors.alab;
        
        balance.font = UIFont.systemFont(ofSize: 50.0, weight: .semibold)
        hideBalance.font = UIFont.systemFont(ofSize: 12.0);
        address.font = UIFont.systemFont(ofSize: 12.0);
        
        seeAll.titleLabel?.textColor = Colors.curious_blue;
        seeAll.titleLabel?.font = UIFont.systemFont(ofSize: 12.0, weight: .medium)
        history.textColor = Colors.alab;
        history.font = UIFont.systemFont(ofSize: 16.0, weight: .semibold)
        
    }

}

