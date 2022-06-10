//
//  MusicVC.swift
//  musicMemo
//
//  Created by 阿泽(洪泽林)[运营中心] on 2022/6/9.
//

import UIKit

class MusicVC: UITableViewController {
    var albums: [Music] = []
    var selectIndex: Int = 0
    
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectIndex = indexPath.row
        print(self.selectIndex)
        self.performSegue(withIdentifier: "jumpDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "jumpDetail" {
            let detailVC:MusicMemoDetail = segue.destination as! MusicMemoDetail
            detailVC.album = self.albums[selectIndex]
        }
    }
}

