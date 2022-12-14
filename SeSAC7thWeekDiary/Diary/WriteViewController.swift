//
//  WriteViewController.swift
//  SeSAC7thWeekDiary
//
//  Created by 나리강 on 2022/08/19.
//

import UIKit
import SnapKit


class WriteViewController : BaseViewController {
    
    var mainView = WriteView()
    
    override func loadView() {//super.loadView X
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func configure() {
        mainView.titleTextField.addTarget(self, action: #selector(titleTextFieldClicked(_:)), for: .editingDidEndOnExit)
        
    }
    
    @objc func titleTextFieldClicked(_ textField : UITextField) {
        guard let text = textField.text, text.count > 0 else {
            showAlertMessage(title: "제목을입력하시오", button: "확인")
            return 
        }
    }
    
    
}
