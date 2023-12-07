//
//  ViewController.swift
//  instagram
//
//  Created by Bhoma ram on 30/11/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var seeAll: UIButton!
    @IBOutlet weak var history: UILabel!
    @IBOutlet weak var hideBalance: UILabel!
    @IBOutlet weak var balance: UILabel!
    @IBOutlet weak var address: UILabel!
    
    let lst_name = [
        "Bhomaram",
        "Sunil",
        "Arun",
        "Shivam",
        "Sanjay"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commitInit();
        
        let nib = UINib(nibName: "HistoryTableCell", bundle: nil);
        tableView.register(nib, forCellReuseIdentifier: "HistoryTableCell");
        tableView.delegate = self
        tableView.dataSource = self
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryTableCell", for: indexPath) as! HistoryTableCell
        cell.name.text = lst_name[indexPath.row]
        return cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lst_name.count;
    }

}


