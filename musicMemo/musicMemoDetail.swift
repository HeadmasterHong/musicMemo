//
//  musicMemoDetail.swift
//  musicMemo
//
//  Created by 阿泽(洪泽林)[运营中心] on 2022/6/10.
//

import UIKit

class MusicMemoDetail: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "commentCell", for: indexPath) as! ReasonCommentCell
        cell.authorNameLabel.text = "洪泽林"
        cell.reasonCommentLabel.text = "好听就是好歌好听就是好歌好听就是好歌好听就是好歌好听就是好歌好听就是好歌好听就是好歌好听就是好歌好听就是好歌好听就是好歌好听就是好歌好听就是好歌好听就是好歌好听就是好歌"
        return cell
    }
    
    
    var album: Music!
    @IBOutlet weak var creator: UILabel!
    @IBOutlet weak var albumDetail: UILabel!
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var reasonCommentTableView: UITableView!
    @IBOutlet weak var navBar: UINavigationItem!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albumDetail.text = album.detail
        creator.text = album.creator
        albumImageView.image = UIImage(named: album.pictureName)
        reasonCommentTableView.delegate = self
        reasonCommentTableView.dataSource = self
        navBar.title = album.name
        navBar.backBarButtonItem = nil
    }
    
    
}
