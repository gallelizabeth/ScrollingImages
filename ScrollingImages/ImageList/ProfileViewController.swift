import UIKit

final class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profilePhotoImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    @IBOutlet weak var exitButton: UIButton!
    @IBAction func actionExitButton(_ sender: Any) {
    }
    
    @IBOutlet weak var feedButton: UIButton!
    @IBAction func actionFeedButton(_ sender: Any) {
    }
    
    @IBOutlet weak var profilButton: UIButton!
    @IBAction func actionPrifileButton(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
