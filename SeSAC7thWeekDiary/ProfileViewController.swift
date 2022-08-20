//
//  ProfileViewController.swift
//  SeSAC7thWeekDiary
//
//  Created by 나리강 on 2022/08/18.
//

import UIKit

extension NSNotification.Name {
    static let saveButton = NSNotification.Name("saveButtonNotification")
}




class ProfileViewController: UIViewController {

    let saveButton : UIButton = {
        let view = UIButton()
        view.setTitle("save", for: .normal)
        view.backgroundColor = .black
        view.tintColor = .black
        return view
        
    }()
    
    let nameTextField : UITextField = {
        let view = UITextField()
        view.placeholder = "write your name"
        view.backgroundColor = .black
        view.textColor = .white
        return view
        
    }()
    
    var saveButtonActionHandler: ((String) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        configure()
        
        saveButton.addTarget(self, action: #selector(saveButtonClicked), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(saveButtonNotificationObserver(notification:)), name: NSNotification.Name("TEST"), object: nil)
    }
    
    @objc func saveButtonNotificationObserver(notification: NSNotification) {
        print(#function)
        if let name = notification.userInfo?["name"] as? String  {
            print(name)
            self.nameTextField.text = name
        
        }
    }
    
    
    @objc func saveButtonClicked(){
        //값전달 기능 실행
        //2. notification
        NotificationCenter.default.post(name: NSNotification.Name("saveButtonNotification"), object: nil, userInfo: ["name":nameTextField.text!, "value":12345])
        
        
        //1. 클로저
        //saveButtonActionHandler?(nameTextField.text!)
        
        
        dismiss(animated: true)
    }

    func configure(){
        [saveButton,nameTextField].forEach {  view.addSubview($0) }
        
        nameTextField.snp.makeConstraints {
            $0.leading.trailing.equalTo(view).inset(50)
            $0.top.equalTo(50)
            $0.height.equalTo(50)
        }
        
        saveButton.snp.makeConstraints {
            $0.width.height.equalTo(50)
            $0.center.equalTo(view)
        }
        
    }
    
    
}
