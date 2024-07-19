//
//  SideMenuTableViewCell.swift
//  sideMenu
//
//  Created by adminnoadmin on 19/07/2024.
//

import UIKit

class SideMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLbl : UILabel! {
        didSet{
            titleLbl.textColor = .black
        }
    }
    @IBOutlet weak var img : UIImageView! {
        didSet {
            img.tintColor = .black
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.selectionStyle = .none
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        self.selectionStyle = .none

        // Configure the view for the selected state
    }

}
