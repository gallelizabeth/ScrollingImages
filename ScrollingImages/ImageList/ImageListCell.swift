import UIKit

final class ImageListCell: UITableViewCell{
    static let reuseIdentifier = "ImageListCell"
    
    
    @IBOutlet weak var setLikeButton: UIButton!
    @IBAction func likeButton(_ sender: Any) {
    }
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var imgLabel: UIImageView!
    
    func setLike(isLike: Bool){
        let likeStatus = isLike ? "FavouriteActive" : "FavouriteNotActive"
        setLikeButton.setImage(UIImage(named: likeStatus), for: .normal)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgLabel.layer.cornerRadius = 16
        imgLabel.layer.masksToBounds = true
    }
}
