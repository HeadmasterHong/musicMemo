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
            albumNameLabel.text = album.name
            albumDetailLabel.text = album.detail
            albumImageView.image = UIImage(named: album.pictureName)
        }
    }
    
    @IBOutlet weak var albumNameLabel: UILabel!
    @IBOutlet weak var albumDetailLabel: UILabel!
    @IBOutlet weak var albumImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
