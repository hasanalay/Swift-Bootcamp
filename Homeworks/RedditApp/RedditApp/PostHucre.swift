//
//  PostHucreTableViewCell.swift
//  RedditApp
//
//  Created by Hasan Alay on 28.09.2023.
//

import UIKit

class PostHucreTableViewCell: UITableViewCell {

    @IBOutlet weak var labelComments: UILabel!
    @IBOutlet weak var labelLikes: UILabel!
    @IBOutlet weak var ImageViewPostContent: UIImageView!
    @IBOutlet weak var labelPostContent: UILabel!
    @IBOutlet weak var labelPostTimer: UILabel!
    @IBOutlet weak var labelSubName: UILabel!
    @IBOutlet weak var ImageViewSubProfile: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
