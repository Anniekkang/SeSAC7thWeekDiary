//
//  WriteView.swift
//  SeSAC7thWeekDiary
//
//  Created by 나리강 on 2022/08/19.
//

import UIKit

class WriteView : BaseView {
    
    let photoImageView : UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .lightGray
        view.contentMode = .scaleAspectFill
        
        return view
        
    }()
    
    let titleTextField : BlackRadiusTextField = {
        print("TEXTFIELD")
        let view = BlackRadiusTextField()
        
        view.placeholder = "제목을 입력하시오"
        return view
        
    }()
    
    let dateTextField : BlackRadiusTextField = {
        let view = BlackRadiusTextField()
        view.placeholder = "날짜를 입력하시오"
        
        
        return view
        
        
        
    }()
    
    let contentTextView : UITextView = {
       let view = UITextView()
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        
        [photoImageView,titleTextField,dateTextField,contentTextView].forEach {
            self.addSubview($0)
        }
        
    }
    
    override func setConstraints() {
        
        photoImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(self).multipliedBy(0.3)
        }
        
        titleTextField.snp.makeConstraints { make in
            make.top.equalTo(photoImageView.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
            
        }
        
        dateTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        contentTextView.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
            
            
        }
    
    }
    
    
}
