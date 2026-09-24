import UIKit

final class ProfileViewController: UIViewController {
    private var label: UILabel!
    
    let imageView = UIImageView()
    
    let nameLabel = UILabel()
    let userName = UILabel()
    let profileInfo = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage()
        
        setProfileName()
        setUserName()
        setProfileInfo()
        exitButton()
    }
    
    func profileImage(){
        imageView.image = UIImage(systemName: "person.crop.circle.fill")
        imageView.tintColor = .ypGray
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        imageView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        imageView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
    }
    
    
    func setProfileName(){
        nameLabel.text = "My Name"
        nameLabel.textColor = .ypWhite
        nameLabel.font = .systemFont(ofSize: 23, weight: .bold)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(nameLabel)
        
        nameLabel.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8).isActive = true
    }
    
    func setUserName(){
        userName.text = "@my_name"
        userName.textColor = .ypGray
        userName.font = .systemFont(ofSize: 13)
        
        userName.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(userName)
        
        userName.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        userName.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8).isActive = true
        
    }
    
    func setProfileInfo(){
        profileInfo.text = "Info"
        profileInfo.textColor = .ypWhite
        profileInfo.font = .systemFont(ofSize: 13)
        
        
        profileInfo.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(profileInfo)
        
        profileInfo.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        profileInfo.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 8).isActive = true
    }
        
    func exitButton(){
        let exitButton = UIButton.systemButton(
            with: UIImage(systemName: "ipad.and.arrow.forward")!,
            target: self,
            action: #selector(self.didTapButton)
        )
        exitButton.tintColor = .ypRed
        
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(exitButton)
        
        exitButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24).isActive = true
        exitButton.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
    }
        
    @objc
    private func didTapButton() {
        for view in view.subviews {
            if view is UILabel {
                view.removeFromSuperview()
            }
        }
    }
}

