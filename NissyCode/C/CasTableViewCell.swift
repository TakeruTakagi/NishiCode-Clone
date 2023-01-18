//
//  FavoriteTableViewCell.swift
//  NissyCode
//
//  Created by 髙木　武 on 2022/12/27.
//

import UIKit
import RealmSwift



class CasualTableViewCell: UITableViewCell {
    
    @IBOutlet weak var apparelText: UILabel!
    @IBOutlet weak var starButton: UIButton!
    @IBOutlet weak var apparelImage: UIImageView!
    @IBOutlet weak var onepointText: UILabel!
    @IBOutlet weak var apparelLink: UILabel!
    
    var apparel = ApparelDataModel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    //お気に入り機能
    @IBAction func Like(_ sender: Any) {
        //ボタンの切り替わり
        apparel.starButton = apparel.starButton == false ? true : false
        //ボタンの色変わり　→ 後から画像との差し替えを考える
        if apparel.starButton == true {
            starButton.tintColor = .blue
        }else {
            starButton.tintColor = .gray
        }
    }
}
