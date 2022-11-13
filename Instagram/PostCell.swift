//
//  PostCell.swift
//  Instagram
//
//  Created by Diego Rivas Lazala on 10/14/22.
//

import UIKit
import Parse

class PostCell: UITableViewCell {
    var liked:Bool = false
    var unliked:Bool = false
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var unlikeButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var numLikes: UILabel!
    
    func setLike(_ isLiked: Bool) {
        liked = isLiked
        if (liked) {
            likeButton.setImage(UIImage(named: "hand.thumbsup.fill"), for: UIControl.State.normal)
            unlikeButton.setImage(UIImage(named: "hand.thumbsdown"), for: UIControl.State.normal)
        }
        else {
            likeButton.setImage(UIImage(named: "hand.thumbsup"), for: UIControl.State.normal)
        }
    }
    
    func setUnlike(_ isUnliked: Bool) {
        unliked = isUnliked
        if (unliked) {
            unlikeButton.setImage(UIImage(named: "hand.thumbsdown.fill"), for: UIControl.State.normal)
            likeButton.setImage(UIImage(named: "hand.thumbsup"), for: UIControl.State.normal)
        }
        else {
            unlikeButton.setImage(UIImage(named: "hand.thumbsdown"), for: UIControl.State.normal)
        }
    }
        
    @IBAction func likedPost(_ sender: Any) {
        let tobeLiked = !liked
        if (tobeLiked) {
            self.setLike(true)
        }
        else {
            self.setLike(false)
        }
    }
    
    @IBAction func unlikedPost(_ sender: Any) {
    
        let tobeUnliked = !unliked
        if (tobeUnliked) {
            self.setUnlike(true)
        }
        else {
            self.setUnlike(false)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
