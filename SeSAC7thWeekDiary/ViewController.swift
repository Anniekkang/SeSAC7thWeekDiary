//
//  ViewController.swift
//  SeSAC7thWeekDiary
//
//  Created by 나리강 on 2022/08/16.
//

import UIKit
import SeSACUIFramework
import SnapKit

class ViewController: UIViewController {

    let nameButton : UIButton = {
        let view = UIButton()
        view.setTitle("annie", for: .normal)
        view.backgroundColor = .black
        view.tintColor = .black
        return view
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
        nameButton.addTarget(self, action: #selector(nameButtonClicked), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(saveButtonNotificationObserver(notification: )), name: NSNotification.Name( "saveButtonNotification"), object: nil)
    }
    
    @objc func saveButtonNotificationObserver(notification: NSNotification) {
        
        if let name = notification.userInfo?["name"] as? String  {
            print(name)
            self.nameButton.setTitle(name, for: .normal)
        
        
        }
    }
    
    @objc func nameButtonClicked(){
        
        NotificationCenter.default.post(name: NSNotification.Name("test"), object: nil, userInfo: ["name":"\(Int.random(in: 1...100))", "value":12345])
        
        let vc = ProfileViewController()
      
        vc.saveButtonActionHandler = { name in
            self.nameButton.setTitle(name, for: .normal)


        }

        present(vc, animated: true)
        
    }
    func configure(){
        view.addSubview(nameButton)
        
        nameButton.snp.makeConstraints { make in
            make.width.height.equalTo(200)
            make.center.equalTo(view)
        }
        
        
    }

}

