//
//  HistoryTableCell.swift
//  instagram
//
//  Created by Bhoma ram on 07/12/23.
//

import UIKit

class HistoryTableCell: UITableViewCell {
    @IBOutlet weak var iconView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var etherLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit();
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
    }
    
    func commonInit() -> Void {
        backgroundColor = Colors.shark
        
        iconView.backgroundColor = Colors.shark_lite
        iconView.layer.cornerRadius = 20.0
        
        titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        titleLabel.textColor = Colors.silver
        
        descLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        descLabel.textColor = Colors.alab
        
        amountLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        amountLabel.textColor = Colors.silver
        
        etherLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        etherLabel.textColor = Colors.alab
        
        dateLabel.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        dateLabel.textColor = Colors.silver
    }
        
}
