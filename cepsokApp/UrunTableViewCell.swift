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
    @IBOutlet weak var gorButton: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var urunResimImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // bu kısım view yuklendiğinde çalısır.
        gorButton.layer.borderWidth = 1.0
        gorButton.layer.cornerRadius = 3.0
        
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
