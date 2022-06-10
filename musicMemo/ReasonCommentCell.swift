//
//  ReasonCommentCell.swift
//  musicMemo
//
//  Created by 阿泽(洪泽林)[运营中心] on 2022/6/10.
//

import UIKit

class ReasonCommentCell: UITableViewCell {

    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var reasonCommentLabel: UILabel!
    @IBOutlet weak var hearBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
