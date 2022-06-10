//
//  Music.swift
//  musicMemo
//
//  Created by 阿泽(洪泽林)[运营中心] on 2022/6/9.
//

import Foundation
struct Music {
    let name: String
    let creator: String
    let detail: String
    let pictureName: String
    
    static func getData() -> [Music] {
        return [
        Music(name: "巴赫代表作",
        creator: "巴赫",
        detail: "对古典音乐做出的巨大贡献的巴赫，被称作“西方近代音乐之父”，至今仍享誉全世界。伟大的德国作曲家和演奏家。",
        pictureName: "game_one"),
        Music(name: "莫扎特代表作",
        creator: "莫扎特",
        detail: "莫扎特是人类历史上不可复制的音乐奇迹。在很多人心中，莫扎特是最伟大的作曲家。35 岁英年早逝的他，留下了 600 多部作品（包括 41 部交响曲、27 部钢琴协奏曲、22 部歌剧以及大量弥撒曲、室内乐、钢琴奏鸣曲和歌曲），是音乐史上罕见的音乐天才。作为作曲家、键盘乐器演奏家、小提琴家和中提琴家，莫扎特的多种音乐技能，来自父母和家庭的引导、熏陶以及教师的教导，但更多的，是来自他与生俱来生的超凡音乐能力。他虽然生活窘迫，却完成了诸多留传后世的不朽名作，今天，他的音乐仍响彻世界的各个角落。",
        pictureName: "game_two")
        ]
    }
}
