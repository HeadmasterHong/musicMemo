//
//  MusicVC.swift
//  musicMemo
//
//  Created by 阿泽(洪泽林)[运营中心] on 2022/6/9.
//

import UIKit

class MusicVC: UITableViewController {
    var albums: [Music] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albums = Music.getData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albums.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MusicCell", for: indexPath) as! MusicMemoCell
        cell.album = albums[indexPath.row]
        return cell
    }
}

