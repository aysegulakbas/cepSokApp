//
//  UrunTableViewCell.swift
//  cepsokApp
//
//  Created by mac on 3.11.2023.
//

import UIKit

class UrunTableViewCell: UITableViewCell {

    @IBOutlet weak var hucreBackground: UIView!
    @IBOutlet weak var urunTitleLabel: UILabel!
    @IBOutlet weak var urunDescriptionLabel: UILabel!
    @IBOutlet weak var urunResimImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

    @IBAction func gorButton(_ sender: Any) {
    }
}
