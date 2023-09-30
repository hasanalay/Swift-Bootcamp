//
//  PostHucreTableViewCell.swift
//  RedditApp
//
//  Created by Hasan Alay on 28.09.2023.
//

import UIKit

class PostHucre: UITableViewCell {
    
    
    @IBOutlet weak var arkaplan: UIView!
    
    @IBOutlet weak var labelComments: UILabel!
    @IBOutlet weak var labelLikes: UILabel!
    @IBOutlet weak var imageViewContentPic: UIImageView!
    @IBOutlet weak var labelContent: UILabel!
    @IBOutlet weak var labelPostTime: UILabel!
    @IBOutlet weak var labelSubName: UILabel!
    @IBOutlet weak var imageViewSubProfile: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func buttonLike(_ sender: Any) {
    }
    @IBAction func buttonDislike(_ sender: Any) {
    }
    @IBAction func buttonComment(_ sender: Any) {
    }
    @IBAction func buttonShare(_ sender: Any) {
    }
    @IBAction func buttonMore(_ sender: Any) {
    }
    
}
