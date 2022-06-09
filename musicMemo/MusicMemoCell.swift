//
//  MusicMemoCell.swift
//  musicMemo
//
//  Created by 阿泽(洪泽林)[运营中心] on 2022/6/9.
//

import UIKit

class MusicMemoCell: UITableViewCell {
    var album: Music! {
        didSet {
            gameNameLabel.text = album.name
            gameDetailLabel.text = album.detail
            gameImageView.image = UIImage(named: album.pictureName)
        }
    }
    
    @IBOutlet weak var gameNameLabel: UILabel!
    @IBOutlet weak var gameDetailLabel: UILabel!
    @IBOutlet weak var gameImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
